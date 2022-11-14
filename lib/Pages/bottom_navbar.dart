import 'package:finance_app/Pages/analytics_page.dart';
import 'package:finance_app/Pages/home_page.dart';
import 'package:finance_app/Pages/profile_page.dart';
import 'package:finance_app/Pages/wallet_page.dart';
import 'package:finance_app/utils/main_colors.dart';
import 'package:flutter/material.dart';




class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedItemIndex=0;
  final List<Widget> _pages = [
    const HomePage(),
    const WalletPage(),
    const AnalyticsPage(),
    const ProfilePage(),

  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
          children: [
            //ignore: sized_box_for_whitespace
            buildnavbar(context , Icons.home_outlined, 0 ),
            buildnavbar(context, Icons.wallet_outlined,1),
            buildnavbar(context , Icons.auto_graph_sharp, 2),
            buildnavbar(context, Icons.person_outline, 3),
        
          ],
        ),
      body: _pages[_selectedItemIndex] ,
    );
  }

    Widget buildnavbar(BuildContext context , IconData icon_ , int index) {
      
    return GestureDetector(
      onTap: (() => {
        setState(() => {
          _selectedItemIndex =index,
        },)
      }),
      child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width/4,
              
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50,
                  width: 50,
                  child: Icon(icon_),
                   decoration: BoxDecoration(
                color: index == _selectedItemIndex? color4: Colors.white,
                borderRadius: BorderRadius.circular(50)
              ),),
                  
              ),
             
            ),
    );
  }
}