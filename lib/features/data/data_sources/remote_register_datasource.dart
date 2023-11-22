import 'package:dio/dio.dart';
import 'package:register_form/features/data/models/register_model.dart';

abstract class RemoteRegisreDataSource {
  Future<RegisterModel> getRegister();
}

class RemoteRegisterDataSourceImpl implements RemoteRegisreDataSource {
  final Dio dio;

  RemoteRegisterDataSourceImpl({required this.dio});
  @override
  Future<RegisterModel> getRegister() async {
    try {
      final response =
          await dio.get("https://61db-212-112-118-46.ngrok-free.app");
    } catch (e) {}
    throw UnimplementedError();
  }
}
