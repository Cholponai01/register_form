import 'package:register_form/features/data/models/register_model.dart';
import 'package:register_form/features/domain/repository/register_repository.dart';

class GetRegisterUseCase {
  final RegisterRepository repository;

  GetRegisterUseCase({required this.repository});

  Future<RegisterModel> call() async {
    return await repository.getRegister();
  }
}
