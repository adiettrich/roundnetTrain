import 'package:app/home/homescreen.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TrainAppModule extends Module {
  @override
  void binds(Injector i) {
    //Example
    //i.add(MyClass.new);
  }

  @override
  void routes(RouteManager r) {
    final args = r.args;
    r.child("/", child: (context) => const MyHomeScreen());
    //Example
    //r.module("/name-module", module: MyModule());
  }
}
