import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/results/results.dart';
import 'package:repkeeper/l10n/l10n.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ResultsCubit(),
      child: const ResultsView(),
    );
  }
}

class ResultsView extends StatelessWidget {
  const ResultsView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Text('Results');
  }
}
