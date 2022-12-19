// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/drawer/drawer.dart';
import 'package:repkeeper/nav_bar/nav_bar.dart';
import 'package:repkeeper/scaffold/scaffold.dart';
import 'package:repkeeper/workout/workout.dart';
import 'package:repkeeper/settings/settings.dart';
import 'package:repkeeper/l10n/l10n.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavBarCubit(),
      child: const ScaffoldView(),
    );
  }
}

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({super.key});

  final _navBarStates = const <Widget> [WorkoutPage(),
                                        SettingsPage(),
                                        WorkoutPage(),
                                        WorkoutPage()];
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => NavBarCubit(), lazy: true)],
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.drawerAppBarTitle)),
        drawer: const DrawerPage(),
        bottomNavigationBar: const NavBarPage(),
        body: BlocProvider(
          create: (context) => NavBarCubit(),
          lazy: false,
          child:  Center(
          //child: CounterText(),
            child: Builder(
              builder: (context){
                  final _state = context.watch<NavBarCubit>().state;
                  return Text('-->$_state');
                }
              ),
            ),
          ),
        ),
      );
    
  }

}
class CounterText extends StatelessWidget {
  const CounterText({super.key});

  @override
  Widget build(BuildContext context) {


    
    final theme = Theme.of(context);
    final count = context.select((NavBarCubit cubit) => cubit.state);
   final co = context.read<NavBarCubit>().state;

stdout.writeln('count');
      stdout.writeln(co);
      stdout.writeln(count);

    return Text('$co', style: theme.textTheme.headline1);
  }
}
