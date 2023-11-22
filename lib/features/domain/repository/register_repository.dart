import 'package:register_form/features/data/models/register_model.dart';

abstract class RegisterRepository {
  Future<RegisterModel> getRegister();
}
