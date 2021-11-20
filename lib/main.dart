import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:task_four/pages/animals.dart';
import 'package:task_four/provider/animals_model.dart';

void main() {
  runApp(const TaskFourApp());
}

class TaskFourApp extends StatelessWidget {
  const TaskFourApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ChangeNotifierProvider(
      create: (ctx) => AnimalsModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AnimalsPage(),
      ),
    );
  }
}
