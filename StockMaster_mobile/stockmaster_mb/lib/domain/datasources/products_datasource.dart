import 'package:stockmaster_mb/domain/entities/input_entity.dart';
import 'package:stockmaster_mb/domain/entities/output_entity.dart';
import 'package:stockmaster_mb/domain/entities/stored_entity.dart';
abstract class ProductsDataSource {
  Future<List<Stored>> getStoreds();
  Future<List<Input>> getInputs();
  Future<List<Output>> getOutputs();
}