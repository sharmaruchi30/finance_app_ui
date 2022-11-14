import 'dart:math';
import 'package:finance_app/Pages/info_page.dart';
import 'package:finance_app/utils/card_details.dart';
import 'package:finance_app/utils/main_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Transform.rotate(
                      angle:  pi/180 ,
                      child: const Image(
                        image: AssetImage("assets/menu_icon.png"),
                        height: 30,
                        width: 30,
                      )),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        // color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.black54, width: 1.2)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage("assets/profile3.jpg" ), fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "Hello David",
                        style: GoogleFonts.poppins(
                          
                          fontSize: 34,
                          fontWeight: FontWeight.bold
                        )
                        // style: TextStyle(
                        //     fontSize: 35, fontWeight: FontWeight.bold) ,
                      ),
                      // const SizedBox(
                      //   height: 2,
                      // ),
                      Text(
                        "Welcome back !",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        )
                        // style: TextStyle(
                        //     color: Colors.black54,
                        //     fontWeight: FontWeight.w500,
                        //     fontSize: 16),
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const InfoPage(),
                          transition: Transition.zoom);
                    },
                    child: const Image(
                      image: AssetImage("assets/setting.png"),
                      height: 20,
                      width: 20,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: GridView.count(
                  childAspectRatio: (1 / 1.3),
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 0,
                  children: [
                    Container(
                      // rgb(192,222,220)
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 180,
                          width: 155,
                          decoration: BoxDecoration(
                            color: color1,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: const CardDetails(
                              icon_: Icons.settings_outlined,
                              subs: "140k",
                              cat: "Sales"),
                        ),
                      ),
                    ),
                    Container(
                      // rgb(230,223,241)

                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 200,
                          width: 155,
                          decoration: BoxDecoration(
                              color: color2,
                              borderRadius: BorderRadius.circular(35)),
                          child: const CardDetails(
                              icon_: Icons.person_outline,
                              subs: "7.139k",
                              cat: "Customers"),
                        ),
                      ),
                    ),
                    Container(
                      // rgb(241,238,233)

                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 200,
                          width: 155,
                          decoration: BoxDecoration(
                              color: color3,
                              borderRadius: BorderRadius.circular(35)),
                          child: const CardDetails(
                              icon_: Icons.wallet,
                              subs: "2.143k",
                              cat: "Products"),
                        ),
                      ),
                    ),
                    Container(
                      // rgb(241,223,223)

                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 180,
                          width: 155,
                          decoration: BoxDecoration(
                              color: color4,
                              borderRadius: BorderRadius.circular(35)),
                          child: const CardDetails(
                              icon_: Icons.pie_chart_outline,
                              subs: "\$ 8745",
                              cat: "Revenue"),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
