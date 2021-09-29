<json 예제 파일>

Storages.json > Shelves.json > Contents.json

으로 간다. Storages는 아이디를 부여해준다하더라도 Shelves나 Contents는 Storages에서 올 수 있다. 그럼 굳이 아이디를 부여해줄 필요 없지 않나 

StorageID : "012345a" 의 파일은 http://localhost:8080/Storages/012345a 요렇게 찾으면 되지 않나 ??

Contents : "012345a" storage의 3번째 Shelf의 (2,3) 칸에 위치한 content의 파일은 http://localhost:8080/Storages/012345a/3/2/3 요렇게 찾으면 되지 않나 ??

하하,,피드백 부탁 !!

=======================================================================================
질문 : json 파일에서 storages.json, shelves.json, contents.json을 각각 따로 만드는 것이 좋은가
      contents는 shelves안에 넣고 shelves는 storages 안에 넣어서 한 방에 만드는 것이 좋은가
      contents에서 다들 momShelves랑 momStorage를 기록해야 하는 것이 낭비인가??
      그냥 Storage안에 계층적으로 다 넣으면 되나
예시 : storages_2.json