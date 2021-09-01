import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: "Notifications",
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
       accentColor: Colors.red,
       primaryColor: Colors.red,
     ),
     home: HomePage(),
   );
 }
}

class HomePage extends StatefulWidget {
 @override
 _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State {
 FlutterLocalNotificationsPlugin fltrNotification;
 String _selectedParam;
 String task;
 int val;

 @override
 void initState() {
   super.initState();
   var androidInitilize = new AndroidInitializationSettings('icon');
   var iOSinitilize = new IOSInitializationSettings();
   var initilizationsSettings =
   new InitializationSettings(android:androidInitilize, iOS:iOSinitilize);
   fltrNotification = new FlutterLocalNotificationsPlugin();
   fltrNotification.initialize(initilizationsSettings,
       onSelectNotification: notificationSelected);
 }

 Future _showNotification() async {
   var androidDetails = new AndroidNotificationDetails(
       "Channel ID", "Desi programmer", "This is my channel",
       importance: Importance.max);
   var iSODetails = new IOSNotificationDetails();
   var generalNotificationDetails =
   new NotificationDetails(android:androidDetails,iOS: iSODetails);

   // await fltrNotification.show(
   //     0, "Task", "You created a Task", generalNotificationDetails, payload: "Task");
   var scheduledTime;
   if (_selectedParam == "Hour") {
     scheduledTime = DateTime.now().add(Duration(hours: val));
   } else if (_selectedParam == "Minute") {
     scheduledTime = DateTime.now().add(Duration(minutes: val));
   } else {
     scheduledTime = DateTime.now().add(Duration(seconds: val));
   }

   fltrNotification.schedule(
       1, "Times Up", task, scheduledTime, generalNotificationDetails);
 }

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Schedule Notification"),
       backgroundColor: Colors.purple,
       elevation: 20,
       actions:[
         IconButton(
           icon: Icon(Icons.ac_unit),
           onPressed: (){},

         )
       ],
     ),
     body: Center(


       child: Column(
         mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Padding(
             padding:const EdgeInsets.fromLTRB(2.0, 20.0, 2.0, 40.0),
             child:Text("Schedule Notification", style: TextStyle(color: Colors.red, fontSize: 30.0),),
           ),

           Padding(
             padding: const EdgeInsets.all(16.0),
             child: TextField(
               autofocus: true,
               decoration: InputDecoration(
                   labelText: "Enter a text",
                 labelStyle: TextStyle(
                   fontSize: 24,
                   color: Colors.black,
                 ),
                   border: OutlineInputBorder(),
               ),
               onChanged: (_val) {
                 task = _val;
               },
             ),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: [
               Padding(padding: const EdgeInsets.all(16.0),
                 child: DropdownButton(
                   dropdownColor: Colors.grey,
                   icon: Icon(Icons.arrow_drop_down),
                   value: _selectedParam,
                   items: [
                     DropdownMenuItem(
                       child: Text("Seconds"),
                       value: "Seconds",
                     ),
                     DropdownMenuItem(
                       child: Text("Minutes"),
                       value: "Minutes",
                     ),
                     DropdownMenuItem(
                       child: Text("Hour"),
                       value: "Hour",
                     ),
                   ],
                   hint: Text(
                     "Select Your Field.",
                     style: TextStyle(
                       color: Colors.black,
                     ),
                   ),
                   onChanged: (_val) {
                     setState(() {
                       _selectedParam = _val;
                     });
                   },
                 ),
               ),
               Padding(padding: const EdgeInsets.all(40),
                 child: DropdownButton(
                   dropdownColor: Colors.grey,
                   value: val,
                   items: [
                     DropdownMenuItem(
                       child: Text("1"),
                       value: 1,
                     ),
                     DropdownMenuItem(
                       child: Text("2"),
                       value: 2,
                     ),
                     DropdownMenuItem(
                       child: Text("3"),
                       value: 3,
                     ),
                     DropdownMenuItem(
                       child: Text("4"),
                       value: 4,
                     ),
                     DropdownMenuItem(
                       child: Text("5"),
                       value: 5,
                     ), DropdownMenuItem(
                       child: Text("6"),
                       value: 6,
                     ),
                   ],
                   hint: Text(
                     "Select Value",
                     style: TextStyle(
                       color: Colors.black,
                     ),
                   ),
                   onChanged: (_val) {
                     setState(() {
                       val = _val;
                     });
                   },
                 ),
               ),
             ],
           ),
           Container(
             width: MediaQuery.of(context).size.width,
             height: 50.0,
             child: RaisedButton(
               color: Colors.blue,
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(18.0),
                   side: BorderSide(color: Colors.red)
               ),

               onPressed: _showNotification,
               child: new Text('Set Task With Notification', style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold) ),
             ),
           )
         ],
       ),
     ),
   );
 }

 Future notificationSelected(String payload) async {
   showDialog(
     context: context,
     builder: (context) => AlertDialog(
       content: Text("Notification Clicked $payload"),
     ),
   );
 }
}







// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Notifications",
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         accentColor: Colors.red,
//         primaryColor: Colors.red,
//       ),
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State {
//   FlutterLocalNotificationsPlugin fltrNotification;
//   String _selectedParam;
//   String task;
//   int val;
//
//   @override
//   void initState() {
//     super.initState();
//     var androidInitilize = new AndroidInitializationSettings('icon');
//     var iOSinitilize = new IOSInitializationSettings();
//     var initilizationsSettings =
//     new InitializationSettings(androidInitilize, iOSinitilize);
//     fltrNotification = new FlutterLocalNotificationsPlugin();
//     fltrNotification.initialize(initilizationsSettings,
//         onSelectNotification: notificationSelected);
//   }
//
//   Future _showNotification() async {
//     var androidDetails = new AndroidNotificationDetails(
//         "Channel ID", "Desi programmer", "This is my channel",
//         importance: Importance.Max);
//     var iSODetails = new IOSNotificationDetails();
//     var generalNotificationDetails =
//     new NotificationDetails(androidDetails, iSODetails);
//
//      await fltrNotification.show(
//          0, "Task", "You created a Task", generalNotificationDetails, payload: "Task");
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Local Notification"),
//         backgroundColor: Colors.purple,
//         elevation: 20,
//         actions:[
//           IconButton(
//             icon: Icon(Icons.ac_unit),
//             onPressed: (){},
//
//           )
//         ],
//       ),
//       body: Center(
//
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding:const EdgeInsets.all(60.0),
//               child:Text("Local Notification", style: TextStyle(color: Colors.red, fontSize: 30.0),),
//             ),
//             Text("Below button clicked and show the local notification"),
//
//               Padding(
//                 padding: const EdgeInsets.all(60.0),
//               child: RaisedButton(
//                 color: Colors.blue,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(18.0),
//                     side: BorderSide(color: Colors.red)
//                 ),
//
//                 onPressed: _showNotification,
//                 child: new Text('click', style: TextStyle(color:Colors.white,fontSize: 20,fontWeight:FontWeight.bold) ),
//               ),
//               )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future notificationSelected(String payload) async {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         content: Text("Notification Clicked $payload"),
//       ),
//     );
//   }
// }
//
