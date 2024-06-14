import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geowaspada/pages/menu/bencana/bencana.dart';
import 'package:geowaspada/pages/menu/hamburger.dart';
import 'package:geowaspada/widget/navbar/navWidget.dart';

class dashboardPage extends StatefulWidget {
  const dashboardPage({Key? key}) : super(key: key);

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  @override
  Widget build(BuildContext context) {
    bool isPressed = false;
    final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
];
    // Get the width of the current screen

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: 
      Transform.scale(
      scale: 1.19,
      child: 
      Transform.translate(offset: Offset(0, -5),
      child:
        
        FloatingActionButton(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28.0), // Sesuaikan dengan radius yang diinginkan
        side: BorderSide(color: Colors.red), // Opsi: tambahkan garis pinggir jika diperlukan
      ),
        onPressed:(){},
        child: Center(
                  child: Text(
                    'SOS', // Replace with your text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold // Adjust as needed
                    ),
                  ),
                ),
         ),

      )
      
      ),
      bottomNavigationBar: 
        BottomAppBar(
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 8,
            child: 
            Stack(
              children: [
               bottomNav(),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Transform.translate(offset: Offset(0, -5),
                child: 
                  Container(
                    margin: EdgeInsets.only(left: 7),
                    height:5,
                    width: 100,
                    color: Colors.orange.shade200,
                    alignment: Alignment.centerLeft
                  )       
                )
                ]
                )
              ],
            )

            

          ),
        
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Container(
                  alignment: Alignment.center,
                  height: 45, width: double.infinity,
                  color: Color.fromARGB(255, 248, 158, 85), 
                  child: 
                    navBar(),
                 ),
                 
                  
                 
                 

SizedBox(height:10),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
SizedBox(height: 50),
              Column(
                children: [
                Row(
                        children: [
                          Icon(
                              Icons.location_on_outlined,
                              color: Colors.black87,
                              size: 20.0,
                            ),
                            SizedBox(width: 2.0),
                            Text(
                              'Nusantara, ID',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                        ],
                      ), 
                      SizedBox(height:32),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                              'Normal',
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ), 
                      )
                      
              ],)
                      
                            
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          height: 150,
                          width: 200,
                          decoration: 
                          BoxDecoration(
                            color: Colors.blue.shade200,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Text(
                            '',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
SizedBox(height: 15),
                Align(
                  alignment: Alignment.center, // Aligning the Container to the start (left)
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    width: 450,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0), // Set the desired border radius
                          ),
                    child: Text(
                      'Kondisi saat ini normal, dan tidak ada bencana yang akan datang ',
                      style: TextStyle(
                        fontSize: 12, color: Colors.black87,
                        fontWeight: FontWeight.bold
                        ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
        Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            "Informasi Terkini",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
            ),
            ),
            
           Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Container(
                    child: 
                    Transform.scale(
                      scale: 1.3,
                      child: CarouselSlider(
                      options: CarouselOptions(
                        autoPlay: true,
                        aspectRatio: 2.0,
                        enlargeCenterPage: true,
                      ),
                      items: [
                        // Menambahkan item carousel secara statis
                        Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                  children: <Widget>[
                                    // Widget untuk gambar
                                    Container(
                                      alignment: Alignment.topLeft,
                                      color: Colors.white,
                                      child: 
                                      
                                      Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left:5),
                                            child:Image.asset(
                                        'assets/cuaca-berawan.png',
                                        height: 120,
                                      ),
                                          ),
                                          
                                      Column(
                                        children: [
                                          Transform.translate(offset: Offset(-15, 7),
                                      child: Container( // Atur padding sesuai kebutuhan
                                        color: Colors.transparent, // Atur warna menjadi transparent agar hanya teks yang terlihat
                                        child: Text(
                                          "Keadaan cuaca",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      ),
                                      
                                      Transform.translate(offset: Offset(-5, 13),
                                      child: Container( // Atur padding sesuai kebutuhan
                                        color: Colors.transparent, // Atur warna menjadi transparent agar hanya teks yang terlihat
                                        child: Text(
                                          "Berawan",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      ),
                                      
                                      Transform.translate(offset: Offset(-10, 13),
                                      child: Container( // Atur padding sesuai kebutuhan
                                        color: Colors.transparent, // Atur warna menjadi transparent agar hanya teks yang terlihat
                                        child: Text(
                                          "34 derajat",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      ),
                                        ],
                                      )
                                      
                                      
                                      
                                      
                                        ],
                                      )
                                      

                                      
                                    ),
                                    // Widget untuk teks
                                    
                                  ],
                                )


                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              child: Stack(
                                children: <Widget>[
                                  Image.network(imgList[1], fit: BoxFit.cover, width: 1000.0),
                                  Positioned(
                                    bottom: 0.0,
                                    left: 0.0,
                                    right: 0.0,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color.fromARGB(200, 0, 0, 0),
                                            Color.fromARGB(0, 0, 0, 0)
                                          ],
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                        ),
                                      ),
                                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                                      child: Text(
                                        'Lorem ipsum dolor',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // nambah lagi klo mw
                      ],
                    ),
                    )
                    
                  ),
                ),
              ),
            ),

          ],
        ),
            
    

           SizedBox(height:25),
           
            Padding(
              padding: const EdgeInsets.all(15),
              child: 
              Container(
                child:
                Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: 
                      Text(
                      "Siaran Pers",
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),

                    
                    ),
                    Transform.translate(offset: Offset(-10, 10),
                      child:
                        Container(
                          height: 333,
                          width: 450,
      
                          child:
                          Column(
                            children: [
                            ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child:
                            Image.asset(
                                "assets/ikn-background.png",
                                fit: BoxFit.cover,
                              ), 
                          ),
                          Transform.translate(offset: Offset(-13, -60),
                          child:
                            Container(
                              width: 300,
                              height:55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)
                              ),
                              
                              child:
                              Padding(padding: EdgeInsets.all(7),
                              child: 
                              Text("lorem ipsum dolor sit amet",style: TextStyle(
                              color: Colors.red,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                            ),)
                              ) 
                              
                            ),
                             
                          ),
                           
                            ],
                          ),
                          
                            
                          
                        ),
                    ),
                    
                    
                  ],
                ), 


              )
            ),

            Transform.translate(offset: Offset(0, -50),
            child:
              Padding(padding: EdgeInsets.all(15),
              child: 
                Container(
                          alignment: Alignment.topLeft,
                          child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: 
                                    Text(
                                      "Tips",
                                      style: TextStyle(
                                      fontSize: 18, fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,
                                    ),
                              ),
                                
                                
                              
                            SizedBox(height: 5),
                            Row(
                              
                              children: [
                                Container(
                                  margin:EdgeInsets.only(right:5),
                                  alignment: Alignment.topLeft,
                                  child: 
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.black,
                                      size: 35,
                                      )
                              ),
                                Transform.translate(offset: Offset(5, 0),
                                child:
                                Container(
                                  width: 280,
                                  alignment: Alignment.topLeft,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)
                                  ),
                                  child: 
                                  Padding(padding: EdgeInsets.all(15),
                                  child: 
                                  Text("lorem ipsum dolor sit amet ",style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                  ),)
                                  )
                                )
                                ),
                              ]
                            )
                            

                            ],
                          )
                          

                        
                      ),
                ),
            
            ),
            
                    
                         SizedBox(height: 20),
      
            
          
          ],
        )),
      ),
    );
  }
}