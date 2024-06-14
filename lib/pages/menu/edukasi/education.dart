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

class edukasiPage extends StatefulWidget {
  
  const edukasiPage({Key? key}) : super(key: key);
   

  @override
  State<edukasiPage> createState() => _edukasiPageState();
}

class _edukasiPageState extends State<edukasiPage> {
  @override
  Widget build(BuildContext context) {
    bool _isKeyboardVisible = false;
    // Get the width of the current screen
    _isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom != 0;

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
    
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _isKeyboardVisible ? null : 
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                Transform.translate(offset: Offset(10, -5),
                child: 
                  Container(
                    margin: EdgeInsets.only(right: 0),
                    height:5,
                    width: 80,
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
                        
                        Padding(padding: EdgeInsets.only(top:0,left:0,right:0),
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
                                       
                                  menuEdukasi(onTap: (){},
                                   url: "assets/ikn-background.png",
                                    uImage: 95,
                                     name: "Gempa Bumi",
                                      uFont: 12
                                      ),
                                  
                                  menuEdukasi(onTap: (){},
                                   url: "assets/ikn-background.png",
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
                                        menuEdukasi(onTap: (){},
                                        url: "assets/ikn-background.png",
                                          uImage: 95,
                                          name: "Tanah Longsor",
                                            uFont: 12
                                            ),
                                        
                                        menuEdukasi(onTap: (){},
                                        url: "assets/ikn-background.png",
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
                                                              menuEdukasi(onTap: (){},
                                                              url: "assets/ikn-background.png",
                                                                uImage: 95,
                                                                name: "Cuaca dan Badai",
                                                                  uFont: 12
                                                                  ),
                                                              
                                                              menuEdukasi(onTap: (){},
                                                              url: "assets/ikn-background.png",
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
                ),
               Transform.translate(offset: Offset(0, -50),
               child:
                Center(
                  child: 
                  Container(
                    height: 70,
                    width:double.infinity,
                    child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin:EdgeInsets.only(left:15),
                          height:45,
                          width: 270,
                          
                          child: 
                          TextField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hintText: "Ajukan pertanyaanmu",
                              hintStyle: TextStyle(
                                color: Colors.black38
                              ),
                              enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 1), // Warna border saat fokus
                              ),
                              focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.black, width: 2), // Warna border saat fokus
                              ),
                              
                              
                            ),
                          ),
                        ),
                        TextButton(onPressed: (){}, child: 
                          Container(
                            child: 
                            Image.asset("assets/icon/btn-send.png",
                            height: 50,
                            width:50)
                          )
                        )
                      ],
                    ),
                    
                  )
                ),
               ),
                
          ]
        )),
      ),
    );
  }
}