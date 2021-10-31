
import 'package:flutter/material.dart';
import 'package:kratin/health_question.dart';

class HealthBrain
{
  int _queNum=0;
  List<String> solution=[];
  List<Health_question> _healthdata=[
    Health_question('Have some headAche','yes','no','Do meditation for 30-40 min and take a healthy during Day time'),
    Health_question('Have some stomachAche','yes','no','Eat food consisting of fiber like pulse,Dal'),
    Health_question('Have some BackPain','yes','no','Do excercise and Stretching'),
    Health_question('Have some Constipation','yes','no','Drink a lot of Water and eat food consisting of fiber'),
    Health_question('Have some vision Impairment','yes','no','Try to go for morning walk on the grass without slippers and include Kiwi in your diet')
  ];


  
  String GetIssue()
  {
    return _healthdata[_queNum].issue;
  }

  String getChoice1()
  {
    return _healthdata[_queNum].choice1;
  }

  String getChoice2()
  {
    return _healthdata[_queNum].choice2;
  }

  

  void Healthyplan()
  {
      solution.add(_healthdata[_queNum].sol);
      print(solution);
  }

  void reset()
  {
    _queNum=0;
    solution.clear();

  }

  int nextIssue(int choice)
  {
    if(choice==1)
    {
      if(_queNum<_healthdata.length-1)
      {
      _queNum++;
      return 0;
      }
      else
      {
        return 99;
      }
    }
    else
    {
   
    if(_queNum<_healthdata.length-1)
      {
      _queNum++;
      return 0;
      }
      else
      {
        return 99;
      }
    }

  }
}