import 'package:flutter/material.dart';
import 'package:flutter_assignments/widgets/assignment_1_id_card.dart';
import 'package:flutter_assignments/widgets/assignment_2_profile.dart';
import 'package:flutter_assignments/widgets/assignment_3_food_menu.dart';
import 'package:flutter_assignments/widgets/assignment_4_weather.dart';
import 'package:flutter_assignments/widgets/assignment_5_product.dart';
import 'package:flutter_assignments/widgets/assignment_6_news.dart';
import 'package:flutter_assignments/widgets/assignment_7_social_post.dart';
import 'package:flutter_assignments/widgets/assignment_8_music_album.dart';
import 'package:flutter_assignments/widgets/assignment_9_contact.dart';
import 'package:flutter_assignments/widgets/assignment_10_about_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI Assignments',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor: const Color(0xFFF0F2F5),
      ),
      home: const AssignmentScreen(),
    );
  }
}

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  Widget _buildAssignmentCard(String title, Widget content) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            color: Colors.grey[200],
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(padding: const EdgeInsets.all(16.0), child: content),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter UI Widgets',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF3B4252),
        elevation: 5.0,
      ),
      backgroundColor: const Color.fromARGB(255, 1, 26, 70),
      // Change the body from ListView to SingleChildScrollView
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),
            _buildAssignmentCard(
              'Assignment 1: Student ID Card',
              const IdCardWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 2: Personal Profile',
              const ProfileWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 3: Food Menu Item',
              const FoodMenuWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 4: Weather Display',
              const WeatherWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 5: Product Showcase',
              const ProductWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 6: News Article Preview',
              const NewsWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 7: Social Media Post',
              const SocialPostWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 8: Music Album',
              const MusicAlbumWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 9: Contact Card',
              const ContactWidget(),
            ),
            _buildAssignmentCard(
              'Assignment 10: App About Page',
              const AboutPageWidget(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
