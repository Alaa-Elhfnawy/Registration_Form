import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_form/features/app/splash_screen.dart';
import 'package:login_form/features/user_auth/presentation/pages/home_page.dart';
import 'package:login_form/features/user_auth/presentation/pages/login_page.dart';
import 'package:login_form/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      home: SplashScreen(child: LoginPage()),
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
