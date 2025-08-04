import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodMenuWidget extends StatelessWidget {
  const FoodMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xffff6b6b), Color(0xffffa726)],
              ),
            ),
            child: const Center(
              child: Text('🍕', style: TextStyle(fontSize: 50)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Margherita Pizza',
                  style: GoogleFonts.playfairDisplay(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Fresh tomatoes, mozzarella cheese, basil leaves on crispy thin crust.',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  '\$12.99',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: const Color(0xffff6b6b),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
