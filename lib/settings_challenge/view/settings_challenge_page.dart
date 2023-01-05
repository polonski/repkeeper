import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/settings_challenge/settings_challenge.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SettingsChallengePage extends StatelessWidget {
  const SettingsChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsChallengeCubit(),
      child: const SettingsChallengeView(),
    );
  }
}

class SettingsChallengeView extends StatefulWidget {
  const SettingsChallengeView({super.key});
  @override
  State<SettingsChallengeView> createState() => _SettingsChallengeView();
}

class _SettingsChallengeView extends State<SettingsChallengeView> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => SettingsChallengeCubit(), lazy: true)],
      child:  Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            icon: const Icon(Icons.add),
            label: const Text('New Challenge'),
            onPressed: () {},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
    );
  }
}
