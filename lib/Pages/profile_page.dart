import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Profile Page", 
      style: GoogleFonts.poppins(
        fontSize: 23,
      ),),
    );
  }
}