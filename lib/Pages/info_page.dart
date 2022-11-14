import 'dart:math';

import 'package:finance_app/utils/chart.dart';
import 'package:finance_app/utils/chart_header.dart';
import 'package:finance_app/utils/main_colors.dart';
import 'package:finance_app/utils/sales_tiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  int _selectedItemIndex  = 0;
  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
     
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
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
                                  image: AssetImage("assets/profile3.jpg", ), fit: BoxFit.fill,
                                )),
                          ),
                        ),
                      )
                    ],
                  ),
              const SizedBox(height: 40,),
              Container(
                height: 280,
                width: MediaQuery.of(context).size.width ,
                decoration: BoxDecoration(
                  color: color3,
                  borderRadius: BorderRadius.circular(35)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ChartHeader(title_: "\$ 4,732.97", subtitle_: "Global Avg.", title_color: Colors.black , ),
                          ChartHeader(title_: "\$ 80.3M", subtitle_: "Global Avg.", title_color: textGreen,),
                          ChartHeader(title_: "\$ 1.73M", subtitle_: "Global Avg.", title_color: textRed,),
                        ],
                      ),
                      Container(
                        height: 169,
                        child: GetChart(),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          timeSpanButtons("1D", 0 , color1),
                          timeSpanButtons("1W", 1, color2),
                          timeSpanButtons("1M", 2, color4),
                          timeSpanButtons("3M", 3,color4),
                          timeSpanButtons("6M", 4,color4),
                          timeSpanButtons("9M", 5,color4),
                          timeSpanButtons("1Y", 6,color4),
                        
                        ],
                      ),
                   
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20,),
      
             Text("Sales Revenue",
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(height: 18,),
              
              SalesTiles(color_: color1, icon_: Icons.percent, title_: "Sales", subtitle_: "Since last week", price: "240k"),
              const SizedBox(height: 12,),
              SalesTiles(color_: color2, icon_: Icons.person_outline, title_: "Customers", subtitle_: "Since last week", price: "7.139k"),
              const SizedBox(height: 12,),
              SalesTiles(color_: color3, icon_: Icons.wallet, title_: "Products", subtitle_: "Since last week", price: "2.143k"),
              const SizedBox(height: 12,),
              SalesTiles(color_: color4, icon_: Icons.pie_chart_outline ,title_: "Revenue", subtitle_: "Since last week", price: "\$ 8745 "),
          ]
          ),
        ),
      ),
    );
  }

  Widget timeSpanButtons(String title_ , int index , Color color_){
    return GestureDetector(
      onTap: () => {
        setState(() => {
          _selectedItemIndex = index,
        },)
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: index ==_selectedItemIndex ?  color_ : color3,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text(title_ , style: GoogleFonts.poppins(),),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget GetChart(){
  if(_selectedItemIndex == 0){
    return ChartWidget(xpoints:const  [0 ,1,2,3,4,6,7,8,9,11], ypoints: const [3, 4.5 , 4.2, 3.0 , 2.8 , 2 , 1 ,2.7 , 2 , 3.3], color_: color1,);
  }
  else if(_selectedItemIndex ==1){
    return ChartWidget(xpoints:const  [0 ,1,2,3,4,6,7,8,9,11], ypoints: const [3, 2.5 , 4.2, 2.5 , 3.2 , 1.2 , 1.4 ,3.2 , 2 , 3.9], color_: color2,);
  }
  else if(_selectedItemIndex ==2){
    return ChartWidget(xpoints:const  [0 ,1,2,3,4,6,7,8,9,11], ypoints: const [3, 4.5 , 4.2, 3.0 , 2.8 , 2 , 1 ,2.7 , 2 , 3.3],color_: color4,);
  }
  // You can add more charts here.
  else{
     return ChartWidget(xpoints:const  [0 ,1,2,3,4,6,7,8,9,11], ypoints: const [3, 4.5 , 4.2, 3.0 , 2.8 , 2 , 1 ,2.7 , 2 , 3.3],color_: color4,);
  }
 
  
}
}

