import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopingScreen extends StatelessWidget {
  const ShopingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
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
              const SizedBox(height: 100),
              Text("در حال حاظر تنها اشتراک 1 ماهه در دسترس میباشد",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Text("مبلغ : 200 هزارتومان", textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async{
                final url = "https://x.com/amrqhz";
                if (await canLaunchUrl(Uri.parse(url))){
                  await launchUrl(Uri.parse(url));
                } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("unable to lunch")),
                    );
                  }
                },
                child: Text("X"),
              )
            ],
          ),
        )),
    );
  }
}