import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 45,
          backgroundColor: Color(0xffff9a56),
          child: Text('👨‍💼', style: TextStyle(fontSize: 40)),
        ),
        const SizedBox(height: 15),
        Text(
          'David Wilson',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 20),
        _buildContactItem(Icons.phone, '+1 (555) 123-4567'),
        const SizedBox(height: 10),
        _buildContactItem(Icons.email, 'david.wilson@email.com'),
        const SizedBox(height: 10),
        _buildContactItem(Icons.location_on, '123 Main St, City, State'),
      ],
    );
  }

  Widget _buildContactItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: const Color(0xff667eea), size: 22),
        const SizedBox(width: 15),
        Text(text, style: GoogleFonts.roboto(fontSize: 15)),
      ],
    );
  }
}
