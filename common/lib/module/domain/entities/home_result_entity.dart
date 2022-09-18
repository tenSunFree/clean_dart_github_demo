import '../../../main.dart';

class HomeResultEntity {
  HomeResultEntity({
    List<HomeCommentsEntity>? list,
  }) {
    _list = list;
  }

  List<HomeCommentsEntity>? _list;

  List<HomeCommentsEntity> get list => _list ?? [];
}

extension HomeResultEntityExtension on HomeResultEntity {
  HomeResultEntity copyWith({
    List<HomeCommentsEntity>? list,
  }) {
    return HomeResultEntity(
      list: list ?? _list,
    );
  }
}
