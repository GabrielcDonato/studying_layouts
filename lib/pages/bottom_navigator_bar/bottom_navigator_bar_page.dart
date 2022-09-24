import 'package:flutter/material.dart';
import 'package:studying_layout/pages/bottom_navigator_bar/page1.dart';
import 'package:studying_layout/pages/bottom_navigator_bar/page2.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  const BottomNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigatorBarPage"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 15,
        backgroundColor: Colors.lightGreen,
        currentIndex: indice,
        onTap: (index) {
          setState(() {
            indice = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Pagina 1",
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            label: "Pagina 2",
            icon: Icon(Icons.ac_unit),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}
