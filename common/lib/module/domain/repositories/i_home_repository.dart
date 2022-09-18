import '../../../main.dart';

abstract class IHomeRepository {
  Future<List<HomeCommentsEntity>> findComments();
}
