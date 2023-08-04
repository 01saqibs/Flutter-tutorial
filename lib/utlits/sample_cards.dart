import 'package:flutter/material.dart';

class SampleCard extends StatefulWidget {
  const SampleCard({Key? key, required this.name}) : super(key: key);

  final String name;
  @override
  State<SampleCard> createState() => _SampleCardState();
}

class _SampleCardState extends State<SampleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: MediaQuery.of(context).size.height*0.10, width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          const Icon(Icons.arrow_forward_ios, size: 20, color: Colors.black38,)
        ],
      ),
    );
  }
}
