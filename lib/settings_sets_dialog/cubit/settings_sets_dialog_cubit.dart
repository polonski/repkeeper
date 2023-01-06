import 'package:bloc/bloc.dart';

class SettingsSetsDialogCubit extends Cubit<int> {
  SettingsSetsDialogCubit() : super(0);

  void loggedIn() => emit(state);
}
