import 'package:dio/dio.dart';
import 'package:register_form/features/auth/data/models/user_model.dart';

abstract class RemoteUserDataSource {
  Future<UserModel> getUser();
}

class RemoteUserDataSourceImpl implements RemoteUserDataSource {
  final Dio dio;

  RemoteUserDataSourceImpl({required this.dio});
  @override
  Future<UserModel> getUser() async {
    try {
      final response =
          await dio.get("https://61db-212-112-118-46.ngrok-free.app");
      if (response.statusCode == 200) {
        return UserModel.fromJson(response.data);
      } else {
        print(response.data);
        throw UnimplementedError();
      }
    } catch (e) {}
    throw UnimplementedError();
  }
}
