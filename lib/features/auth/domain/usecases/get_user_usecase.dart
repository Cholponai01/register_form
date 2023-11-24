import 'package:register_form/features/auth/data/models/user_model.dart';
import 'package:register_form/features/auth/domain/repository/user_repository.dart';

class GetUserUseCase {
  final UserRepository repository;

  GetUserUseCase({required this.repository});

  Future<UserModel> call() async {
    return await repository.getUser();
  }
}
