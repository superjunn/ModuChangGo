#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>
#include <ArduinoJson.h>
#include <NTPClient.h>
#include <Wire.h>
#include <SPI.h>
#include <PN532_SPI.h>
#include <PN532.h>
#include <NfcAdapter.h>

//nfc 핀 선언
#define PN532_SCK  (D5) 
#define PN532_MOSI (D7) 
#define PN532_SS   (D0) 
#define PN532_MISO (D6) 

//시간데이터 받기위한 ntpclient module 기본선언
WiFiUDP ntpUDP;
NTPClient timeClient(ntpUDP, "pool.ntp.org");
const char* ssid     = "와이파이 SSID";
const char* password = "와이파이 비밀번호";
const char* url = "서버 url";
PN532_SPI pn532spi(SPI, 10);
NfcAdapter nfc = NfcAdapter(pn532spi);
WiFiClient client;
HTTPClient httpClient;
//nfc태깅 정보와 일치하는지 여부 확인을 위함
String tagmahcineLocation = "이 장치를 둘 장소";

//nfc태그하여 얻은 ndefdata를 json데이터로 변환하는 함수
String ndeftoJson(String sData,int mode,String date)
{	
	String jsondata = "";
	StaticJsonBuffer<250> jsonBuffer;
	JsonObject& root = jsonBuffer.createObject();
	String arr[3] = {};
	int i = 0;
	int nCount = 0;
	int nGetIndex = 0 ;
	String sTemp = "";
	String sCopy = sData;
	String modetostring = "";
	while(true)
	{
		nGetIndex = sCopy.indexOf('/');
		if(-1 != nGetIndex)
		{
			sTemp = sCopy.substring(0, nGetIndex);
			arr[i] = sTemp;
			sCopy = sCopy.substring(nGetIndex + 1);
		}
		else
        {
          	arr[i] = sCopy;
			break;
		}
		++nCount;
		i++;
	}
	
	if (mode == 1){
		modetostring = "ipgo"
	}
	else {
		modetostring = "chulgo"
	}
	
	if(tagmahcineLocation == arr[2]){
		root["storageName"] = arr[2];
	}
	else{
		root["storageName"] = tagmahcineLocation;
	}
	
    root["NIIN"] = arr[0];
	root["productName"] = arr[1];
	root["state"] = modetostring;
	root["date"] = date;
	root.printTo(jsondata);
	return jsondata;
}


void setup()
{
	Serial.begin(115200);
	Serial.print("Connecting to ");
	Serial.println(ssid);
	WiFi.begin(ssid, password);
	while (WiFi.status() != WL_CONNECTED) 
	{
		delay(500);
		Serial.print(".");
	}
	nfc.begin();
	timeClient.begin();
	timeClient.setTimeOffset(0);
}

void loop() 
{
	//시간 정보 입력받기
	
	timeClient.update();
	int currentYear = ptm->tm_year+1900;
	int currentMonth = ptm->tm_mon+1;
	int monthDay = ptm->tm_mday;
	String formattedTime = timeClient.getFormattedTime();
	String currentDate = String(currentYear) + "-" + String(currentMonth) + "-" + String(monthDay);
	String datetime = currentDate + "" + formattedTime;
	
	//mode값 받기(가변저항) -> 0/1 0(입고),1(출고)
	int mode = analogRead(A0);
	int val = map(mode, 0, 1023, 0, 2);
	
	//nfc 스티커 or 카드에 담긴 ndef정보 추출 NIIN/productName/storageName 로 담아둘 예정
	
	String changostring = "";
	//ndef정보 추출
	if (nfc.tagPresent())
	{
		NfcTag tag = nfc.read();
		if (tag.hasNdefMessage())
		{
			NdefMessage message = tag.getNdefMessage();
			NdefRecord record = message.getRecord();
			int payloadLength = record.getPayloadLength();
			byte payload[payloadLength];
			record.getPayload(payload);
			for (int c = 0; c < payloadLength; c++) 
			{
				changostring += (char)payload[c];
			}
		}
	}
	
	//ndef정보 json파일로 변환
	data = ndeftoJson(changostring,val,datetime);
	//server에 정보 POST
	httpClient.begin(client);
	httpClient.addHeader("Content-Type", "application/json");
	httpClient.POST(data);
	httpClient.end();
}