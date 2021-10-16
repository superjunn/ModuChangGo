통신 방식

1. 로그인(login_page)

요청 주소 (POST)
- http://localhost:8080/login

요청 파라미터
- application/json
{
    "dogNumber":"21-76040230",
    "password":"1234"
}

응답 헤더
Authorization : Bearer

응답 바디
- application/json
{
    "code": 1,
    "msg": "success",
    "data": {
        "dogNumber": "getinthere",
        "password": "1234",
        "email": "getinthere@nate.com",
    }
}






