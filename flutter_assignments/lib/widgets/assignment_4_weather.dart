import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xff74b9ff), Color(0xff0984e3)],
        ),
      ),
      child: Column(
        children: [
          const Text('☁️', style: TextStyle(fontSize: 60)),
          const SizedBox(height: 10),
          Text(
            '23°',
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.bold,
              fontSize: 52,
              color: Colors.white,
            ),
          ),
          Text(
            'Pune, India',
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Cloudy',
            style: GoogleFonts.openSans(fontSize: 16, color: Colors.white70),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'High: 25°',
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Low: 21°',
                style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
