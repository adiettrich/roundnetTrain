import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseCardCubit extends Cubit<bool> {
  ExerciseCardCubit() : super(false);

  void toggle() => emit(!state);
}
