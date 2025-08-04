import 'package:flutter/material.dart';

class EmailFieldWidget extends StatefulWidget {
  const EmailFieldWidget({super.key, required this.controller, this.onChanged});

  final TextEditingController controller;
  final Function(String)? onChanged;
  @override
  State<EmailFieldWidget> createState() => _EmailFieldWidgetState();
}

class _EmailFieldWidgetState extends State<EmailFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter an email';
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: 'Enter Your Email',
      ),
    );
  }
}
