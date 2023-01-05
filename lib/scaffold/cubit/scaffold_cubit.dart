
import 'package:bloc/bloc.dart';

class ScaffoldCubit extends Cubit<int> {
  ScaffoldCubit() : super(0);

  void loggedIn() => emit(state);

  void setTabIndex(int index) => emit(index);
}
