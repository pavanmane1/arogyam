import 'package:arogyam/Screens/demo/View_models/user_view_model.dart';
import 'package:arogyam/Screens/demo/views/Screens/home_screen.dart';
import 'package:arogyam/Screens/demo/views/home_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UserViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeSplashScreen(),
      ),
    );
  }
}
