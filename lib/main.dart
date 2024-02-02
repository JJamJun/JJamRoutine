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
        if (index == 0){
          return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    width: 250, height: 250,
                    child: Flexible(
                        flex: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade100,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (context) => const SetupAlert()))},
                          child: Text(""),
                        )
                    )
                ),
                Flexible(
                    flex:2,
                    child: Text("알림 설정", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
                )
              ],
            ),
          );
        }
        else if ( index == 1 ) {
          return Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    width: 250, height: 250,
                    child: Flexible(
                        flex: 8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue.shade100,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                          ),
                          onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (context) => const AlertList()))},
                          child: Text(""),
                        )
                    )
                ),
                Flexible(
                    flex:2,
                    child: Text("알림 리스트", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
                )
              ],
            ),
          );
        }
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
              Text("meeso0601@naver.com", style: TextStyle(fontSize: 8),)
            ],
          )
      )
  );
}

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
