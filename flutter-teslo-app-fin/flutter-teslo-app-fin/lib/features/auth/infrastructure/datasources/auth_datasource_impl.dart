
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:teslo_shop/config/config.dart';
import 'package:teslo_shop/features/auth/domain/domain.dart';
import 'package:teslo_shop/features/auth/infrastructure/infrastructure.dart';

class AuthDataSourceImpl extends AuthDataSource {
  var logger = Logger();
//   var logger = Logger(
//   filter: null, // Use the default LogFilter (-> only log in debug mode)
//   printer: PrettyPrinter(), // Use the PrettyPrinter to format and print log
//   output: null, // Use the default LogOutput (-> send everything to console)
// );
  //logger = Level.warning;
  

  final dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      //baseUrl: 'http://localhost:3000/api',
    )
  );

  @override
  Future<User> checkAuthStatus(String token) async {
    
    try {
      
      final response = await dio.get('/auth/check-status',
        options: Options(
          headers: {
            'Authorization': 'Bearer $token'
          }
        )
      );

      final user = UserMapper.userJsonToEntity(response.data);
      return user;


    } on DioError catch (e) {
      if( e.response?.statusCode == 401 ){
         throw CustomError('Token incorrecto');
      }
      throw Exception();
    } catch (e) {
      throw Exception();
    }

  }

  @override
  Future<User> login(String email, String password) async {
    
    try {
      var response = await dio.post('/auth/login', data: {
        'email': email,
        'password': password
      });
      logger.d(response.data);
      final user = UserMapper.userJsonToEntity(response.data);
      logger.d(user);
      return user;
      
    } on DioError catch (e) {
      if( e.response?.statusCode == 401 ){
         throw CustomError(e.response?.data['message'] ?? 'Credenciales incorrectas' );
      }
      if ( e.type == DioErrorType.connectionTimeout ){
        throw CustomError('Revisar conexión a internet');
      }
      logger.d(e);
      logger.d(e.response?.statusCode);
      logger.d(e.response?.statusCode);
      throw Exception(e);
    } catch (e) {
      logger.d(e);
      throw Exception(e);
    }


  }

  @override
  Future<User> register(String email, String password, String fullName) {
    // TODO: implement register
    throw UnimplementedError();
  }
  
}
