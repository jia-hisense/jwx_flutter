class HttpError {
  ///HTTP 状态码
  static const int UNAUTHORIZED = 401;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int REQUEST_TIMEOUT = 408;
  static const int INTERNAL_SERVER_ERROR = 500;
  static const int BAD_GATEWAY = 502;
  static const int SERVICE_UNAVAILABLE = 503;
  static const int GATEWAY_TIMEOUT = 504;

  ///未知错误
  static const String unknownError = "网络异常，请稍后重试！";
  ///解析错误
  static const String parseError = "数据解析错误";
  ///网络错误
  static const String networkError = "网络连接错误";
  ///协议错误
  static const String httpError = "网络请求协议错误";
  ///证书错误
  static const String sslError = "证书错误";
  ///连接超时
  static const String connectTimeout = "网络连接超时，请检查网络设置";
  ///接收超时
  static const String receiveTimeout = "服务器异常，请稍后重试！";
  ///网络请求取消
  static const String cancelError = "请求已被取消，请重新请求";

  int code;
  String message;

  HttpError(this.code, this.message);

  @override
  String toString() {
    return 'HttpError{code: $code, message: $message}';
  }
}