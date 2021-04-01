import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:practice_carousel/widget/nav-drawer.dart';

class HomePage extends StatefulWidget {
  HomePage() : super();
 
  final String title = "Link-fam.";
  @override
  _HomePageState createState() => _HomePageState();
}


 

class _HomePageState extends State<HomePage> {
  int _current = 0;
  TextEditingController typeController = TextEditingController();
  String showText ='歡迎你到Link_fam.';

  CarouselSlider carouselSlider;
  
  List imgList = [
    'assets/momcare1.jpeg',
    'assets/bottle-feeding1.jpeg',
    'assets/momcare3.jpeg',
    'assets/momcare4.jpeg',
    'assets/momcare5.webp'
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
    return Container(
      child: Scaffold(
        drawer: NavDrawer(),
        appBar: AppBar(
          title: Text('link_fam.'),
          backgroundColor: Colors.pink.shade50
        ),
        body: Container(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                carouselSlider = CarouselSlider(
                  options: CarouselOptions(
                    height: 400.0,
                    aspectRatio: 9/16,
                    viewportFraction: 0.8,
                    initialPage: 2,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    enlargeCenterPage: true,
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
                            child: Image.network(
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
            ),
          ),
        )
      );
    
  }

}