// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_import

import 'package:app4/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.symmetric(vertical: 80)),
          Expanded(
            child: Center(
            child:Image.asset(
                'assets/images/1.png',
                height: 300,
                fit: BoxFit.contain,
              ),
              ),
              ),

          Text(
            'Venus',
            style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.w200,
                color: Color.fromARGB(255, 46, 41, 59),
                fontStyle: FontStyle.normal),
          ),

          Text(
            'A heaven for every divine woman',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,  
              color: Color.fromARGB(196, 46, 41, 59),),
          ), 
          SizedBox(height: 50,),

          InkWell(
            onTap: (){
              Navigator.push( context, MaterialPageRoute(builder: (context) => const HomeScreen()),);
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 60 ,vertical: 50 ),
              padding: EdgeInsets.symmetric(vertical: 15 ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 113, 183, 188), 
                borderRadius: BorderRadius.circular(40) ,
                boxShadow:[BoxShadow(
                  color: Colors.black,
                  blurRadius: 10,
                  offset: Offset(0, 5)
                )
                ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ 
                  Text("Click Here", 
                  style: TextStyle( fontSize: 19,
                  fontWeight: FontWeight.w400,  
                  color: Color.fromARGB(196, 46, 41, 59),),),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios, color: Color.fromARGB(196, 46, 41, 59), ),
                ],
                ),
                ),
            ),
          SizedBox(height: 190,),
        ],
      ),
    );
  }
}
