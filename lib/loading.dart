import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_time/WorldTime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {

  

  @override
  State<Loading> createState() => _LoadingState();
}

String  time='Loading';
class _LoadingState extends State<Loading> {


 void setUpWordTime  () async{

  WorldTime instance=WorldTime(location: 'AddisAbaba',url: 'Africa/Addis_Ababa',flag: 'getman',time: 'time');

  //  await instance.getTime();
  //  setState(() {
  //    time=instance.time;
  //  });
   try{
   // ignore: use_build_context_synchronously
   Navigator.pushReplacementNamed(context, '/',arguments:{
    'location':instance.location,
    'flag':instance.flag,
    'time':instance.time,
    'isDayTime':instance.isDayTime,
   });
   }
   catch(e){
    print("Error in loading $e");
   }
 }

@override
  void initState() {
    
    super.initState();
  setUpWordTime  () ;


  }
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.black,
      body:Center(
      child: SpinKitWave(
     color: Color.fromARGB(255, 32, 102, 167),
     size: 50.0,
)
      )
    
      
    );
  }
}