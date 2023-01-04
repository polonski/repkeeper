// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';

class ScheduleCubit extends Cubit<int> {
  ScheduleCubit() : super(0);

  void loggedIn() => emit(state);
 
}
