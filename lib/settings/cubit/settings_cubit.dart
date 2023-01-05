
import 'package:bloc/bloc.dart';

class SettingsCubit extends Cubit<int> {
  SettingsCubit() : super(0);

  void setTabIndex(int index) => emit(index);

  void loggedIn() => emit(state);
}
