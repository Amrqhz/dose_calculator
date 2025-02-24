import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 15), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("./assets/cal.png"),
              SizedBox(height: 20),
              Text("QUICK DOSE", style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),),
              const SizedBox(height: 80,),
              Positioned(
                bottom: 80,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,

                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, "/login");

                      },
                      child: const Text("Skip",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    )    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
