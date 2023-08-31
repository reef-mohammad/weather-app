import 'package:flutter/material.dart';
import 'package:weather_app/extensions/screen_size.dart';

class SearchBarComponent extends StatelessWidget {
  const SearchBarComponent({
    super.key,
    required this.SearchEdintController,
  });

  final TextEditingController SearchEdintController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: context.getHeight() * 0.07,
          width: context.getWidth() - 20,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: SearchEdintController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search for a city ...",
                hintStyle: TextStyle(fontSize: 18),
                suffixIcon: Container(
                  height: 20,
                  width: 15,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
