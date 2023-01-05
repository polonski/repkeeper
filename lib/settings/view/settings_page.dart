// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/settings/settings.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsCubit(),
      child: const SettingsView(),
    );
  }
}

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});
  @override
  State<SettingsView> createState() => _SettingsView();
}

class _SettingsView extends State<SettingsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final RestorableInt tabIndex = RestorableInt(0);

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
    _tabController.addListener(() {
      // When the tab controller's value is updated, make sure to update the
      // tab index value, which is state restorable.
      setState(() {
        tabIndex.value = _tabController.index;
      });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    tabIndex.dispose();
    super.dispose();
  }

  void tapped(int index) {
    context.read<SettingsCubit>().setTabIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final tabs = [
      'Sets',
      'Workout',
      'Challenge',
    ];

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => SettingsCubit(), lazy: true)],
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            '${tabs[context.watch<SettingsCubit>().state]} Settings',
          ),
        ),
        bottomNavigationBar: Container(
          color: Colors.grey[600],
          child: TabBar(
            labelColor: const Color(0xFFFFFFFF),
            controller: _tabController,
            tabs: [
              for (final tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
            onTap: tapped,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            for (final tab in tabs)
              Center(
                child: Text(tab),
              ),
          ],
        ),
      ),
    );
  }
}
