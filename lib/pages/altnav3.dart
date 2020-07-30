import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

class AltNav3Page extends StatefulWidget {
  @override
  _AltNav3PageState createState() => _AltNav3PageState();
}

class _AltNav3PageState extends State<AltNav3Page> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alt Nav 3")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(color: Colors.blueGrey,),
            Container(color: Colors.red,),
            Container(color: Colors.green,),
            Container(color: Colors.blue,),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              title: Text('Sayfa 1'),
              icon: Icon(Icons.home)
          ),
          BottomNavyBarItem(
              title: Text('Sayfa 2'),
              icon: Icon(Icons.apps)
          ),
          BottomNavyBarItem(
              title: Text('Sayfa 3'),
              icon: Icon(Icons.chat_bubble)
          ),
          BottomNavyBarItem(
              title: Text('Sayfa 4'),
              icon: Icon(Icons.settings)
          ),
        ],
      ),
    );
  }
}