import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:logger/logger.dart';
import 'package:teslo_shop/config/constants/environment.dart';
import 'package:teslo_shop/features/auth/infrastructure/mappers/user_mapper.dart';

void main() {
   var logger = Logger();
  test('Login test', () async {
    // Test code goes here.
    int? matcher = 200;
      final dio = Dio(BaseOptions(baseUrl: 'http://192.168.0.4:3000/api',));
    try {
      String email = 'test1@google.com';
      String password = 'Abc123';
      var response = await dio.post('/auth/login', data: {
          'email': email,
          'password': password
        });
      logger.d(response); 
      logger.d(response.data); 
      final user = UserMapper.userJsonToEntity(response.data);
      logger.d(user);
      matcher = response.statusCode;
    } catch (e) {
      
      print(e); 
    }
    expect(matcher, 201);
  });
}