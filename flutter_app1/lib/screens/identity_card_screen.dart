import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdentityCardScreen extends StatefulWidget {
  const IdentityCardScreen({super.key});

  @override
  State<IdentityCardScreen> createState() => _IdentityCardScreenState();
}

class _IdentityCardScreenState extends State<IdentityCardScreen> {
  final name = "Monkey D Luffy";
  final title = "Pirate King";
  final idNumber = "600000000";
  final dateOfBirth = "May 1, 1999";
  final address = "East Blue";
  final phoneNumber = "1234567890";
  final email = "luffy@pirates.com";
  final nationality = "Nika";
  final gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/id_card_.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "COMPANY NAME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "TAG LINE GOES HERE",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(height: 50),
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/luffy.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(1000),
                  border: Border.all(color: Color(0xff2E9DA6), width: 10),
                ),
              ),
              SizedBox(height: 20),
              Text(
                name,
                style: GoogleFonts.eduNswActFoundation(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                title,
                style: GoogleFonts.eduNswActFoundation(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "ID NO",
                      style: TextStyle(color: Color(0xff2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $idNumber",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "DOB ",
                      style: TextStyle(color: Color(0xFF2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $dateOfBirth",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Address ",
                      style: TextStyle(color: Color(0xFF2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $address",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Phone No",
                      style: TextStyle(color: Color(0xFF2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $phoneNumber",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Email ",
                      style: TextStyle(color: Color(0xFF2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $email",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  style: GoogleFonts.sahitya(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "Nationality",
                      style: TextStyle(color: Color(0xFF2E9DA6)),
                    ),
                    TextSpan(
                      text: ": $nationality",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
