

import 'package:flutter/material.dart';
import 'package:kratin/main.dart';
import 'health_brain.dart';
import 'main.dart';
class SolutionScreen extends StatefulWidget {
  const SolutionScreen({ Key? key }) : super(key: key);


  @override
  _SolutionScreenState createState() => _SolutionScreenState();
}

class _SolutionScreenState extends State<SolutionScreen> {
  @override

 HealthBrain heal=HealthBrain();
  
 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Live Healthy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20), )),
            backgroundColor: Colors.black
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(heal.solution[0]),
                  
                  FlatButton(onPressed: (){
                    setState(() {
                      Navigator.pop(context);
                    });
                  }, child: Text('Back To Home Screen'),
                  color: Colors.red,
                  )
                  
                ],
              ),
          ),
        ),
        backgroundColor: Colors.black,
        ),
      );
  }
}