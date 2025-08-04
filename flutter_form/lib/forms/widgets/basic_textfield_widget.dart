import 'package:flutter/material.dart';

class BasicTextfieldWidget extends StatefulWidget {
  const BasicTextfieldWidget({
    super.key,
    required this.controller,
    this.onChanged,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;

  @override
  State<BasicTextfieldWidget> createState() => _BasicTextfieldWidgetState();
}

class _BasicTextfieldWidgetState extends State<BasicTextfieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Basic textfield',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: 'Enter Your Name',
      ),

      controller: widget.controller,
      onChanged: widget.onChanged,
    );
  }
}
