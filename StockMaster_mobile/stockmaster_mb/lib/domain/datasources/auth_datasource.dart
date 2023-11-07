abstract class AuthDataSource {
  Future<String> login(String identifer, String password);
  Future<String> register(String identifier, String password);
  Future<String> logout();
}