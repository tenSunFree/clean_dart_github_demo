import '../models/comments_model.dart';

abstract class IHomeDatasource {
  Future<List<CommentsModel>> findComments();
}
