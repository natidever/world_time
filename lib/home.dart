import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
Map data={};
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    try{
    data= ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
    String bgImage=data['Daytime']? 'day.jpg':'night.jpg';
    }
    catch(e){
      print("Error found $e");

    }
    return Scaffold(
      body: SafeArea(

        child: Container(
    decoration: BoxDecoration(
      image: DecorationImage(
      
        image: AssetImage('lib/images/night.jpg'),
        fit: BoxFit.cover),
  
    ),
          child: Padding(
      
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                  onPressed: (){ Navigator.pushNamed(context, '/location');},
                   icon:  Icon(
                    Icons.edit_location,
                    color: Colors.grey[300],), 
                   label:  Text(
                    'Choose loaction',
                    style: TextStyle(color: Colors.grey[300]),)
                  ),
                  SizedBox(height: 30.0),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 25.0,
                          letterSpacing: 1.5,
                          color:Colors.grey[300]
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66,
                      color:Colors.white,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}