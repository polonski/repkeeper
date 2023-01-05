import 'package:bloc/bloc.dart';

class DrawerCubit extends Cubit<int> {
  DrawerCubit() : super(0);

  void loggedIn() => emit(state);
}
