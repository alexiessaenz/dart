<<<<<<< HEAD
abstract class UsersDataSource {
    Future<String> login(String identifer, String password);
=======
import 'package:stockmaster_mb/domain/entities/user_entity.dart';

abstract class UserDataSource {
  Future< User > getUserbyIdetifier();
  Future< bool > existUserbyIdetifier();
>>>>>>> 2ceed1069df12331059cdf10227d9e59999130fd
}