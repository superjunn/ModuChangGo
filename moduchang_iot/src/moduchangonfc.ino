#include <ESP8266WiFi.h>
#include <ESP8266HTTPClient.h>
#include <WiFiClient.h>
#include <ArduinoJson.h>
#include <Wire.h>
#include <SPI.h>
#include <PN532_SPI.h>
#include <PN532.h>
#include <NfcAdapter.h>

const char* ssid     = "와이파이 SSID";
const char* password = "와이파이 비밀번호";
const char* url = "서버 url";
PN532_SPI pn532spi(SPI, 10);
NfcAdapter nfc = NfcAdapter(pn532spi);
WiFiClient client;
HTTPClient httpClient;


//nfc태그하여 얻은 ndefdata를 json데이터로 변환하는 함수
String ndeftoJson(String sData,int mode)
{	
	String jsondata = "";
	StaticJsonBuffer<200> jsonBuffer;
	JsonObject& root = jsonBuffer.createObject();
	String arr[3] = {};
	int i = 0;
	int nCount = 0;
	int nGetIndex = 0 ;
	String sTemp = "";
	String sCopy = sData;
	
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
    root["NIIN"] = arr[0];
	root["productName"] = arr[1];
	root["location"] = arr[2];
	root["mode"] = mode;
	root.printTo(jsondata);
	return jsondata;
}


void setup()
{
	Serial.begin(115200);
	WiFi.begin(ssid, password);
	nfc.begin();
}

void loop() 
{
	int mode = analogRead(A0);
	val = map(mode, 0, 1023, 0, 2);

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
			String payloadAsString = ""; 
			for (int c = 0; c < payloadLength; c++) 
			{
				payloadAsString += (char)payload[c];
			}
		}
	}
	data = ndeftoJson(payloadAsString,val);
	//server에 정보 POST
	httpClient.begin(client);
	httpClient.addHeader("Content-Type", "application/json");
	httpClient.POST(data);
	httpClient.end();
}
