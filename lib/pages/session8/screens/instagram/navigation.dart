import 'package:flutter/material.dart';
import 'package:widgets/pages/session8/screens/instagram/reel_body.dart';
import 'package:widgets/pages/session8/screens/table.dart';
import 'package:widgets/pages/session8/screens/my_data_table.dart';

class InstagramNavigation extends StatefulWidget {
  const InstagramNavigation({super.key});

  @override
  State<InstagramNavigation> createState() => _InstagramNavigationState();
}

class _InstagramNavigationState extends State<InstagramNavigation> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetsOptions = [
    ReelBody(),
    MyTable(),
    Text('2'),
    MyDataTable(),
    Text('4'),
    Text('5'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetsOptions.elementAt((_selectedIndex)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_in),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_circle,
              size: 38,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
