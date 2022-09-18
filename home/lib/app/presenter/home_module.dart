import 'package:common/main.dart';
import 'pages/home_page.dart';
import 'stores/home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton<IHomeDatasource>((i) => HomeDatasource(i())),
    Bind.lazySingleton<IHomeRepository>((i) => HomeRepository(i())),
    Bind.lazySingleton<IFindComments>((i) => FindComments(i())),
    Bind.lazySingleton((i) => HomeStore(i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      child: (_, args) => const HomePage(),
    ),
  ];
}
