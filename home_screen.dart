import 'package:flutter/material.dart';
import 'package:bootcamp1/Tugas12/LoginScreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key?key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top:40),
          color: Colors.white,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lets Find!",
                    style: TextStyle(fontSize:30,fontWeight: FontWeight.w800 ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Your Dream Job",
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey)
                ),
                child: TextFormField(
                  decoration: InputDecoration.collapsed(hintText: "Search This Position")
                ),
              ),
              SizedBox(
                height: 20,
              ),
              jobs_item(context)
            ],
          ),
        ),
      ),
    );
  }
}
Container jobs_item(BuildContext context){
return Container(
  height: MediaQuery.of(context).size.height/2,
  child: GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10 ,
    mainAxisSpacing: 10,
    crossAxisCount: 2,
    children: <Widget>[],
      Container(
      padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
  color: Colors,
    borderRadius: BorderRadius.circular(10)
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      image.assets(
        "assets/img/gojek.png",
        height: 20,
        width: 20,
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        "Digital Marketing",
            style:LitleStyle(),
  ),
      SizedBox(height: 16,
      ),
      Text("1-13 years experience",
      style: subTitle(),
      ),
      SizedBox(
        height: 16,
      ),
      Row(
        children: [
          Text("FullTime",style: positionText(),
            ),
          SizedBox(
            width: 16,
          ),
          Text("Senior",
          style: positiontext(),),
        ],
      ),
    ],
  ),
  ),
  Container(
  padding: const EdgeInsets.all(8),
  decoration: BoxDecoration(
  color: Color (Colors.white70)
  borderRadius: BorderRadius.circular(10)
  ),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    image.asset(
  "assets/img/shopee.png",
  height: 20,
  width: 20,
  ),
  ],
  ),
  )
  ),
);
}