import 'package:expense_tracker_app/export/exports.dart';
import 'package:expense_tracker_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker_app/routes/routes.dart' as route;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'expense tracker',
      theme: lightTheme, 
      onGenerateRoute: route.controller,
      initialRoute: route.splashPage,
    );
  }
}
