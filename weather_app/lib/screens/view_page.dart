import 'package:flutter/material.dart';
import 'package:weather_app/componets/view_details_component.dart';


class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0Xff60B4E2),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0Xff60B4E2),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        ),
        body: ViewDetailsStackComponent(
          cityName: 'Riyadh ',
          imgUrl: 'https://icon-library.com/images/sunny-weather-icon/sunny-weather-icon-13.jpg',
          isDay: true,
          status: 'SUNNY',
          temp: '22', 
          localtime: "Mon june 17 | 10:00AM",

        ));
  }
}




