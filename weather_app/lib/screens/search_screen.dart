import 'package:flutter/material.dart';
import 'package:weather_app/componets/search_appbar_component.dart';
import 'package:weather_app/componets/search_bar_component.dart';
import 'package:weather_app/constants/spacings.dart';
import 'package:weather_app/extensions/screen_size.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController SearchEdintController = TextEditingController();

  @override
  void dispose() {
    SearchEdintController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchAppBarComponent(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SearchBarComponent(SearchEdintController: SearchEdintController),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, indext) {
                    return WeatherCardComponent(
                      bgColor: Colors.deepPurple,
                      cityName: 'London',
                      imgUrl:
                          'https://icon-library.com/images/sunny-weather-icon/sunny-weather-icon-13.jpg',
                      status: 'the weather is cloudy',
                      temp: '23',
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherCardComponent extends StatelessWidget {
  const WeatherCardComponent({
    super.key,
    required this.bgColor,
    required this.cityName,
    required this.status,
    required this.temp,
    required this.imgUrl,
  });

  final Color bgColor;
  final String cityName;
  final String status;
  final String temp;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.all(8),
      height: context.getHeight() * 0.18,
      width: context.getWidth() - 50,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cityName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  kVSpace16,
                  SizedBox(
                    width: 180,
                    child: Text(
                      status,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                  kVSpace8,
                  Expanded(
                    child: Text(
                      "${temp}°",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Image.network(
              imgUrl,
              // "https://icon-library.com/images/sunny-weather-icon/sunny-weather-icon-13.jpg",
              height: context.getHeight() * 0.17,
              width: context.getWidth() * 0.4,
            ),
          ],
        ),
      ),
    );
  }
}
