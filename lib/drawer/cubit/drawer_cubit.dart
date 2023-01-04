// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';

class DrawerCubit extends Cubit<int> {
  DrawerCubit() : super(0);

  void loggedIn() => emit(state);
}
