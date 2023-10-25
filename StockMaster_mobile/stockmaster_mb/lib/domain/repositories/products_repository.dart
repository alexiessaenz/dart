import 'package:stockmaster_mb/domain/entities/input_entity.dart';
import 'package:stockmaster_mb/domain/entities/output_entity.dart';
import 'package:stockmaster_mb/domain/entities/stored_entity.dart';
abstract class ProductsRepository {
  Future<List<Stored>> getStoreds(); //storeds

  Future< List<Input> > getInputs(); //inputs
  Future< bool > addInputs();
  
  Future<List<Output>> getOutputs(); //outputs
  Future< bool > addOutputs();
}