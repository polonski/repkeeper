// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:repkeeper/drawer/drawer.dart';

void main() {
  group('DrawerCubit', () {
    test('initial state is 0', () {
      expect(DrawerCubit().state, equals(0));
    });
    
    blocTest<DrawerCubit, int>(
      'emits [1] when increment is called',
      build: DrawerCubit.new,
      act: (cubit) => cubit.loggedIn(),
      expect: () => [equals(0)],
    );
/*
    blocTest<CounterCubit, int>(
      'emits [-1] when decrement is called',
      build: CounterCubit.new,
      act: (cubit) => cubit.decrement(),
      expect: () => [equals(-1)],
    );

    */
  });
}
