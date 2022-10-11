  import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
  import 'package:secondapp/FlutterToastExample.dart';
  import 'package:shared_preferences/shared_preferences.dart';


  class FlutterToastDemo extends StatefulWidget {

    @override
    State<FlutterToastDemo> createState() => _FlutterToastDemoState();
  }

  class _FlutterToastDemoState extends State<FlutterToastDemo> {
    @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("FaceBook",style: TextStyle(color: Colors.blue,fontSize: 30),),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Icon(Icons.search,color: Colors.blue,size: 30.0,),
                      ),
                      Icon(Icons.message,color: Colors.blue,size: 30.0, ),
                    ],
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.video_library_outlined,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.account_circle_rounded,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.doorbell,color: Colors.black,),
                ),
                Tab(
                  icon: Icon(Icons.settings,color: Colors.black,),
                ),
              ],
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 50,
                            child: Image.asset("img/facebook.jpg"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 250,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.0),
                              topRight: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                            ),
                            border: Border.all(color: Colors.black),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Column(
                                      children: [
                                        
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                       Icon(Icons.file_copy,size: 40,color: Colors.green,),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    GFButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      onPressed: (){},
                      text: "Reel",
                      icon: Icon(Icons.video_library_outlined,color: Colors.red,),
                    ),
                    GFButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      onPressed: (){},
                      text: "Room",
                      icon: Icon(Icons.airplay_rounded,color: Colors.purple,),
                    ),
                    GFButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      onPressed: (){},
                      text: "Group",
                      icon: Icon(Icons.group,color: Colors.blue,),
                    ),
                    GFButton(
                      textColor: Colors.black,
                      color: Colors.white,
                      onPressed: (){},
                      text: "Live",
                      icon: Icon(Icons.live_tv,color: Colors.red,),
                    ),
                  ],
                ),



                SizedBox(height: 100.0,),
                Container(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue)
                    ),
                    child: ElevatedButton(
                      onPressed: ()async{
                        SharedPreferences prefs = await SharedPreferences.getInstance();
                        prefs.clear();
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>FlutterToastExample())
                        );
                      },
                      child: Container(
                        width: 100,
                          child: Center(child: Text("Logout",style: TextStyle(fontSize: 20.0),))
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
