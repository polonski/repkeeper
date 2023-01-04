// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:repkeeper/app/app.dart';
import 'package:repkeeper/bootstrap.dart';
//import 'package:repkeeper/app/view/app.dart';
import 'package:repkeeper/firebase_options_dev.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //runApp(const App());
  await bootstrap(() => const App());
}