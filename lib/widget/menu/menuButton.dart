import 'package:flutter/material.dart';

Color _currentColor = Colors.transparent;
bool _isColorChanged = false;
List<bool> _isColorChangedList = List.generate(5, (_) => false);



class menuIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color cColor;
  final String link;
  final double ukuran;
  final double uText;
  final String nama;

  const menuIcon({
    required this.onPressed,
    required this.cColor,
    required this.link,
    required this.ukuran,
    required this.uText,
    required this.nama,
  });
  

@override
  Widget build(BuildContext context) {
  
    return 
    
    
    Padding(padding: EdgeInsets.all(20),
    child:
    GestureDetector(
                            onTap:onPressed,
                            
                            child:
                            AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                color: cColor,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              alignment: Alignment.center,
                              
                              child: 
                              Container(
                                width: 100,
                              child: 
                                Column(
                                  children: [
                                    Image.asset(
                                    link,
                                    height: ukuran,
                                  ),
                                    Material(
                                      color: Colors.transparent,
                                      child: 
                                        DefaultTextStyle(
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: uText,
                                          fontWeight: FontWeight.bold),
                                        child: Text(nama),
                                      )
                                      
                                     )
                                  ],
                                )
                                  
                              
                            ),
                            ),
                            ) 
    );
  }
}
  

class menuBencana extends StatelessWidget {
  final VoidCallback onTap;
  final String url;
  final double uImage;
  final String name;
  final double uFont;
  

  const menuBencana({
    required this.onTap,
    required this.url,
    required this.uImage,
    required this.name,
    required this.uFont,

  });
  

@override
  Widget build(BuildContext context) {
    
    return 
    
    
    Padding(padding: EdgeInsets.all(20),
    child:
    TextButton(onPressed: onTap,
                                  child:
                                  Container(
                                    child:
                                    Padding(padding: EdgeInsets.only(top:0),
                                    child:
                                    
                                        Column(
                                        children: [
                                          Image.asset(url,
                                          height: uImage,
                                          width: uImage,
                                          ),
                                           Text(name, style: TextStyle(
                                            fontSize: uFont,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                          ),
                                          )
                                        ],
                                      ),
                                
                                      
                                      
                                    
                                    ),
                                      
                                  ),
                                  
                                  
                                  ),
                               
    );
  }
}


class menuEdukasi extends StatelessWidget {
  final VoidCallback onTap;
  final String url;
  final double uImage;
  final String name;
  final double uFont;
  

  const menuEdukasi({
    required this.onTap,
    required this.url,
    required this.uImage,
    required this.name,
    required this.uFont,

  });
  

@override
  Widget build(BuildContext context) {
    
    return 
    
    
    Padding(padding: EdgeInsets.all(20),
    child:
    TextButton(onPressed: onTap,
                                  child:
                                  Container(
                                    child:
                                    
                                    
                                        Column(
                                        children: [
                                          Image.asset(url,
                                          height: uImage,
                                          width: uImage,
                                          ),
                                           Text(name, style: TextStyle(
                                            fontSize: uFont,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                          ),
                                          )
                                        ],
                                      ),
                                
                                      
                                      
                                    
                                    
                                      
                                  ),
                                  
                                  
                                  ),
                               
    );
  }
}
