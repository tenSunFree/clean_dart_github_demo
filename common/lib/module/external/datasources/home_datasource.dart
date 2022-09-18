import 'package:dio/dio.dart';
import '../../infra/datasources/i_home_datasource.dart';
import '../../infra/models/comments_model.dart';

class HomeDatasource implements IHomeDatasource {
  final Dio _dio;

  HomeDatasource(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      receiveTimeout: const Duration(seconds: 30).inMilliseconds,
    );
  }

  @override
  Future<List<CommentsModel>> findComments() async {
    var response = await _dio.get('/comments');
    List<dynamic> data = response.data;
    return data.map((v) => CommentsModel.fromJson(v)).toList();
  }
}
