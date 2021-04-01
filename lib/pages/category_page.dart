import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practice_carousel/widget/nav-drawer.dart';

class CategoryPage extends StatelessWidget {
  int _current = 0;
  CarouselSlider carouselSlider;
  
  List imgList = [
    'assets/mom/mom1.jpg',
    'assets/mom/mom2.jpg',
    'assets/mom/mom3.jpg',
    'assets/mom/mom4.jpg',
    'assets/mom/mom5.jpg',
    'assets/mom/mom6.jpg',
    'assets/mom/mom7.jpg',
  ];

  
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  int _selectedIndex = 0;
  // void _onItemTap(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
          title: Text('link-fam.'),
          backgroundColor: Colors.pink.shade50
          ),
      body:
        Container(
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  carouselSlider = CarouselSlider(
                    options: CarouselOptions(
                    height: 400.0,
                    aspectRatio: 9/16,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    reverse: false,
                    enableInfiniteScroll: true,
                    
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 2000),
                    pauseAutoPlayOnTouch: true,
                    scrollDirection: Axis.horizontal,
                    // onPageChanged: (index) {
                    //   setState(() {
                    //     _current = index;
                    //   });
                    // },
                    ),
                    items: imgList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width*0.8,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(12)),
                              color: Colors.white,
                            ),
                            child: Image.asset(
                              imgUrl,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index ? Colors.blueGrey : Colors.grey,
                        ),
                      );
                    }),
                  ),  
                ],
              )
            )
      );
  }
}