// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/menu/mitigasi/sos/menuSOS.dart';
import 'package:geowaspada/widget/menu/menuButton.dart';
import 'package:geowaspada/widget/navbar/navWidget.dart';
import 'package:geowaspada/widget/menu/menuButton.dart';

class bencanaPage extends StatefulWidget {
  const bencanaPage({Key? key}) : super(key: key);

  @override
  State<bencanaPage> createState() => _bencanaPageState();
}

class _bencanaPageState extends State<bencanaPage> {
  @override
  Widget build(BuildContext context) {
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
        onPressed:(){
          Navigator.push(
           context,
           MaterialPageRoute(builder: (context) => sosMenu()),
         );
        },
        child: Center(
                  child: Text(
                    'SOS', // Replace with your text
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Transform.translate(offset: Offset(0, -5),
                child: 
                  Container(
                    margin: EdgeInsets.only(right: 110),
                    height:5,
                    width: 70,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                  alignment: Alignment.center,
                  height: 45, width: double.infinity,
                  color: const Color.fromARGB(255, 248, 158, 85), 
                  child: 
                  navBar(),
                 ),
                Container(
                  child: 
                    Padding(padding: EdgeInsets.all(20),
                    child: 

                    Stack(
                      children: [
                        Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(

                                          width: 295,
                                          child:
                                            ElevatedButton(
                                                onPressed: () {
                                                  // Navigator.push(
                                                  //   context,
                                                  //   MaterialPageRoute(builder: (context) => dashboardPage()),
                                                  // );
                                                },
                                                child: Text("Laporkan bencana disekitar",
                                                  style: TextStyle(
                                                    color: Colors.white
                                                  ),),
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.orange.shade600,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(4),
                                                    ),
                                                  ),
                                                ),
                                                
                                              ),
                            
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top:10,left:0,right:0),
                        child:
                        Center(
                          child:
                            Column(
                            children: [
                            Transform.translate(offset: Offset(0, 0),
                            child: 
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [ 
                                       
                                  menuBencana(onTap: (){},
                                   url: "assets/icon/bencana/gempaBumi.png",
                                    uImage: 95,
                                     name: "Gempa Bumi",
                                      uFont: 12
                                      ),
                                  
                                  menuBencana(onTap: (){},
                                   url: "assets/icon/bencana/tsunami.png",
                                    uImage: 95,
                                     name: "Tsunami",
                                      uFont: 12
                                      ),
                            ],
                          )
                      ,
                            ),
                              
                            Transform.translate(offset: Offset(-5, -10),
                            child: 

                              Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [        
                                        menuBencana(onTap: (){},
                                        url: "assets/icon/bencana/longsor.png",
                                          uImage: 95,
                                          name: "Tanah Longsor",
                                            uFont: 12
                                            ),
                                        
                                        menuBencana(onTap: (){},
                                        url: "assets/icon/bencana/kebakaranHutan.png",
                                          uImage: 95,
                                          name: "Kebakaran Hutan",
                                            uFont: 12
                                            ),
                                  ],
                                )
                            ,
                            ),
                                    
                            Transform.translate(offset: Offset(-10, -35),
                                                  child: 

                                                    Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                            children: [        
                                                              menuBencana(onTap: (){},
                                                              url: "assets/icon/bencana/badai.png",
                                                                uImage: 95,
                                                                name: "Cuaca dan Badai",
                                                                  uFont: 12
                                                                  ),
                                                              
                                                              menuBencana(onTap: (){},
                                                              url: "assets/icon/bencana/banjir.png",
                                                                uImage: 95,
                                                                name: "Banjir",
                                                                  uFont: 12
                                                                  ),
                                                        ],
                                                      )
                                                  ,
                                                  ),
                                                          


                            ]
                          ),
                          

                        ),
                          
                        ),
                        
                      ],
                    ),
                    
                      ],
                    ),
                    
                    ),
                )
            
          ]
        )),
      ),
    );
  }
}