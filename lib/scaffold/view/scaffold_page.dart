import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repkeeper/drawer/drawer.dart';
import 'package:repkeeper/results/results.dart';
import 'package:repkeeper/scaffold/scaffold.dart';
import 'package:repkeeper/schedule/schedule.dart';
import 'package:repkeeper/settings/settings.dart';
import 'package:repkeeper/workout/workout.dart';

import 'package:repkeeper/l10n/l10n.dart';

class ScaffoldPage extends StatelessWidget {
  const ScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ScaffoldCubit(),
      child: const ScaffoldView(),
    );
  }
}

class ScaffoldView extends StatefulWidget {
  const ScaffoldView({super.key});
  @override
  State<ScaffoldView> createState() => _ScaffoldView();
}

class _ScaffoldView extends State<ScaffoldView> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    context.read<ScaffoldCubit>().setTabIndex(index);
    setState(() {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    });
  }

  final _navBarStates = const <Widget>[
    WorkoutPage(),
    SettingsPage(),
    SchedulePage(),
    ResultsPage()
  ];
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ScaffoldCubit(), lazy: true)],
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.drawerAppBarTitle)),
        drawer: const DrawerPage(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.white,
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
          currentIndex: context.watch<ScaffoldCubit>().state,
          onTap: _onItemTapped,
        ),
        body: BlocProvider(
          create: (context) => ScaffoldCubit(),
          lazy: false,
          child: SizedBox.expand(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => index);
              },
              children: [
                for (final state in _navBarStates) state
              ],
            ),
          ),
        ),
      ),
    );
  }
}
