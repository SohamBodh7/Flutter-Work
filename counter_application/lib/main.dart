import 'package:counter_application/Forms/forms_screen.dart';
//import 'package:counter_application/screens/counter.dart';
import 'package:counter_application/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: CounterWidget()
      title: 'Form TextField Demo',
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      home: const FormScreen(),
    );
  }
}
