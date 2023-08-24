import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleprovider/provider/countProvider.dart';
import 'package:singleprovider/view/count_example.dart';
import 'package:singleprovider/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (_)=>CountProvider(),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CountExample(),
    ),
    );

  }
}

