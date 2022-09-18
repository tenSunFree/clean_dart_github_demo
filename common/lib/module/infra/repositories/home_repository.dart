import 'package:common/module/infra/models/comments_model.dart';
import '../../../main.dart';
import '../../domain/entities/home_comments_entity.dart';
import '../../domain/repositories/i_home_repository.dart';
import '../datasources/i_home_datasource.dart';

class HomeRepository implements IHomeRepository {
  final IHomeDatasource _datasource;

  HomeRepository(this._datasource);

  @override
  Future<List<HomeCommentsEntity>> findComments() async {
    try {
      var value = await _datasource.findComments();
      return value.map((v) => v.toEntity()).toList();
    } catch (error, stacktrace) {
      throw _error(error, stacktrace);
    }
  }

  Error _error(Object error, StackTrace? stacktrace) {
    if (error is DioError) {
      throw Error(
        statusCode: error.response?.statusCode ?? 0,
        exception: error.message,
        errorMessage: error.response?.statusMessage ?? 'Error no message',
      );
    }
    throw Error(
      statusCode: 0,
      exception: error,
      errorMessage: 'Internal error',
      stackTrace: stacktrace,
    );
  }
}
