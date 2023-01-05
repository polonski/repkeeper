
import 'package:bloc/bloc.dart';

class ScheduleCubit extends Cubit<int> {
  ScheduleCubit() : super(0);

  void loggedIn() => emit(state);
 
}
