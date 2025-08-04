import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialPostWidget extends StatelessWidget {
  const SocialPostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xfffcb69f),
              child: Text('👨', style: TextStyle(fontSize: 22)),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mike Chen',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                Text(
                  '2 hours ago',
                  style: GoogleFonts.roboto(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 15),
        Text(
          'Just finished building my first Flutter app! The widgets system is incredible 🚀',
          style: GoogleFonts.inter(fontSize: 15, height: 1.5),
        ),
        const SizedBox(height: 15),
        Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            gradient: const LinearGradient(
              colors: [Color(0xffa8edea), Color(0xfffed6e3)],
            ),
          ),
          child: const Center(
            child: Text('📱', style: TextStyle(fontSize: 40)),
          ),
        ),
        const SizedBox(height: 15),
        Row(
          children: [
            const Icon(Icons.favorite_border, color: Colors.grey, size: 20),
            const SizedBox(width: 4),
            Text(
              '24 likes',
              style: GoogleFonts.roboto(color: Colors.grey[700]),
            ),
            const SizedBox(width: 20),
            const Icon(Icons.comment_outlined, color: Colors.grey, size: 20),
            const SizedBox(width: 4),
            Text(
              '8 comments',
              style: GoogleFonts.roboto(color: Colors.grey[700]),
            ),
          ],
        ),
      ],
    );
  }
}
