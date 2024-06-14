// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/menu/hamburger.dart';
import 'package:geowaspada/widget/menu/menuButton.dart';
import 'package:geowaspada/widget/navbar/navWidget.dart';
// import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';
import 'package:geowaspada/widget/sosAlert.dart';

class sosMenu extends StatefulWidget {
  const sosMenu({Key? key}) : super(key: key);

  @override
  State<sosMenu> createState() => _sosMenuState();
}

class _sosMenuState extends State<sosMenu> {
  @override
  Widget build(BuildContext context) {
    // Get the width of the current screen

    return Scaffold(
      backgroundColor: Colors.orange.shade100,
      
  
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //==
            //navbar
            // ==
            Container(
                  alignment: Alignment.topLeft,
                  height: 45, width: double.infinity,
                  color: const Color.fromARGB(255, 248, 158, 85), 
                  child:
                  Padding(padding: EdgeInsets.only(right: 20,left: 20),child:

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              child: 
                              TextButton(onPressed: (){
                                Navigator.pop(context);
                                }, child:                          
                                Transform.scale(scale:1.3,child:  
                                  Container(child: 
                                  Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,),
                                  ),
                                
                                  
                                  ),),
                                      ),
                            
                            Container(
                              child: 
                              Text("Pilih Jenis Pertolongan",style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),)
                                      ),
                          ],
                        ),
                        
                        TextButton(onPressed: (){
                          Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => hamburgerPage()),
                                  );
                        }, child: 
                          Container(child: 
                          Image.asset("assets/hamburger-right.png",
                          height: 40,
                          width: 40,
                          ),
                          ),
                        
                        )
                      ],
                    ),
                  ),
                  
                
                 ),
            Container(
              child: 
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                    Container(
                    margin: EdgeInsets.only(left: 45,top:20),
                    alignment: Alignment.topLeft,
                    width: 250,
                    child: 
                    Text("Kirim sinyal S.O.S ke instansi terdekat, sesuai dengan urgensimu",style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 130, 81, 8),
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                  
                  
                  Center(
                    child:
                    TextButton(onPressed: (){
                      showDialog(context: context,
                       builder: (context) => fireResqueDialog());
                    },
                    child: 
                    Container(
                      margin: EdgeInsets.only(top: 20),
                        height: 120,
                        width:440,
                        decoration: BoxDecoration(
                        color: Colors.orange.shade600,
                        borderRadius: BorderRadius.circular(12)
                        ),
                        child:
                        Row(
                          children: [
                            Container(
                              child: 
                              Icon(Icons.fire_extinguisher,
                              color: Colors.white,
                              size: 80,
                              ),
                            ),
                            Container(
                              child: 
                              Column(
                                children: [
                                  Transform.translate(offset: Offset(-45, 25),
                                  child: 
                                    Container(
                                    child: 
                                      Text("Fire Resque",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  
                                      ),
                                      ),
                                    ),
                                  ),
                                
                                  Transform.translate(offset: Offset(0, 25),
                                  child: 
                                    Container(
                                    child: 
                                      Text("Khusus untuk urgensi kebakaran",style: TextStyle(
                                      color: Color.fromARGB(255, 252, 231, 206),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold  
                                      ),
                                      ),
                                    ),
                                  )
                                
                                ],
                              )
                            ),
                          ],
                        ),
                      )
                 
                    
                    ),
                    
                  ),
                  SizedBox(height: 40,),
                  Center(
                    child:
                    TextButton(onPressed: (){
                      showDialog(context: context,
                       builder: (context) => hospitalDialog());
                    },child: 
                    Container(
                      margin: EdgeInsets.only(top: 20),
                        height: 120,
                        width:440,
                        decoration: BoxDecoration(
                        color: Colors.orange.shade600,
                        borderRadius: BorderRadius.circular(12)
                        ),
                        child:
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 3,right: 25),
                              child: 
                              Icon(Icons.local_hospital,
                              color: Colors.white,
                              size: 80,
                              ),
                            ),
                            Container(
                              child: 
                              Column(
                                children: [
                                  Transform.translate(offset: Offset(-45, 25),
                                  child: 
                                    Container(
                                    child: 
                                      Text("Hospital Resque",style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold  
                                      ),
                                      ),
                                    ),
                                  ),
                                
                                  Transform.translate(offset: Offset(0, 25),
                                  child: 
                                    Container(
                                    child: 
                                      Text("Khusus untuk urgensi kesehatan",style: TextStyle(
                                      color: Color.fromARGB(255, 252, 231, 206),
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold  
                                      ),
                                      ),
                                    ),
                                  )
                                
                                ],
                              )
                            ),
                          ],
                        ),
                      )
                 
                    
                    ),
                    
                  ),
                  // Container(
                  //   child: 
                    
                  // ),
                               
                    
                ],
              ),
            ),
           
          ]
        )),
      ),
    );
  }
}