import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MusicAlbumWidget extends StatelessWidget {
  const MusicAlbumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xff667eea), Color(0xff764ba2)],
            ),
          ),
          child: const Center(
            child: Text('🎵', style: TextStyle(fontSize: 50)),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Night Vibes',
          style: GoogleFonts.playfairDisplay(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'The Midnight',
          style: GoogleFonts.roboto(
            fontSize: 16,
            color: Colors.grey[700],
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '2024 • 12 tracks',
          style: GoogleFonts.openSans(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }
}
