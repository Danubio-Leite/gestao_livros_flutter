import 'package:projeto_001/routes/app_routes.dart';
import 'package:projeto_001/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:projeto_001/screens/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      routes: {
        //O AppRoutes.HOME substitui o home que seria apresentado acima
        AppRoutes.HOME: (_) => HomePage(),
        AppRoutes.MAIN_SCREEN: (ctx) => const MainPage(),
      },
    );
  }
}
