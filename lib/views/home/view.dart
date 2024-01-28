import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0,0),
              blurRadius: 8,
              blurStyle: BlurStyle.inner,
              color: Colors.black.withOpacity(.06)
            )
          ]
        ),
        child: CurvedNavigationBar(
            color: Color(0xffF9F9F9),
            backgroundColor: Colors.transparent,
            buttonBackgroundColor:  const Color(0xffF9F9F9),
            onTap: (int index) {
              currentIndex =index;
              setState(() {
              });
            },
            letIndexChange: (index) => true,
            items: [
          Icon(Icons.person_off,size:30,),
          Icon(Icons.person_off),
          Icon(Icons.home),
        ]),
      ),
    );
  }
}
