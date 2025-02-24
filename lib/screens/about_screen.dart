import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';


Future<void> _launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

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

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(" Our mission is to make pharmacist lives easier.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),
                  SizedBox(height: 100),
                  Text("Need more info? Contact us via \n @amrqhz",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      IconButton(
                        icon:  Icon(Icons.telegram, size: 20),
                        onPressed: () => _launchURL('https://t.me/amrqhz'),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.email, size: 20),
                        onPressed: () => _launchURL("https://x.com/amrqhz"),
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.share, size: 20),
                        onPressed: (){
                          Share.share("check out this awesome app: https://yourlink.com");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    )
  );
}
}