import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class SalesTiles extends StatelessWidget {

  Color color_;
  IconData icon_;
  String title_;
  String subtitle_;
  String price;
  SalesTiles({super.key , required this.color_ , required this.icon_ , required this.title_ , required this.subtitle_ , required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), 
              color: color_,
              ),
              child: Icon(icon_),
            ),
            const SizedBox(width: 20,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title_ , 
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                     fontWeight: FontWeight.w600,
                  )
                  ),

                Text(subtitle_, 
                 style: GoogleFonts.poppins(
                  color: Colors.grey
                 ),),
              ],
            ),
          ],
        ),
        Text(price , 
        style: GoogleFonts.poppins(
          fontSize: 22, 
         fontWeight: FontWeight.bold
        ),
        )
      ],
    );
  }
}