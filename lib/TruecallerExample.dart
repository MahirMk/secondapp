import 'package:flutter/material.dart';

class TruecallerExample extends StatefulWidget {

  @override
  State<TruecallerExample> createState() => _TruecallerExampleState();
}

class _TruecallerExampleState extends State<TruecallerExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("truecaller"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.blue,
          child: Icon(Icons.account_circle),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(height: 80.0,),
        ListTile(
            leading: CircleAvatar(
            child: Icon(Icons.hd,),
          ),
        ),
            ListTile(
              title: Text("Mahir Kangda"),
              subtitle: Text("09638698904"),
              trailing: Icon(Icons.pending_actions),
              onTap: (){},
            ),
            SizedBox(height: 30.0,),
           Container(
             child:  ListTile(
               title: Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Icon(Icons.star,size: 40.0,color: Colors.orange.shade900,),
                   Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Text("Upgrade To Premium",style: TextStyle(fontWeight: FontWeight.w500),),
                   ),
                 ],
               ),
             onTap: (){},
           ),
            width: MediaQuery.of(context).size.width,
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              border: Border.all(color: Colors.grey.shade200,width: 2.0),
            ),

            margin: EdgeInsets.all(5.0),
               ),
                Container(
                child:  ListTile(
                 title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.local_hospital,size: 30.0,color: Colors.grey.shade700,),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Covid To Relief",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                  ),
                ],
              ),
              onTap: (){},
            ),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            margin: EdgeInsets.all(2.0),
               ),
            Container(
              child:  ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.delete_rounded,size: 30.0,color: Colors.grey.shade700,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Inbox Cleaner",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                    ),
                  ],
                ),
                onTap: (){},
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child:  ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.remove_red_eye,size: 30.0,color: Colors.grey.shade700,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Who Veiwed My Profile",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                    ),
                  ],
                ),
                onTap: (){},
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child:  ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.qr_code_scanner,size: 30.0,color: Colors.grey.shade700,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("QR Scanner",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                    ),
                  ],
                ),
                onTap: (){},
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child:  ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.notifications,size: 30.0,color: Colors.grey.shade700,),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text("Notificaton",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                    ),
                  ],
                ),
                onTap: (){},
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications,size: 30.0,color: Colors.grey.shade700,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Notificaton",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child:   Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.notifications,size: 30.0,color: Colors.grey.shade700,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Notificaton",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              margin: EdgeInsets.all(2.0),
            ),
            Container(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Icon(Icons.notifications,size: 30.0,color: Colors.grey.shade700,),
              Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Notificaton",style: TextStyle(fontSize: 15.0,color: Colors.black54),),
              ),
              ],
              ),
              width: MediaQuery.of(context).size.width,
              height: 60.0,
              margin: EdgeInsets.all(2.0),
            ),
          ],
        ),
      ),
     body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: 90.0,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A",style: TextStyle(fontSize: 20.0),),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),

                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A",style: TextStyle(fontSize: 20.0),),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A",style: TextStyle(fontSize: 20.0),),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A",style: TextStyle(fontSize: 20.0),),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A"),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                               child: Text("A",style: TextStyle(fontSize: 20.0),),
                             ),
                         ),
                         ),
                     ],
                   ),
                 ),
                 Container(
                   width: 70.0,
                   child: Column(
                     children: [
                       Container(
                         width:80.0,
                         height:80.0,
                         child: Padding(
                           padding: const EdgeInsets.only(left: 8.0),
                           child: CircleAvatar(
                             child: Text("A",style: TextStyle(fontSize: 20.0),),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
       ListTile(
               leading: CircleAvatar(
                 backgroundColor: Colors.blue.shade100,
                 child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
               ),
               title: Text("Karon Infotech"),
               subtitle: Row(
                 children: [
                   Icon(Icons.add_call,color: Colors.black38,),
                   Text("Outgoing call . 11:00 am"),
                 ],
               ),
               trailing:  Icon(Icons.phone),
               onTap: (){},
             ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
           ListTile(
             leading: CircleAvatar(
               backgroundColor: Colors.blue.shade100,
               child: Text("K",style: TextStyle(color: Colors.blue.shade700,fontSize: 25.0),),
             ),
             title: Text("Karon Infotech"),
             subtitle: Row(
               children: [
                 Icon(Icons.add_call,color: Colors.black38,),
                 Text("Outgoing call . 11:00 am"),
               ],
             ),
             trailing:  Icon(Icons.phone),
             onTap: (){},
           ),
         ],
       ),

     ),
    );
  }
}
