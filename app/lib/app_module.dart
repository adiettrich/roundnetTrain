import 'package:app/Home/homepage.dart';
import 'package:app/feature/exercise_archive/bloc/exercise_card_cubit.dart';
import 'package:app/feature/exercise_archive/view/exercise_archive_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TrainAppModule extends Module {
  @override
  void binds(Injector i) {
    //Example
    //i.add(MyClass.new);
    i.add(ExerciseCardCubit.new);
  }

  @override
  void routes(RouteManager r) {
    final args = r.args;
    r.child("/", child: (context) => const MyHomePage());
    r.child("/exercise_view", child: (context) => ExerciseView());
    //Example
    //r.module("/name-module", module: MyModule());
  }
}
