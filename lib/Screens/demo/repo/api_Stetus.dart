class Success {
  int code;
  Object Response;
  Success({required this.code, required this.Response});
}

class Failure {
  int code;
  Object errorResponse;
  Failure({required this.code, required this.errorResponse});
}
