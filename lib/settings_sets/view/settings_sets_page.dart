import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/settings_sets/settings_sets.dart';
import 'package:repkeeper/settings_sets_dialog/settings_sets_dialog.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SettingsSetsPage extends StatelessWidget {
  const SettingsSetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsSetsCubit(),
      child: const SettingsSetsView(),
    );
  }
}

class SettingsSetsView extends StatefulWidget {
  const SettingsSetsView({super.key});
  @override
  State<SettingsSetsView> createState() => _SettingsSetsView();
}

class _SettingsSetsView extends State<SettingsSetsView> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => SettingsSetsCubit(), lazy: true)],
      child: Scaffold(
        body: Scrollbar(
          child: ListView(
            children: [
              for (int index = 1; index < 21; index++)
                ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(child: Text('$index')),
                  ),
                  title: Text(
                    'Set $index',
                  ),
                  subtitle: const Text('Secondary text'),
                ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          label: const Text('New Set'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const SettingsSetsDialogPage()),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
