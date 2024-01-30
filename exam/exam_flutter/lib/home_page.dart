import 'package:exam_flutter/tabbar_example.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: AppBarContainer(
            titleString: 'home',
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kItemPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hi Guy! ',
                        style: TextStyles.defaultStyle.fontHeader.whiteTextColor.bold,
                      ),
                      const SizedBox(
                        height: kMediumPadding,
                      ),
                      Text(
                        'Where are you going next?',
                        style: TextStyles.defaultStyle.fontCaption.whiteTextColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            implementLeading: false,
            child: Column(
              children: [
                TextField(
                  enabled: true,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Search your destination',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        FontAwesomeIcons.magnifyingGlass,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          kItemPadding,
                        ),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: kItemPadding),
                  ),
                  style: TextStyles.defaultStyle,
                  onChanged: (value) {},
                  onSubmitted: (String submitValue) {},
                ),
                const SizedBox(
                  height: kDefaultPadding,
                ),
                const SizedBox(
                  height: kMediumPadding,
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ItemWidget( imagePath: 'assets/images/ico_hotel.png', backgroundColor: Color(0xFFE0A587),),
                      ItemWidget( imagePath: 'assets/images/ico_hotel_plane.png', backgroundColor: Color(0xFFA95E5E),),
                      ItemWidget( imagePath: 'assets/images/ico_plane.png', backgroundColor: Color(0xFF8FD9CF),),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Popular Destinations',
                      style: TextStyles.defaultStyle.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: kMediumPadding,
                ),
                Expanded(
                    child: CustomScrollView(
                      primary: false,
                      slivers: <Widget>[
                        SliverPadding(
                          padding: const EdgeInsets.all(0),
                          sliver: SliverGrid.count(
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            crossAxisCount: 2,
                            children: listImageLeft
                                .map(
                                  (e) => _buildImageHomScreen(
                                e['name']!,
                                e['image']!,
                              ),
                            ).toList(),
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}