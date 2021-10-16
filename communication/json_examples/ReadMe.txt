<칭고 기본 구조>
창고 건물에 들어가면 "창고" 안에 여러 "선반"이 있고, 선반이 예를 들어 3x4라고 해보면 12개의 "칸"에 물건이 들어가 있는 형태다.
그니까
Storages(창고) > Shelves(선반) > Contents(칸)
요렇게 생김

Storages.json > Shelves.json > Contents.json 요렇게 세 개의 파일을 만들어서
각각의 파일을

Storage => "StorageID" : "012345a" 의 파일은 http://localhost:8080/Storages/012345
Shelves => "momStorage" : "012345a", "shelfNum" : 3 의 파일은 http://localhost:8080/Storages/012345/Shelves/3
Contents => "012345a" storage의 3번째 Shelf의 (2,3) 칸에 위치한 content의 파일은 http://localhost:8080/Storages/012345/Shelves/3/Contents/2_3