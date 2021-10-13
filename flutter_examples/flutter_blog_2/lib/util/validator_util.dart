import 'package:validators/validators.dart';

Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isAlphanumeric(value)) {
      return "Username에는 알파벳과 숫자만 입력 가능합니다";
    } else if (value.length > 12) {
      return "Username의 길이를 초과하였습니다.";
    } else if (value.length < 3) {
      return "Username의 최소 길이는 3자입니다.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (value.length > 12) {
      return "Password의 길이를 초과하였습니다.";
    } else if (value.length < 4) {
      return "Password의 최소 길이는 4자입니다.";
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if (value!.isEmpty) {
      return "공백이 들어갈 수 없습니다.";
    } else if (!isEmail(value)) {
      return "이메일 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}

Function validateTitle() {
  return (String? value) {
    if (value!.isEmpty) {
      return "제목에는 공백이 들어갈 수 없습니다.";
    } else if (value.length > 30) {
      return "제목의 길이를 초과하였습니다.";
    } else {
      return null;
    }
  };
}

Function validateContent() {
  return (String? value) {
    if (value!.isEmpty) {
      return "내용에는 공백이 들어갈 수 없습니다.";
    } else if (value.length > 500) {
      return "제목의 길이를 초과하였습니다.";
    } else {
      return null;
    }
  };
}
