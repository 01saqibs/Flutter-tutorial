import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/drawer.dart';
import 'package:flutter_tutorial/pages/sample_page.dart';
import 'package:flutter_tutorial/pages/widgets_page.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool isSelect = true;
  int selectedIndex = 0;

  List pages =[
    const WidgetPage(),
    const SamplePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Flutter Tutorial"),
      ),
      body: pages[selectedIndex],
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        overlayOpacity: 0.0,
        spacing: 2,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.favorite_rounded),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        onTap: (int index){
          setState(() {
            selectedIndex = index;
          });
        },
        currentIndex: selectedIndex,
        showUnselectedLabels: isSelect ? true : false,
        showSelectedLabels: isSelect ? false : true,
        selectedItemColor: Colors.white,
        unselectedIconTheme: const IconThemeData(size: 0, opacity: 0.0),
        selectedIconTheme: const IconThemeData(size: 30, opacity: 100),
        unselectedLabelStyle: const TextStyle(
          color: Colors.white,
        ),
        selectedLabelStyle: const TextStyle(
          color: Colors.transparent,
        ),
        items: const [
          BottomNavigationBarItem(
              label: "Widgets",
              icon: Icon(
                Icons.widgets_rounded,
              )),
          BottomNavigationBarItem(
              label: "Samples",
              icon: Icon(
               Icons.school,
              )),
        ],
      ),
    );
  }
}
