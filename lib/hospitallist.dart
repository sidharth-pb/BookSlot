import 'package:flutter/material.dart';

class HospitalList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*(.86),
      child: GridView.count(
        physics: ScrollPhysics(),
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 100,
            width: 100,
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            height: 100,
            width: 100,
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            height: 100,
            width: 100,
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            height: 100,
            width: 100,
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            height: 100,
            width: 100,
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            height: 100,
            width: 100,
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),


        ],
      ),
    );
  }
}