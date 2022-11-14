import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Wallet Page", 
      style: GoogleFonts.poppins(
        fontSize: 23,
      ),),
    );
  }
}