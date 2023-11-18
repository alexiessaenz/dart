
import 'package:stockmaster_mb/domain/entities/product_entity.dart';
import 'package:stockmaster_mb/domain/entities/provider_entity.dart';
import 'package:stockmaster_mb/domain/entities/user_entity.dart';

abstract class AdminDataSource {
  Future<List<User>> getUsers(); //users
  Future< bool > blockUsers();
  Future< bool > deleteUsers();
  Future< bool > grantUsers();

  Future< bool > createProducts(); //products
  Future< bool > deleteProducts(); 

  Future<List<Provider>> getProviders(); //providers
  Future< bool > createProvider(); 
  Future< bool > deleteProvider(); 
}