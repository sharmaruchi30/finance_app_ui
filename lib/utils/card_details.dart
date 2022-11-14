import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CardDetails extends StatelessWidget {
  final IconData icon_;
  final String subs;
  final String cat;
  const CardDetails({super.key, required this.icon_ , required this.subs, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon_ , color: Colors.black,),
        const SizedBox(height: 5,),
        Text(subs , 
        style: GoogleFonts.poppins(fontSize: 24 , fontWeight: FontWeight.bold)),
        const SizedBox(height: 5,),
        Text(cat , style: GoogleFonts.poppins(
          fontSize: 16, fontWeight: FontWeight.w500
        ),),

      ],
    );
  }
}