import '../../../../main.dart';

class FindComments implements IFindComments {
  final IHomeRepository _repository;

  FindComments(this._repository);

  @override
  Future<List<HomeCommentsEntity>> call() {
    return _repository.findComments();
  }
}
