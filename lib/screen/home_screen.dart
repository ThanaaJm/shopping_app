// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List beauty = ["Skincare", "Haircare", "Makeup", "Fragrances"];

  List ads = ["Gel Cream","Luseta hair collation"];

  List<Color> bgColors = [
    Color.fromARGB(206, 37, 144, 112),
    Color.fromARGB(206, 246, 144, 163),
    Color.fromARGB(206, 237, 190, 19),
    Color.fromARGB(206, 128, 108, 185), ];

  @override
  Widget build(BuildContext context) {
  return Material(
  color: Color.fromARGB(230, 231, 224, 192),
    child: SingleChildScrollView(
    child: Column(
    children: [
    SizedBox(height: 50,),

    Padding(padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [ Column(
    crossAxisAlignment: CrossAxisAlignment.start,
                    
  children: [
    Text( "location",
    style: TextStyle(fontSize: 18, color: Colors.black54),),

  SizedBox( height: 5,),
  Row(
  children: [
   Icon( Icons.location_on,
    color: Color.fromARGB(255, 113, 183, 188), ),
                          
    Text( "Qatif",
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold), ),
    Icon( Icons.arrow_drop_down,
    color: Color.fromARGB(255, 113, 183, 188), )
     ],
     ),
     ],
     ),

  Stack( children: [
    Container( height: 50, width: 50,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(15),
     image: DecorationImage( image: AssetImage("assets/2.png"), fit: BoxFit.cover),
     ),
     ),
    Positioned( left: 40,
    child: Container( 
      padding: EdgeInsets.all(6),
     margin: EdgeInsets.all(6),
     decoration: BoxDecoration(
      border: Border.all(color: Colors.white, width: 1),
      color: Color.fromARGB(255, 113, 183, 188),
      shape: BoxShape.circle),
    ),
    ),
    ],
    ),
    ],
    ),
    ),
  
 SizedBox(height: 20,),

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [ Container(

    width: MediaQuery.of(context).size.width / 1.4,
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

    decoration: BoxDecoration(
    color: Color.fromARGB(255, 113, 183, 188),
    borderRadius: BorderRadius.circular(10), ),
  child: Center(
   child: TextFormField(
    decoration:
    InputDecoration(hintText: "Looking for something special?"),),
    ),
    ),

 InkWell(
  onTap: () {},
  child: Container(
   padding: EdgeInsets.all(5),

   decoration: 
   BoxDecoration( 
    color: Color.fromARGB(255, 113, 183, 188),
   borderRadius: BorderRadius.circular(10), ),

  child: Icon(
  Icons.filter_list, color: Colors.white, size: 30, ),
  ),
  ),
  ],
  ),

SizedBox( height: 20, ),

Padding( padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),

  child: ClipRRect(
  borderRadius: BorderRadius.circular(15),
  child: Image.asset("assets/3.jpg"),
  ),
  ),

Padding( padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),

child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

  children: [
  Text( "Categories",
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),

  TextButton( onPressed: () {},
  child: Text( "Show All",
  style: TextStyle( fontSize: 18,
  color: Color.fromARGB(255, 113, 183, 188),
  fontWeight: FontWeight.bold), ),
  ),
  ],
  ),
  ),

SizedBox( height: 120,

child: ListView.builder(
  scrollDirection: Axis.horizontal,
  shrinkWrap: true,
  itemCount: beauty.length,
  itemBuilder: (context, index) {

  return Container(
    width: 100,
    margin: EdgeInsets.only(left: 15),
    padding: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
    color: bgColors[index],
    borderRadius: BorderRadius.circular(10),
    ),

 child: Column(
   mainAxisAlignment: MainAxisAlignment.spaceEvenly,

 children: [ 
  Image.asset( "assets/${beauty[index]}.png",
  width: 80,
  height: 80, ),

 Text( beauty[index], style: TextStyle(fontSize: 17, color: Colors.black), ),
  ],
  ),
  );
 },
),
),

Padding( padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),

child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [
  Text( "Popular",
  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), ),

  TextButton(
    onPressed: () {},
    child: Text( "Show All",
    style: TextStyle ( 
      fontSize: 18,
      color: Color.fromARGB(255, 113, 183, 188),
      fontWeight: FontWeight.bold), ), ),
  ],
  ),
  ),
  
SizedBox( height: 220,

child: ListView.builder(
  scrollDirection: Axis.horizontal,
  shrinkWrap: true,
  itemCount: ads.length,
  itemBuilder: (context, index) {
    
  return InkWell(
    onTap: () {},


child: Container(
    width: MediaQuery.of(context).size.width / 1.4,
    margin: EdgeInsets.only( left: 15, top: 5, bottom: 5, right: 5),
    
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Color.fromARGB(230, 231, 224, 192),),

child: Column( 
  mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [
  ClipRRect(
    borderRadius: BorderRadius.only( topLeft: Radius.circular(10), topRight: Radius.circular(10)),
child: Image.asset( "assets/${ads[index]}.jpg",
  height: 120,
  width: MediaQuery.of(context).size.width / 1.4,
  fit: BoxFit.cover, ),
  ),

 Padding( padding: EdgeInsets.only(left: 10),

child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [
 Column( crossAxisAlignment: CrossAxisAlignment.start,
 children: [ 
  Text( ads[index], style: TextStyle( fontSize: 16, fontWeight: FontWeight.bold), ),
  
SizedBox( height: 6, ),

Row(
children: [
Icon( Icons.star, size: 20, color: Color.fromARGB(255, 113, 183, 188), ),

Text( "4.5", style: TextStyle( fontWeight: FontWeight.bold), ),

SizedBox( width: 6, ),

Text("1000+ review", style:TextStyle(color: Colors.black54), ),
],
),
],
),

Column( 
children: [

SizedBox( height: 20,),

Container( padding: EdgeInsets.all(10),

decoration: BoxDecoration(
  color: Color.fromARGB(255, 113, 183, 188),
  borderRadius:
  BorderRadius.circular(10)),

child: Text( "SAR 75",
style: TextStyle( fontSize: 14, color: Colors.white), ),
),
],
),
],
),
)
],
),
),
);
},
),
),
],
),
),
);
  }
}

