import 'package:flutter/material.dart';

class Branch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            //color: Color(0xFFB9F6CA),
          child: Container(
                    color: Color(0xFFB9F6CA),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      buildList(),
                      buildList()
                    ],
                  ),
                ),
              ),),);
  }
}

ListTile buildList(){
  return ListTile(
      leading: Icon(Icons.person),
  title: Text('Dr Mohan Rao'),
  subtitle: Text('MBBS,FRCS'),
  trailing: Icon(Icons.arrow_forward),
  );
}
