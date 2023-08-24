import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:singleprovider/provider/countProvider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}


class _CountExampleState extends State<CountExample> {
@override
  void initState() {
  final countProvider = Provider.of<CountProvider>(context,listen: false);
  print('only here');
  // TODO: implement initState
   Timer.periodic(Duration(seconds: 1), (timer) {
     countProvider.setCount();

   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context,listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("single provider"),
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (BuildContext context, value, Widget? child) {
          print("only build here");
          return Text(value.count.toString(),style: TextStyle(fontSize: 50),);
        },
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
