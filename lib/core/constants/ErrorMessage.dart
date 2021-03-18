class ErrorMessage{
  static const String Exception="Exception: ";
  static const String errorFormValidation="Data yang diisi tidak lengkap";
  static String errorMessage(String value)=>value.split(Exception).last;
}