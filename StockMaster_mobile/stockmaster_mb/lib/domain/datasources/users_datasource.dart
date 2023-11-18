
import 'package:stockmaster_mb/domain/entities/user_entity.dart';

abstract class UserDataSource {
  Future< User > getUserbyIdetifier();
  Future< bool > existUserbyIdetifier();
}