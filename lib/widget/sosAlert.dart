import 'package:flutter/material.dart';

class fireResqueDialog extends StatelessWidget {
  const fireResqueDialog({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
          
        ),
        child: 
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: 
              Icon(Icons.fire_extinguisher,
              color: Colors.red,
              size: 80,
              ),
            ),
            Container(
              child: 
              Text("Fire Resque",style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Container(
              child: 
              Text("Pesan S.O.S akan dikirimkan kepada pihak pemadan kebakaran terdekat",style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
              ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    
                      width: 150,
                      child:
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        },child: 
                        Text("Batalkan S.O.S",style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),)
                        
                        ,) 
                          ),
                
                Container(
                      height: 40,
                      width: 150,
                      child:
                        ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => dashboardPage()),
                              // );
                            },
                            child: Text("Mengerti",
                              style: TextStyle(
                                color: Colors.white
                              ),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange.shade600,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                            
                          ),
                ],
            )
          ],

        ),
      ),
    );
    
  }
}


class hospitalDialog extends StatelessWidget {
  const hospitalDialog({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
          
        ),
        child: 
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              child: 
              Icon(Icons.local_hospital,
              color: Colors.blue.shade200,
              size: 75,
              ),
            ),
            Container(
              child: 
              Text("Hospital Resque",style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
            ),
            Container(
              child: 
              Text("Pesan S.O.S akan dikirimkan kepada pihak rumah sakit terdekat",style: TextStyle(
                color: Colors.black45,
                fontSize: 12,
              ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    
                      width: 150,
                      child:
                        TextButton(onPressed: (){
                          Navigator.of(context).pop();
                        },child: 
                        Text("Batalkan S.O.S",style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),)
                        
                        ,) 
                          ),
                
                Container(
                      height: 40,
                      width: 150,
                      child:
                        ElevatedButton(
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => dashboardPage()),
                              // );
                            },
                            child: Text("Mengerti",
                              style: TextStyle(
                                color: Colors.white
                              ),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange.shade600,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                              ),
                            ),
                            
                          ),
                ],
            )
          ],

        ),
      ),
    );
    
  }
}
