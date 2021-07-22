import 'package:BookSlot/hospital.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:BookSlot/branch.dart';

class Department extends StatelessWidget{
  final Widget image;
  Department(this.image);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child:Stack(
          children: [
            Container(
                width:MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.75,
                child:image),
            IconButton(
              padding: EdgeInsets.only(left:20,top: 20),
              icon: Icon(Icons.close),
              onPressed: (){
                Navigator.of(context).pop(MaterialPageRoute(builder: (context){
                  return Hospital();
                }));

              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.3,
                decoration: BoxDecoration(
                  color: Color(0xFFB9F6CA),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))

                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)) ,
                  child: GridView.count(
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      buildDepartment(context, Image.asset("images/physician.png",fit: BoxFit.fill,),"Physician","24"),
                      buildDepartment(context, Image.asset("images/pediatry.png",fit: BoxFit.fill,),"Pediatrician","10-4"),
                      buildDepartment(context, Image.asset("images/eurologist.jpg",fit: BoxFit.fill,),"Urologist","24"),
                      buildDepartment(context, Image.asset("images/gyncology.jpg",fit: BoxFit.fill,),"Gynecologist","10-4"),
                      buildDepartment(context, Image.asset("images/neuroligist.png",fit: BoxFit.fill,),"Neurologist","24"),
                      buildDepartment(context, Image.asset("images/oncology.png",fit: BoxFit.fill,),"Oncologist","10-4"),
                      buildDepartment(context, Image.asset("images/orthologist.png",fit: BoxFit.fill,),"Orthologist","24"),
                      buildDepartment(context, Image.asset("images/dentist.jpg",fit: BoxFit.fill,),"Dentist","10-4"),
                      ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

GestureDetector buildDepartment(BuildContext context, Widget image,String text,String text1){
  return GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Branch();
      }));
    },

    child:Container(
      width: MediaQuery.of(context).size.width/2,
      height: 250,
      color: Colors.teal,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 150,
              child: image,
            ),
          ),
          SizedBox(height: 5,),
          Text(text,style: TextStyle(
            fontFamily: 'Cinzel',
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
          ),),
          Row(
            children: [
              Icon(Icons.access_time),
              SizedBox(width:5),
              Text(text1,style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 10,
                color: Colors.red[600],
                fontStyle: FontStyle.italic,
              ),)
            ],
          ),],
      ),
    ),
  );
}