// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class NavBarCubit extends Cubit<int> {
  NavBarCubit() : super(0);

  void setTabIndex(int index ) => emit(index);

 
 
}
