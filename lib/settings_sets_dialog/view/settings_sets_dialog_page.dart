import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/settings_sets_dialog/settings_sets_dialog.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SettingsSetsDialogPage extends StatelessWidget {
  const SettingsSetsDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsSetsDialogCubit(),
      child: const SettingsSetsDialogView(),
    );
  }
}

class SettingsSetsDialogView extends StatefulWidget {
  const SettingsSetsDialogView({super.key});
  @override
  State<SettingsSetsDialogView> createState() => _SettingsSetsDialogView();
}

class _SettingsSetsDialogView extends State<SettingsSetsDialogView> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SettingsSetsDialogCubit(), lazy: true)
      ],
      child: Scaffold(
        appBar: new AppBar(
          title: const Text('New entry'),
          actions: [
            new TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: new Text('SAVE')),
          ],
        ),
        body: new Text("Foo"),
      ),
    );
  }
}
