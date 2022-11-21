// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/drawer/drawer.dart';
import 'package:repkeeper/l10n/l10n.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => DrawerCubit(),
      child: const DrawerView(),
    );
  }
}

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const UserAccountsDrawerHeader( 
              accountName: Text(
                'Michal Polonski',
              ),
              accountEmail: Text(
                'polonski@gmail.com',
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            const ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () => context.read<DrawerCubit>().loggedIn(),
              //() async {
               /*  await showDialog(
                    context: context,
                    builder: (_) =>  const AlertDialog(
                      title: Text(
                        'Settings',
                      ),
                      content: Text(
                        'Settings oh glorious settings.',
                      ),
                    ),);
                  Navigator.pop(context);           
                */
               // Navigator.of(context).pop();
              //},
            ),
          ],
        ),
      );
    
  }
}
