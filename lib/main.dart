import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AlertLoop",
      home: new HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: getAppbar(),
          body: getBody(),
          bottomNavigationBar: getBottomAppBar(),
        )
    );
  }
}

AppBar getAppbar() {
  return AppBar(
    title: Text("JJam_Routine", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400)),
    backgroundColor: Colors.lightBlue.shade200,
  );
}
GridView getBody() {
  return GridView.builder(
      shrinkWrap: true,
      itemCount: 2,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, index) {
        return makeButton(context, index);
      }
  );
}
BottomAppBar getBottomAppBar() {
  return BottomAppBar(
      height: 60,
      child: Center(
          child: Column(
            children: [
              Text("Made by JJam", style: TextStyle(fontSize:14),),
              Text("Github: JJamJun", style: TextStyle(fontSize: 9),)
            ],
          )
      )
  );
}
Container makeButton(context, int index){
  return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Flexible(
              flex: 9,
              fit: FlexFit.loose,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue.shade100,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  fixedSize: Size(250, 250),
                ),
                onPressed: () => functionName[index](context),
                child: iconArray[index],
              )
          ),
          Flexible(
              flex:0,
              fit: FlexFit.tight,
              child: Text(buttonName[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
          )
        ],
      )
  );

}

final functionName = <Function> [(context) => { Navigator.push(context, MaterialPageRoute(builder: (context) => const SetupAlert()))},
      (context) => { Navigator.push(context, MaterialPageRoute(builder: (context) => const AlertList()))}];
final buttonName = <String> ["알림 설정", "알림 리스트"];
final iconArray = <Icon> [Icon(Icons.access_time, size: 100, color: Colors.white),
  Icon(Icons.edit_note, size: 100, color: Colors.white)];

class SetupAlert extends StatelessWidget {
  const SetupAlert({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("알림 설정하기"),
        ),
        body: Column(
          children: [
          ],
        )
    );
  }
}

class AlertList extends StatelessWidget {
  const AlertList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("알람 리스트"),
        ),
        body: ListView(
          children: [
          ],
        )
    );
  }
}






