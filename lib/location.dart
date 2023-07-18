import 'package:flutter/material.dart';
import 'package:world_time/worldTime.dart';


class Location extends StatefulWidget {
  

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
   List<WorldTime> locations=[
     WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png',time: 'time'),
    WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png',time: 'time'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png',time: 'time'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png',time: 'time'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png',time: 'time'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png',time: 'time'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png',time: 'time'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia',time: 'time'),
  ];
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 112, 226),
        title: Text('Choose location'),                                                 
      ),
        body:ListView.builder(
          itemCount: locations.length,
          itemBuilder: (BuildContext context,int index)
          { return Card(
            child: ListTile(
              onTap: (){},
              title:Text(locations[index].location),
            ),
          );


          })

    );
  }
}
