abstract class HttpAPI {
  Future<Map<String, dynamic>> login(String email, String password);
  Future<Map<String, dynamic>> register(String email, String password, String passwordConfirmation);
}