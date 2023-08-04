import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utlits/data_class.dart';
import 'package:flutter_tutorial/utlits/sample_cards.dart';

class SamplePage extends StatelessWidget {
  const SamplePage({Key? key}) : super(key: key);

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
                  width: 25, height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/flutter.png"), fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(width: 15,),
                const Text("Widgets",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate(
              (_, int index) {
            return SampleCard(name: data[index].name);
          },
          childCount: data.length,
        ))
      ],
    );
  }
}
