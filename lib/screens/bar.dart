import 'package:flutter/material.dart';
import 'package:roads_maintenance/screens/history.dart';
import 'package:roads_maintenance/screens/home.dart';


class Bar extends StatefulWidget {
  Bar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BarState createState() => _BarState();
}

class _BarState extends State<Bar> {

  var _selectedPageIndex;
  List<Widget> _pages;
  PageController _pageController;

  @override
  void initState(){
    super.initState();

    _selectedPageIndex = 0;

    _pages = [
      Home(),
      History()
    ];
    _pageController = PageController(initialPage: _selectedPageIndex);

  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text("Conservação de Rodovias"),
        centerTitle: true,
      ),
      body: PageView(
        onPageChanged: (selectedPageIndex){
          setState(() {
            _selectedPageIndex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },
          controller: _pageController,
          children: _pages
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Historico'
          ),
        ],
        selectedItemColor: Colors.purple,
        currentIndex: _selectedPageIndex,
        unselectedItemColor: Colors.grey,
        onTap: (selectedPageIndex){
          setState(() {
            _selectedPageIndex = selectedPageIndex;
            _pageController.jumpToPage(selectedPageIndex);
          });
        },

      ),
    );
  }
}
