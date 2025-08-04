import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPageWidget extends StatelessWidget {
  const AboutPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Color(0xff667eea), Color(0xff764ba2)],
            ),
          ),
          child: const Center(
            child: Text('📱', style: TextStyle(fontSize: 35)),
          ),
        ),
        const SizedBox(height: 15),
        Text(
          'MyFlutterApp',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          'Version 1.0.0',
          style: GoogleFonts.roboto(color: Colors.grey[600]),
        ),
        const SizedBox(height: 20),
        Text(
          'A beautiful mobile application built with Flutter. This app demonstrates clean UI design and smooth user experience with modern Material Design principles.',
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            fontSize: 15,
            color: Colors.grey[800],
            height: 1.5,
          ),
        ),
        const Divider(height: 40),
        Text(
          'Developer Information',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 15),
        _buildContactItem(Icons.business, 'ABC Tech Solutions'),
        const SizedBox(height: 10),
        _buildContactItem(Icons.email_outlined, 'support@abctech.com'),
        const SizedBox(height: 10),
        _buildContactItem(Icons.language, 'www.abctech.com'),
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
