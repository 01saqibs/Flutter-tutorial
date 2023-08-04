import 'package:flutter/material.dart';
import 'package:flutter_tutorial/utlits/list_of_tutorials.dart';

class DataCard extends StatefulWidget {
  const DataCard({Key? key, required this.name, required this.id}) : super(key: key);
  final String name;
  final int id;
  @override
  State<DataCard> createState() => _DataCardState();
}

class _DataCardState extends State<DataCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      padding: const EdgeInsets.fromLTRB(20, 10, 25, 10),
      height: MediaQuery.of(context).size.height*0.08, width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(widget.id.toString()),
              const SizedBox(width: 10,),
              Text(widget.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: (){
                setState(() {
                  isSelect =!isSelect;
                });
              }, icon: Icon(isSelect ? Icons.favorite_border_rounded : Icons.favorite_rounded, size: 25, color: Colors.red,)),
              const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.black38,),
            ],
          )
        ],
      ),
    );
  }
}
