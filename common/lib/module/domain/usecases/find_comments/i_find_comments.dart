import '../../../../main.dart';

abstract class IFindComments {
  Future<List<HomeCommentsEntity>> call();
}
