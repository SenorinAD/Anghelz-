import 'package:flutter/material.dart';
import 'package:subdisakayforreal/homeselection.dart';
import 'package:subdisakayforreal/loginscreen/login_page.dart';


void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashPage(duration: 5, goToPage: LoginScreen())
));

class SplashPage extends StatelessWidget {
  int duration = 0;
  Widget goToPage;

  SplashPage({required this.goToPage,required this.duration});


  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => this.goToPage)
      );
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/wallpaper3.png"),fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Ka-SHARE.png', height: 400,),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}





