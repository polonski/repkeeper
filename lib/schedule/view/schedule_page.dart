
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/schedule/schedule.dart';
import 'package:repkeeper/l10n/l10n.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ScheduleCubit(),
      child: const ScheduleView(),
    );
  }
}

class ScheduleView extends StatelessWidget {
  const ScheduleView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Text('Schedule');
  }
}
