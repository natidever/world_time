import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class worldTime{
  String location;
  String  url;
  String  flag;
  String  time;
 bool? isDayTime;


worldTime({ required this.location,required this.url,required this.flag,required this.time});

  
  Future< void> getTime()async {
try{
  Uri apiURL=Uri.parse("http://worldtimeapi.org/api/timezone/$url");
  Response response =await get(apiURL);
  if(response.statusCode==200){



  Map timee=jsonDecode(response.body);
    String dateTime=timee['datetime'];
    String offset=timee['utc_offset'].substring(1,3);
    DateTime now=DateTime.parse(dateTime);
    now.add(Duration(hours: int.parse(offset)));

  

    time=DateFormat.jm().format(now);
    
  }
  else{
    print(response.statusCode);
  }

}
  catch(e){
    print('error $e');
  }




  }

}