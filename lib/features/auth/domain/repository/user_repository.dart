import 'package:register_form/features/auth/data/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getUser();
}
