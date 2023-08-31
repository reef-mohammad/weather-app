import 'package:flutter/material.dart';
import 'package:weather_app/componets/search_appbar_component.dart';
import 'package:weather_app/componets/search_bar_component.dart';
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
        child: Column(
          children: [
            SearchBarComponent(SearchEdintController: SearchEdintController),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, indext) {
                    return Container(
                      clipBehavior: Clip.antiAlias,
                      margin: EdgeInsets.all(8),
                      height: context.getHeight() * 0.18,
                      width: context.getWidth() - 30,
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "data",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "data data data",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 22),
                              ),
                              Text(
                                "32°",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 50),
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
