import 'package:flutter/material.dart';
import 'package:BookSlot/department.dart';

class Hospital extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height*(3/4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200],
            spreadRadius: 1,
            blurRadius: 15,
          ),]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)) ,
          child: GridView.count(
                crossAxisCount: 2,
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  buildHospital(context, Image.asset("images/hospital1.jpg",fit: BoxFit.fill,),"A Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital2.jpg",fit: BoxFit.fill,),"B Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital6.jpg",fit: BoxFit.fill,),"C Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital4.jpg",fit: BoxFit.fill,),"D Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital5.jpg",fit: BoxFit.fill,),"E Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital6.jpg",fit: BoxFit.fill,),"F Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital1.jpg",fit: BoxFit.fill,),"A Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital2.jpg",fit: BoxFit.fill,),"B Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital6.jpg",fit: BoxFit.fill,),"C Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital4.jpg",fit: BoxFit.fill,),"D Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital5.jpg",fit: BoxFit.fill,),"E Hospital","24 Hours"),
                  buildHospital(context, Image.asset("images/hospital6.jpg",fit: BoxFit.fill,),"F Hospital","24 Hours"),



                ],
              ),
        ),

        ),


    );
  }
}

GestureDetector buildHospital(BuildContext context, Widget image,String text,String text1){
  return GestureDetector(
    onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Department(image);
      }));
    },
    child:Container(
      width: MediaQuery.of(context).size.width/2,
      height: 250,
      color: Color(0xFFB9F6CA),
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