import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geowaspada/pages/menu/bencana/bencana.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/menu/edukasi/education.dart';
import 'package:geowaspada/pages/menu/hamburger.dart';
import 'package:geowaspada/pages/menu/mitigasi/mitigasi.dart';


Color _currentColor = Colors.transparent;
bool _isColorChanged = false;
List<bool> _isColorChangedList = List.generate(5, (_) => false);



class bottomNav extends StatelessWidget {

@override
  Widget build(BuildContext context) {
  
    return 
    Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menambahkan space di antara widget
            children: [
              Expanded(
                child: InkWell(    
                    highlightColor: Colors.transparent, // Untuk menghilangkan highlight saat ditekan
                    splashColor:  Colors.orange.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image.asset(
                          "assets/bottomNavigation/home.png",
                          height: 35,
                          color: Colors.black,
                        ),
                        SizedBox(height: 4.0), // Spasi antara ikon dan teks
                        Text(
                          'Home', // Ganti dengan teks yang Anda inginkan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ],
                      
                    ),
                    onTap: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => dashboardPage()),
                       );
                        
                    },
                  ),
              ),
              
              Expanded(
                child: InkWell(    
                    highlightColor: Colors.transparent, // Untuk menghilangkan highlight saat ditekan
                    splashColor:  Colors.orange.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image.asset(
                          "assets/bottomNavigation/bencana.png",
                          height: 35,
                          
                        ),
                        SizedBox(height: 4.0), // Spasi antara ikon dan teks
                        Text(
                          'Bencana', // Ganti dengan teks yang Anda inginkan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ],
                      
                    ),
                    onTap: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => bencanaPage()),
                       );
                        
                    },
                  ),
              ),
              
              Expanded(
                child: InkWell(    
                    highlightColor: Colors.transparent, // Untuk menghilangkan highlight saat ditekan
                    splashColor:  Colors.orange.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image.asset(
                          "assets/bottomNavigation/mitigasi.png",
                          height: 35,
                          
                        ),
                        SizedBox(height: 4.0), // Spasi antara ikon dan teks
                        Text(
                          'Mitigasi', // Ganti dengan teks yang Anda inginkan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ],
                      
                    ),
                    onTap: () {
                       Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => mitigasiPage()),
                       );
                        
                    },
                  ),
              ),
              
              Expanded(
                child: InkWell(    
                    highlightColor: Colors.transparent, // Untuk menghilangkan highlight saat ditekan
                    splashColor:  Colors.orange.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      
                      children: [
                        Image.asset(
                          "assets/bottomNavigation/edukasi.png",
                          height: 35,
                          color: Colors.black,
                        ),
                        SizedBox(height: 4.0), // Spasi antara ikon dan teks
                        Text(
                          'Edukasi', // Ganti dengan teks yang Anda inginkan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                      ],
                      
                    ),
                    onTap: () {
                      Navigator.push(
                         context,
                         MaterialPageRoute(builder: (context) => edukasiPage()),
                       );
                        
                    },
                  ),
              ),
            
            ],
          );


    
  }
}



//===
// NAVBAR
// ==
class navBar extends StatelessWidget {

@override
  Widget build(BuildContext context) {
    return  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Transform.scale(scale: 1.17,
                      child: 
                        Container(
                              margin: EdgeInsets.only(top:5),
                              alignment: Alignment.topLeft,
                              child: TextButton(
                                onPressed:(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => hamburgerPage()),
                                  );
                                },
                                child: Image.asset('assets/hamburger-icon.png',
                                )
                                )
                              ),

                      ),
                      
                        Container(
                              alignment: Alignment.center,
                              child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                "GeoWaspada IKN",
                                textAlign: TextAlign.center,
                                style:
                                  
                                    TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,),)
                                )),

                        Container(
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                "assets/icon-geo.png",
                                width: 50,
                                height: 50,
                                color: Colors.white,)
                              ),
                      
                    ],


                    
                  );
                    

  }
  }