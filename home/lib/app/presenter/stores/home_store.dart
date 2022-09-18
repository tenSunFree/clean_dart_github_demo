import 'package:flutter/foundation.dart';
import 'package:common/main.dart';
import 'package:flutter_triple/flutter_triple.dart';

class HomeStore extends NotifierStore<Error, HomeResultEntity> {
  final IFindComments _findComments;

  HomeStore(
    this._findComments,
  ) : super(HomeResultEntity());

  Future<void> setCommentsData() async {
    try {
      setError(Error(errorMessage: '', statusCode: 0));
      setLoading(true);
      final List<HomeCommentsEntity> commentsList = await _findComments();
      final value = state.copyWith(
        list: commentsList,
      );
      update(value);
    } on Error catch (error) {
      debugPrint(error.toString());
      setError(error);
    } finally {
      setLoading(false);
    }
  }
}
