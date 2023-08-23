import 'package:cozy_app/pages/splash_page.dart';
// import 'package:cozy_app/provider/space_provider.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
        // ChangeNotifierProvider(
        //   create: (context) => SpaceProvider(),
        //   child:
        const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // ),
    );
  }
}
