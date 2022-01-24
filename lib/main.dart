// ignore_for_file: prefer_const_constructors

import 'package:demo_google_login/google_sign_in.dart';
import 'package:demo_google_login/home_page.dart';
import 'package:demo_google_login/logged_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        theme: ThemeData.dark(),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => HomePage(),
          LoggedInWidget.id:(context)=>LoggedInWidget(),
        },
      ),
    );
  }
}
