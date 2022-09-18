import 'package:common/main.dart';
import 'presenter/home_module.dart';

class AppModule extends Module {
  @override
  final List<Module> imports = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      transition: TransitionType.noTransition,
      module: HomeModule(),
    ),
  ];
}
