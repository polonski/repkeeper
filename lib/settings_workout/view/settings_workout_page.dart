import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/settings_workout/settings_workout.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SettingsWorkoutPage extends StatelessWidget {
  const SettingsWorkoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingsWorkoutCubit(),
      child: const SettingsWorkoutView(),
    );
  }
}

class SettingsWorkoutView extends StatefulWidget {
  const SettingsWorkoutView({super.key});
  @override
  State<SettingsWorkoutView> createState() => _SettingsWorkoutView();
}

class _SettingsWorkoutView extends State<SettingsWorkoutView> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => SettingsWorkoutCubit(), lazy: true)],
      child: 
        Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            icon: const Icon(Icons.add),
            label: const Text('New Workout'),
            onPressed: () {},
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
    );
  }
}
