import 'package:flutter/material.dart';
import 'package:practical_exam_one/Homepage.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}
class SplashScreenState extends State<SplashScreen>{
  @override
  void initState() {
    // TODO: implement initStateD
    Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepage(),));
    },);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('Assates/Images/SplashScreen.jpg'),fit: BoxFit.fill,repeat: ImageRepeat.noRepeat),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 280),
            child: Column(
              children: [
                Image.asset('Assates/Images/logo.png',height: 150,width: 150,color: Colors.white,),
                Text('MovieAdda',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }

}