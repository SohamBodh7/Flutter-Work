import 'package:flutter/material.dart';
import 'package:flutter_student_id_card/screens/student_id_card.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: StudentIdScreen());
  }
}
