import 'package:flutter/material.dart';
import 'package:weather_app/componets/withear_status_component.dart';

class ViewDetailsStackComponent extends StatelessWidget {
  const ViewDetailsStackComponent(
      {super.key,
      required this.cityName,
      required this.status,
      required this.temp,
      required this.imgUrl,
      required this.isDay,
      required this.localtime});

  final String cityName;
  final String status;
  final String temp;
  final String imgUrl;
  final bool isDay;
  final String localtime;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          left: 30,
          child: Container(
              height: 120,
              width: 320,
              child:  Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "$cityName",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            color: Colors.white),
                      ),
                      const Icon(
                        Icons.room,
                        color: Colors.white,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "$temp°",
                        style: TextStyle(fontSize: 75, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 42),
                        child: Text(
                          "$status",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
        Positioned(
          top: 130,
          left: 55,
          child: Image.network(
            imgUrl,
            
            height: 250,
            width: 250,
          ),
        ),
         Positioned(
            top: 380,
            left: 90,
            child: Text(
              "$localtime",
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16),
            )),
         WithearStatusComponent(
           humidity: '18%',
          cloud: 'Mostly',
          windKph: '12',
         )
      ],
    );
  }
}