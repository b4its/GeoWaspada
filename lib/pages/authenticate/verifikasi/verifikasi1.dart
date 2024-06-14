import 'package:flutter/material.dart';
import 'package:geowaspada/pages/dashboard.dart';
import 'package:geowaspada/pages/authenticate/login.dart';
// import 'package:geowaspada/pages/authenticate/register.dart';
import 'package:geowaspada/pages/authenticate/verifikasi/verifikasi2.dart';

class verificationPage extends StatefulWidget {
  const verificationPage({super.key});

@override
  State<verificationPage> createState() => _verificationPageState();
}




class _verificationPageState extends State<verificationPage> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController textField = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange[300],
        image: DecorationImage(
          image: const AssetImage("assets/ikn-background.png"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.3), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Container(
          color: Colors.transparent,
          child: 
          Column(
            children: [
                Container(
                  alignment: Alignment.center,
                  child:
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(7),
                        child:
                        Column(
                          children: [
                            Container(
                              child: 
                              Image.asset(
                                "assets/icon-geo2.png",
                                height: 150,
                                width: 150,
                                color: Colors.white,
                                
                              ),
                          ),
                            Container(
                              child: 
                              Text("GeoWaspada IKN",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                              ))
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 35),
                            height:50,
                            width:240,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade600,
                              borderRadius: BorderRadius.circular(9)
                            ),
                            child: 
                              Text("Verifikasi Nomor",style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),)
                          ),
                          Transform.translate(offset: Offset(0, -5),
                          child: 
                            Container(
                              height:270,
                              width:440,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child:
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left:20,top:20),
                                      child: 
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(top: 12),
                                              child: 
                                                Icon(
                                                  Icons.call,
                                                  color: Colors.black,
                                                  size: 25,
                                                ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left:10),
                                              
                                              width: 270,
                                              child:
                                                Expanded(
                                                child: 
                                                TextField(
                                                  controller: textField,
                                                  decoration: InputDecoration(
                                                    labelText: 'Nomor Whatsapp',
                                                    hintText: 'Masukkan nomor whatsapp yang aktif', hintStyle: TextStyle(
                                                      fontSize: 14
                                                    ),
                                                    labelStyle: TextStyle(color: Colors.black), // Mengatur warna label
                                                    enabledBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.black, width: 1), // Warna border saat fokus
                                                    ),
                                                    focusedBorder: UnderlineInputBorder(
                                                      borderSide: BorderSide(color: Colors.black, width: 2), // Warna border saat fokus
                                                    ),
                                                  ),
                                                ),

                                              ),
                                            )
                                            
                                          ],
                                        )
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 25),
                                      width: 150,
                                      child:
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => verificationPage2()),
                                              );
                                            },
                                            child: Text("Submit",
                                              style: TextStyle(
                                                color: Colors.white
                                              ),),
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.orange.shade500,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                ),
                                              ),
                                            ),
                                            
                                          ),
                                          
                                          Container(
                                            margin: EdgeInsets.only(top: 15),
                                            alignment: Alignment.center,
                                            child:
                                            Align(
                                              alignment: Alignment.center,
                                              child:
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text("sudah memiliki akun?, silahkan",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15
                                                    ),
                                                    ),
                                                    Transform.translate(
                                                      offset: Offset(-8, 0),
                                                      child: 
                                                      TextButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(builder: (context) => loginPage()),
                                                        );
                                                      }, 
                                                      child: 
                                                      Text("login",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold
                                                      ),)
                                                      )

                                                    )
                                                    
                                                ],
                                              )
                                            ),
                                              
                                          ),
                                          Transform.translate(offset: Offset(0, -10),
                                            child: 
                                              Container(
                                                alignment: Alignment.center,
                                                child:
                                                Align(
                                                  alignment: Alignment.center,
                                                  child:
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text("tidak ingin login?, silahkan",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15
                                                        ),
                                                        ),
                                                        Transform.translate(
                                                          offset: Offset(-8, 0),
                                                          child: 
                                                          TextButton(
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(builder: (context) => dashboardPage()),
                                                            );
                                                          }, 
                                                          child: 
                                                          Text("masuk",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                            fontWeight: FontWeight.bold
                                                          ),)
                                                          )

                                                        )
                                                        
                                                    ],
                                                  )
                                                ),
                                                  
                                              ),
                                            ),
                                          
                                   
                                    
                                  ],
                                )
                                  
                              
                            ),
                          ),
                          
                        ],
                        )
                          
                        ),
                      
                    ],
                  )
                    
                  ),
                
            ],
          )
          
          
        )
      ),
    );
  }

  
}