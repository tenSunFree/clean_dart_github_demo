import 'package:flutter/material.dart';
import 'package:flutter_triple/flutter_triple.dart';
import 'package:common/main.dart';
import '../stores/home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _store = Modular.get<HomeStore>();

  @override
  void initState() {
    super.initState();
    _store.setCommentsData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TripleBuilder<HomeStore, Error, HomeResultEntity>(
        store: _store,
        builder: (context, Triple<Error, HomeResultEntity> triple) {
          return HomeBodyWidget(
            isLoading: triple.isLoading,
            list: triple.state.list,
          );
        },
      ),
    );
  }
}
