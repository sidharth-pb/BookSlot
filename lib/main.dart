import 'package:BookSlot/hospital.dart';
import 'package:BookSlot/hospitallist.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            home:Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                backgroundColor: Colors.teal[500],
                toolbarHeight: 40,
                actions: [
                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white38,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.notifications),
                      onPressed: (){
                        print('Button notification pressed');
                      },
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white38,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: (){
                        print('Button cart pressed');
                      },
                      color: Colors.black,
                    ),
                  )
                ],
                title: Text('BookMed',style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white38
                ),),
              ),
              drawer: Drawer(
                elevation: 10,
                child: ListView(
                 children: [
                   buildListTile('My Account'),
                   buildListTile('My Booking'),
                   buildListTile('My Orders'),
                   buildListTile('My Cart'),
                   buildListTile('My Notification'),
                   buildListTile('Settings'),
                   buildListTile('Help'),
                 ],
                ),
              ),
              body:SafeArea(
                child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildFlatButton('Slot Book'),
                          buildFlatButton('Medi Book')

                        ],
                      ),
                      SizedBox(height: 10,),
                      Hospital()


                    ],
                )
              )

            )

    );
  }
}

FlatButton buildFlatButton(String text,){
  return FlatButton(
    child: Text(text),
    shape: StadiumBorder(),
    color: Colors.pink[100],
    onPressed: (){
      print('flatbutton1 presssed');
    },
  );
}

ListTile buildListTile(String text){
  return ListTile(
      leading: IconButton(
          icon: Icon(Icons.person)
      ),
      title: Text(text,style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          fontFamily: 'Cinzel'
      ),),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward),
        onPressed: (){
          print("buttonpressed");
        },
      ),
    );
}


