// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.


import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/nav_bar/nav_bar.dart';
import 'package:repkeeper/l10n/l10n.dart';


class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavBarCubit(),
      child: const NavBarView(),
    );
  }

 
}

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    void onItemTapped(int index){

      stdout.writeln(context.read<NavBarCubit>().state);
      context.read<NavBarCubit>().setTabIndex(index);
      stdout.writeln('....');
      stdout.writeln(context.read<NavBarCubit>().state);
      
    }
    final l10n = context.l10n;
 
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics),
            label: 'Results',
          ),
        ],
        currentIndex: context.watch<NavBarCubit>().state,
        onTap: onItemTapped,
      );
  }
}
