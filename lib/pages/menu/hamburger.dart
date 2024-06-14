import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/menu/bencana/bencana.dart';
import 'package:geowaspada/pages/authenticate/login.dart';
// import 'package:geowaspada/pages/authenticate/register.dart';
import 'package:geowaspada/pages/authenticate/verifikasi/verifikasi2.dart';
import 'package:geowaspada/pages/menu/edukasi/education.dart';
import 'package:geowaspada/pages/menu/mitigasi/mitigasi.dart';
import 'package:geowaspada/widget/tombol.dart';
import 'package:geowaspada/widget/menu/menuButton.dart';

class hamburgerPage extends StatefulWidget {
  const hamburgerPage({super.key});

@override
  State<hamburgerPage> createState() => _hamburgerPageState();
}

  Color _currentColor = Colors.transparent;
  bool _isColorChanged = false;
  List<bool> _isColorChangedList = List.generate(5, (_) => false);
  



class _hamburgerPageState extends State<hamburgerPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController textField = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    
    void _changeColor(int index) {
      setState(() {
        _isColorChangedList[index] = true;
        _currentColor = Colors.orange.shade300;
      });
      Future.delayed(Duration(seconds: 1), () {
        setState(() {
          _isColorChangedList[index] = false;
          _currentColor = Colors.transparent;
        });
      });
  }
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[400],
      ),
      child: 
      ListView(
        children: [


        Padding(
         padding: const EdgeInsets.all(20),
         child:
         Column(
          children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        child:
                        TextButton(
                                onPressed:(){
                                  Navigator.pop(context);
                                },
                                child: Image.asset('assets/hamburger-icon.png',
                                height: 50,
                                width: 50,
                                )
                                )
                      ),
                      
                      Align(
                        child:
                        Image.asset(
                          "assets/icon-geo2.png",
                          color: Colors.white,
                          height:50,
                          width:50,
                        )
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Align(
                            child:
                            Container(
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                 shape: BoxShape.circle,
                                 image: DecorationImage(
                                  image: AssetImage("assets/ikn-background.png"),
                                 fit:BoxFit.cover
                                  ),
                              
                            )
                              
                              
                            ),
                            
                          ),
                          
                            Container(
                              margin: const EdgeInsets.only(left:10),
                              child:
                               Column(
                                children: [
                                Transform.translate(offset: Offset(0, 0),
                                child: 
                                     const Material(
                                      color: Colors.transparent,
                                      child: 
                                        DefaultTextStyle(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                        child: Text('Username'),
                                      )
                                      
                                     )
                                 ),
                                  Transform.translate(offset: const Offset(15, 5),
                                  child: 
                                 Container(
                                    
                                    child: 
                                    const Material(
                                      color: Colors.transparent,
                                      child: 
                                        DefaultTextStyle(
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                        child: Text('Nusantara, ID'),
                                      )
                                      
                                     )
                                    
                                  ),
                                  
                                  ),
                                ],
                              
                                
                            ),
                          
                          
                          ),
                          
                        ],
                      ),
                      
                      Align(
                        child:
                        Image.asset(
                          "assets/kmipn.png",
                          color: Colors.white,
                          height:55,
                          width:55,
                        )
                      ),
                    ],
                  ),

                SingleChildScrollView(
                  child:
                  
                Container(
                  margin: const EdgeInsets.only(top: 70),
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: 
                  Padding(padding: EdgeInsets.all(0),
                  child:
                  Container(
                    child: 
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          //  ===
                          //  Edukasi
                          //  === 
                            menuIcon(
                             onPressed: () {
                             _changeColor(0);
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => edukasiPage()),
                            );
                             } 
                             
                             ,
                             link: "assets/bottomNavigation/edukasi.png",
                             ukuran: 65,
                             cColor: _isColorChangedList[0] ? _currentColor : Colors.transparent ,
                              uText: 16,
                              nama: "Edukasi",
                               ),
                            
                            menuIcon(
                             onPressed: () {
                              _changeColor(1);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => bencanaPage()),
                                );

                             },
                             link: "assets/bottomNavigation/bencana.png",
                             ukuran: 65,
                             cColor: _isColorChangedList[1] ? _currentColor : Colors.transparent ,
                              uText: 16,
                              nama: "Bencana",
                               ),

                          ],
                        ),
                            menuIcon(
                             onPressed: () {
                              _changeColor(2);
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(builder: (context) => bencanaPage()),
                                // );

                             },
                             link: "assets/icon/feedback.png",
                             ukuran: 45,
                             cColor: _isColorChangedList[2] ? _currentColor : Colors.transparent ,
                              uText: 16,
                              nama: "Feedback",
                            ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              menuIcon(
                              onPressed: () {
                                _changeColor(3);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => dashboardPage()),
                                );

                             },
                                link: "assets/bottomNavigation/home.png",
                                ukuran: 65,
                                cColor: _isColorChangedList[3] ? _currentColor : Colors.transparent ,
                                uText: 16,
                                nama: "Home",
                               ),
                              
                              menuIcon(
                             onPressed: () {
                              _changeColor(4);
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => mitigasiPage()),
                              );

                             },
                                link: "assets/bottomNavigation/mitigasi.png",
                                ukuran: 65,
                                cColor: _isColorChangedList[4] ? _currentColor : Colors.transparent ,
                                uText: 16,
                                nama: "Mitigasi",
                               ),
                            ],
                          ),
                      ],
                    )
                  ),),
                )
                 )           

          ],
        )
                
                  ),
                    ],
      )

    );
  
  }

  
}