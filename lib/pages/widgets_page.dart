import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utlits/data_card.dart';
import 'package:flutter_tutorial/utlits/data_class.dart';
import 'package:flutter_tutorial/utlits/list_of_tutorials.dart';


class WidgetPage extends StatefulWidget {
  const WidgetPage({Key? key}) : super(key: key);

  @override
  State<WidgetPage> createState() => _WidgetPageState();
}

class _WidgetPageState extends State<WidgetPage> {
   int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          expandedHeight: 150,
          forceElevated: true,
          elevation: 3,
          pinned: true,
          flexibleSpace: Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/flutter.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text("Widgets",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (_, int index) {
            return GestureDetector(
              onTap: (){
                selectIndex = index;
                Navigator.push(context, MaterialPageRoute(builder: (context) => data[index].page!));
              },
                child: DataCard(name: data[index].name, id: data[index].id));
          },
          childCount: data.length,
        ))
      ],
    );
  }
}
