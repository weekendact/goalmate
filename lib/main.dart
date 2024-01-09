import 'package:flutter/material.dart';
import 'screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: '1:625829856237:ios:e851c6766df0976c829de4',
      apiKey: 'AIzaSyAtAnTBgLT4oLgHBLgWcejJLMzulKm6BfE',
      messagingSenderId: '625829856237',
      projectId: 'goal-mate-85b8c',
      storageBucket: 'goal-mate-85b8c.appspot.com',
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
