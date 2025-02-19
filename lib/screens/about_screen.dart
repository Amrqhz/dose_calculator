import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget{
  const AboutScreen ({super.key});

  @override
Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(
      child:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Builder(
                builder: (BuildContext context) => TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Back", style: TextStyle(fontSize: 16, color: Colors.black)),
                ),
              ),
            ),

            Image(
              image: AssetImage("assets/doctors.png")
            ),
            const SizedBox(height: 25),
            Text(" Our mission is to make pharmacist lives easier. \n Need more info? \n Contact us via any social network app by @amrqhz",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.telegram, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.email, size: 20),
                  SizedBox(width: 10),
                  Icon(Icons.share, size: 20),
                ],
              ),
            ),

      
      
          
            
            
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
          ],
        ),
      ),
    )
  );
}
}