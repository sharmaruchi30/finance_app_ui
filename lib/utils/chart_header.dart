import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChartHeader extends StatelessWidget {
  final String title_;
  final String subtitle_;
  final Color title_color;

  const ChartHeader(
      {super.key,
      required this.title_,
      required this.subtitle_,
      required this.title_color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title_,
          style: GoogleFonts.poppins(
            color: title_color,
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),
        ),
        // const SizedBox(height: 3,),
        Text(subtitle_ , 
        style: GoogleFonts.poppins(fontSize: 12),
        ),
      ],
    );
  }
}
