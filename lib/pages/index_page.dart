import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'home_page.dart';
import 'category_page.dart';
import 'cart_page.dart';
import 'member_page.dart';



class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final List<BottomNavigationBarItem> bottomTabs=[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.home),
      label: '首頁',
      backgroundColor: Color.fromRGBO(255, 240, 245, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      label: '搜尋助手',
      backgroundColor: Color.fromRGBO(255, 240, 245, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.camera),
      label: ('直播'),
      backgroundColor: Color.fromRGBO(255, 240, 245, 1.0)
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      label: ('會員中心'),
      backgroundColor: Color.fromRGBO(255, 240, 245, 1.0)
    )
  ];

  final List tabBodies = [
    HomePage(),
    CategoryPage(),
    CartPage(),
    MemberPage()
  ];

  int currentIndex = 0;
  var currentPage;

  @override
    void initState() {
      currentPage=tabBodies[currentIndex];
      super.initState();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 245, 1.0),
      // backgroundColor: Color.fromRGBO(255, 182, 193, 1.0),
      bottomNavigationBar: BottomNavigationBar(
        type:BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        items: bottomTabs,
        onTap: (index){
          setState(() {
            currentIndex=index;
            currentPage=tabBodies[currentIndex];
          });
        },
      ),
      body: currentPage,
    );
  }
}