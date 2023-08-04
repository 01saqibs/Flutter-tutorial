import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

bool isSelect = true;
int selectedIndex = 0;

class MaterialAppTut extends StatefulWidget {
  const MaterialAppTut({Key? key}) : super(key: key);
  @override
  State<MaterialAppTut> createState() => _MaterialAppTutState();


}

class _MaterialAppTutState extends State<MaterialAppTut> {
  String text = "";
  Future<String> loadAsset(BuildContext context) async {
     var response = await DefaultAssetBundle.of(context).loadString('assets/doc/doc.txt');

    // setState(() => text = response.toString());
    return response.toString();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    loadAsset(context);
    return FutureBuilder(
        future: loadAsset(context),
        builder: (context, data) {
          final caption = data.data ?? "None";
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              elevation: 0,
              title: const Text("Material App"),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(onPressed: (){
                    showDialog(context: context, builder: (context) => AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      title: const Text("Material App"),
                      content: Text(caption),
                    ));
                  }, icon: const Icon(Icons.info_outline)),
                )
              ],
            ),
            body: Container(
              padding: const EdgeInsets.all(25),
              child: Scaffold(
                appBar: AppBar(
                  title: const Text("Material App Tutorial"),
                  centerTitle: true,
                ),
                body: Container(
                  color: Colors.white,
                  child: const Text("This is just Demo"),
                ),
              ),
            ),
            bottomNavigationBar: const CustomNavBar(),
          );
    });
  }
}



class ScaffoldTut extends StatelessWidget {
  const ScaffoldTut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Flutter Tutorial"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Scaffold"),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            child: const Text("This is just Demo"),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

class AppBarTut extends StatelessWidget {
  const AppBarTut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("Flutter Tutorial"),
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        child: Scaffold(
          appBar: AppBar(
            title: const Text("App Bar"),
            centerTitle: true,
          ),
          body: Container(
            color: Colors.white,
            child: const Text("This is just Demo"),
          ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}


// Botton nav bar

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      onTap: (int index){
        selectedIndex = index;
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
    );
  }
}


