// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/drawer/drawer.dart';
import 'package:repkeeper/nav_bar/nav_bar.dart';
import 'package:repkeeper/workout/workout.dart';
import 'package:repkeeper/l10n/l10n.dart';

class WorkoutPage extends StatelessWidget {
  const WorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WorkoutCubit(),
      child: const WorkoutView(),
    );
  }
}

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Text('Workout');
  }
}
