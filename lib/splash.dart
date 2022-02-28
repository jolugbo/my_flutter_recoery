import 'package:flutter/material.dart';
import 'package:my_flutter_recovery/pages/walk_through.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
 _SplashState createState() => _SplashState();


}
class _SplashState extends State<Splash>{
  @override
  void initState(){
    super.initState();
    //pageRedirect();
  }
  void pageRedirect() async {
    await Future.delayed(Duration(microseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WalkThroughPage(title: 'We are home',)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(

          child:Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height:100,
                  width: 200,
                  color: Colors.blue,
              ),
              Container(
                  child: Text('Splash Screen',style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),)
              ),
            ],
          ))
    );
  }
}


