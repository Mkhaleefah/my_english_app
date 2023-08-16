import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:my_english_app/homepage.dart';
import 'package:my_english_app/screens/signupscreen.dart';

import 'models/plants.dart';
import 'screens/loginscreen.dart';
import 'screens/secondpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      home: LoginPage(), //firebase loginpage
      // home: HomePageScreen(), //continue as loginpage
      //  home: PlantListPage(),// for use as api from backend
//home: SecondPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
