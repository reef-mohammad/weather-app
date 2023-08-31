import 'package:flutter/material.dart';
import 'package:weather_app/componets/search_appbar_component.dart';
import 'package:weather_app/componets/search_bar_component.dart';
import 'package:weather_app/componets/weather_card_component.dart';
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
                      bgMColor: Colors.yellow[600],
                      cityName: 'London',
                      imgUrl:
                          'https://icon-library.com/images/sunny-weather-icon/sunny-weather-icon-13.jpg',
                      status: 'the weather is cloudy',
                      temp: '23',
                      isDay: true,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// this is the weather card
