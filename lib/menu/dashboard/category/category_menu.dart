import 'package:ardin/menu/header/header.dart';
import 'package:ardin/utility/constant.dart';
import 'package:ardin/utility/data/place_dummy.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CategoryMenus extends StatefulWidget {
  const CategoryMenus({Key? key}) : super(key: key);

  @override
  _CategoryMenusState createState() => _CategoryMenusState();
}

class _CategoryMenusState extends State<CategoryMenus> {
  int _currentIndex = 0;
  List cardList = [
    AspectRatio(
      aspectRatio: 5.5 / 3,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        height: 200,
        width: 100,
      ),
    ),
    AspectRatio(
      aspectRatio: 5.5 / 3,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        height: 200,
        width: 100,
      ),
    ),
    AspectRatio(
      aspectRatio: 5.5 / 3,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        height: 200,
        width: 100,
      ),
    ),
    AspectRatio(
      aspectRatio: 5.5 / 3,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        height: 200,
        width: 100,
      ),
    ),
    AspectRatio(
      aspectRatio: 5.5 / 3,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        height: 200,
        width: 100,
      ),
    ),
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          // bottomNavigationBar: BottomNavBar(
          //   activeIndex: Index,
          // ),
          body: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const Header(),
                Flexible(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Popular Place",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AspectRatio(
                          aspectRatio: 5.5 / 3,
                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 10),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              pauseAutoPlayOnTouch: true,
                              aspectRatio: 5.5 / 3,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  _currentIndex = index;
                                });
                              },
                            ),
                            items: cardList.map((card) {
                              return Builder(builder: (BuildContext context) {
                                return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.30,
                                  width: MediaQuery.of(context).size.width,
                                  child: Card(
                                    color: Colors.grey,
                                    child: card,
                                  ),
                                );
                              });
                            }).toList(),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: map<Widget>(cardList, (index, url) {
                            return Container(
                              width: 10.0,
                              height: 10.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 2.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _currentIndex == index
                                    ? Colors.blueAccent
                                    : Colors.grey,
                              ),
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "List of Place",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          // cacheExtent: 100,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: PlaceContent.length,
                          itemBuilder: (context, index) {
                            return listCard(
                              PlaceContent[index],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column listCard(PlaceData Data) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 9 / 3,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            // height: 150,
            child: Stack(
              children: [
                Container(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        Data.title.toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        Data.location.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
