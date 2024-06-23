import 'package:flutter/material.dart';

class SingleProfileViewer extends StatefulWidget {
  const SingleProfileViewer({super.key});

  @override
  State<SingleProfileViewer> createState() => _SingleProfileViewerState();
}

class _SingleProfileViewerState extends State<SingleProfileViewer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: const EdgeInsets.all(15.0),
      height: 400,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Row(
            children: [Text("name : "), Text("Manam")],
          ),
          Row(
            children: [Text("name : "), Text("Manam")],
          ),
          Row(
            children: [Text("name : "), Text("Manam")],
          )
        ],
      ),
    );
  }
}
