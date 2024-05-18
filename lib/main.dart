
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kumari_admin_web/dashbord/sidevavigationdrawer.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: const FirebaseOptions(
  apiKey: "AIzaSyBevn7kkdLhblWAVvG6lhLYoDk7C12LPKA",
  authDomain: "bossapp-9fba7.firebaseapp.com",
  databaseURL: "https://bossapp-9fba7-default-rtdb.firebaseio.com",
  projectId: "bossapp-9fba7",
  storageBucket: "bossapp-9fba7.appspot.com",
  messagingSenderId: "1028914323103",
  appId: "1:1028914323103:web:2e8649a45478954437ccaa",
  measurementId: "G-03D0FWL9ZQ"
    )
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
      ),
      home: const SideNavigationDrawer(),
    );
  }
}


