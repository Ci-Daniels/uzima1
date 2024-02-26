import 'package:flutter/material.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uzima1/loginPage_widget.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: 'https://homkcqjabluridvdpekp.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImhvbWtjcWphYmx1cmlkdmRwZWtwIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTgwNjkxMTAsImV4cCI6MjAxMzY0NTExMH0.gAhjdme1trso21k8NRcdgWMHvWkXicX53zvm84vpAWI',
   );
  runApp(const Uzima1());
}

final supabase = Supabase.instance.client;

class Uzima1 extends StatelessWidget {
  const Uzima1({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily
    ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
        routes: const <String, WidgetBuilder>{
            // '/login': (_) => const LoginPage(),   
        // '/account':(_) => const AccountPage(),
        // '/patient': (context) => const RegisterPatient(),
       // '/dashboard': (context) => Dashboard(),
      },
      home: Scaffold(  
        body: Container(        
          decoration:const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Color(0X001A1F24),Color(0X00101213),
                              Color(0X00101213),Color(0X001A1F24),
                        ],
                  ),
                ),  
          //backgroundColor: const Color.fromARGB(255, 173, 105, 128),
         child: const SplashPage()),
    )
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Center(
        child: SingleChildScrollView(      
            child: Column(children: <Widget>[
            Image.asset(
             'assets/images/qualia_logo.png',
              height: 300,
              width: 300,
              alignment: Alignment.center,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                textAlign: TextAlign.center,
                "Welcome to",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                textScaleFactor: 3,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              textAlign: TextAlign.center,
              "Uzima 1",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              textScaleFactor: 4, 
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.circular(20), 
                                  ),
                  backgroundColor: const Color(0X009489F5),
                  padding: const EdgeInsets.only(left: 40, top: 10,right: 40, bottom:10)),
                child: const Text('Get Started'),
               onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                     // builder: (context) => const Wrapper()),
                     builder: ((context) => const LoginPageWidget()),
                ));
              },
            ),
            ]),
        ),
      ),
   );
     }
}


