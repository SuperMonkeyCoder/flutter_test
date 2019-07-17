import 'package:flutter/material.dart';

class BottomNavigationBarDome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBarDomeState();
  }
}

class _BottomNavigationBarDomeState extends State<BottomNavigationBarDome>{
    int _currentIndex = 0;
  void _onTapHandler (int index){
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),title: Text('explor')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),title: Text('history')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),title: Text('list')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),title: Text('my')
            ),
          ],
        );
  }
}