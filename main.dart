

import 'package:flutter/material.dart';
import 'package:kratin/health_brain.dart';
import 'package:kratin/solutionscreen.dart';

HealthBrain hb=new HealthBrain();

void main()=>runApp(KratinHome());

class KratinHome extends StatelessWidget {
  const KratinHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Live Healthy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20), )),
            backgroundColor: Colors.black
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: KratinPage(),
        ),backgroundColor: Colors.black,
        )
    );
  }
}


class KratinPage extends StatefulWidget {
  const KratinPage({ Key? key }) : super(key: key);

  @override
  _KratinPageState createState() => _KratinPageState();
}

class _KratinPageState extends State<KratinPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Expanded(
        flex: 5,
        child: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(child: Text(hb.GetIssue(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
      )),

      Expanded(child: Padding(
        padding: const EdgeInsets.all(15),
        child: FlatButton(onPressed: (){
          setState(() {

            hb.Healthyplan();
            int value=hb.nextIssue(1);

            if(value==99)
            {
                Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                return SolutionScreen();
                }
                ),
                );
            }

            if(hb.nextIssue==99)
           {
             hb.reset();
           }
            
          });
        },
         child: Text(hb.getChoice1(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
         color: Colors.green
         )
      )
      ),

      Expanded(child: Padding(
        padding: const EdgeInsets.all(15),
        child: FlatButton(onPressed: (){
          setState(() {
           int value= hb.nextIssue(2);
           if(value==99)
           {
             Navigator.push(context, MaterialPageRoute(builder: (context)
                {
                return SolutionScreen();
                }
                ),
                );
           }
           if(value==99)
           {
             hb.reset();
           }
          });
        },
         child: Text(hb.getChoice2(),style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
         color: Colors.red
         )
      ))
    ],);
  }
}