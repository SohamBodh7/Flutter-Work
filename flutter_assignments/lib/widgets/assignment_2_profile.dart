import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 45,
          backgroundColor: Color(0xfffecfef),
          child: Text('👨', style: TextStyle(fontSize: 40)),
        ),
        const SizedBox(height: 15),
        Text(
          'Soham Bodhani',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          'Flutter developer passionate about creating beautiful mobile experiences',
          textAlign: TextAlign.center,
          style: GoogleFonts.openSans(color: Colors.grey[700], fontSize: 14),
        ),
        const Divider(height: 30, thickness: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatItem('1.2K', 'Followers'),
            _buildStatItem('856', 'Following'),
            _buildStatItem('42', 'Posts'),
          ],
        ),
      ],
    );
  }

  Widget _buildStatItem(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          label,
          style: GoogleFonts.roboto(color: Colors.grey[600], fontSize: 12),
        ),
      ],
    );
  }
}
