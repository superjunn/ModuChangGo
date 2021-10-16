Function validateValue() {
  return (String? value) {
    if (value!.isEmpty) {
      return "Please Enter Something";
    } else {
      return null;
    }
  };
}
