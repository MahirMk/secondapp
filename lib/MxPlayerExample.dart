import 'package:flutter/material.dart';
class MxPlayerExample extends StatefulWidget {
  @override
  State<MxPlayerExample> createState() => _MxPlayerExampleState();
}
class _MxPlayerExampleState extends State<MxPlayerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("MX Player")),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              children: [
               Container(
                 height: 70.0,
                 width: 70.0,
                 child: CircleAvatar(
                   backgroundColor: Colors.white,
                   child: Icon(Icons.person,size: 50,color: Colors.black,),
                 ),
               ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("Mahir Kangda"),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star,size: 40.0,color: Colors.orange,),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("125"),
                          ),
                        ],
                       ),
                      GestureDetector(
                        onTap: (){},
                        child: Container(
                            width: 100.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                  bottomLeft: Radius.circular(10.0),
                                  bottomRight: Radius.circular(10.0),
                                ),
                                border: Border.all(
                                    color: Colors.red
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(child: Text("Redeem Now")),
                            )
                        ),
                      ),
                      ]
                     ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        border: Border.all(color: Colors.white24),
                        boxShadow: [
                          BoxShadow(color: Colors.black38,offset: Offset(-10,10),
                              blurRadius: 20.0
                          ),
                        ]
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.download),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                        border: Border.all(color: Colors.white24),
                      boxShadow: [
                        BoxShadow(color: Colors.black38,offset: Offset(-10,10),
                        blurRadius: 50.0
                        ),
                      ]
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child:  Icon(Icons.add),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        border: Border.all(color: Colors.white24),
                        boxShadow: [
                          BoxShadow(color: Colors.black38,offset: Offset(-10,10),
                              blurRadius: 50.0
                          ),
                        ]
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child:  Icon(Icons.video_library_outlined),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                        border: Border.all(color: Colors.white24),
                        boxShadow: [
                          BoxShadow(color: Colors.black38,offset: Offset(-10,10),
                              blurRadius: 50.0
                          ),
                        ]
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child:  Icon(Icons.my_library_music_outlined),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
