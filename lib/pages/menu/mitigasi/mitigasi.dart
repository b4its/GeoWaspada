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

class mitigasiPage extends StatefulWidget {
  const mitigasiPage({Key? key}) : super(key: key);

  @override
  State<mitigasiPage> createState() => _mitigasiPageState();
}

class _mitigasiPageState extends State<mitigasiPage> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the current screen

    return Scaffold(
      backgroundColor: Colors.orange.shade400,
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
                    margin: EdgeInsets.only(left: 90),
                    height:5,
                    width: 70,
                    color: Colors.orange.shade400,
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
                  SizedBox(height: 30),
                    Center(
                      child: 
                      Column(
                        children: [
                        
                        Center(
                          child: 
                          TextButton(onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => sosMenu()),
                            );
                          },
                          child: 
                            Stack(
                            alignment: Alignment.center, // Center the stack's children
                            children: [
                              // Container yang lebih besar
                              Container(
                                height: 250,
                                width: 250,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                              ),
                              // Container yang lebih kecil
                              Container(
                                height: 240,
                                width: 240,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 255, 168, 162),
                                  borderRadius: BorderRadius.circular(300),
                                ),
                              ),
                              Container(
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(300),
                                ),
                                child: 
                                Center(
                                  child: 
                                  Text("S.O.S",style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold
                                ),),
                                )
                              ),
                            ],
                          ),
                        
                        
                          ),
                          
                        ),
            
                      
                        Container(
                          margin: EdgeInsets.only(top: 120),
                          height:150,
                          width: 310,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                          ),
                          child: 
                          Column(
                            children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: 
                              Text("Mitigasi", style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            
                            
                            Container(
                              margin: EdgeInsets.only(top: 50),
                                                  width: 210,
                                                  child:
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          // Navigator.push(
                                                          //   context,
                                                          //   MaterialPageRoute(builder: (context) => dashboardPage()),
                                                          // );
                                                        },
                                                        child: Text("Jalur Evakuasi",
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 12
                                                          ),),
                                                          style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.red,
                                                            shape: RoundedRectangleBorder(
                                                              borderRadius: BorderRadius.circular(4),
                                                            ),
                                                          ),
                                                        ),
                                                        
                                                      ),
                            
                            ],
                          )
                          
                        ),
                    
                      ],
                      )
                    )
              
                
          
          ]
        )),
      ),
    );
  }
}