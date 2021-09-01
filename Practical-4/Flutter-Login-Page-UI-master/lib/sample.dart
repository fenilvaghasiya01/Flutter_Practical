//import 'dart:io';
//import 'dart:ui';
//
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:splash_screen_login_p4/Animations/FadeAnimation.dart';
//import 'package:splash_screen_login_p4/Success.dart';
//class LoginPage extends StatefulWidget {
//
//  @override
//  _LoginPageState createState() => _LoginPageState();
//}
//
//class _LoginPageState extends State<LoginPage> {
//  final GlobalKey<FormState> fkey= GlobalKey<FormState>();
//  Color bgcolor;
//  bool btnenabled=true;
//  int counter=3;
//  String email,password;
//  void Buttonenable(){
//    final formstate=fkey.currentState;
//    if(formstate.validate()){
//      formstate.save();
//    }
//    if(email != 'meetsuvariya@gmail.com' || password != 'meet'){
//      setState(() {
//        counter--;
//      });
//    }
//    else{
//      setState(() {
//        btnenabled=true;
//        Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context)=>loginSuccess(),)
//        );
//      });
//    }
//    if(counter==0){
//      setState(() {
//        btnenabled=false;
//        //here we need to set the btn disable
//      });
//    }
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      width: MediaQuery.of(context).size.width,
//      decoration: BoxDecoration(
//        image: DecorationImage(
//          image: AssetImage('assets/s4.png'),
//
//          fit: BoxFit.cover,
//        ),
//      ),
//      child: Scaffold(
//        // backgroundColor: Colors.deepPurpleAccent,
//        body: Form(
//          key: fkey,
//          child: SingleChildScrollView(
//            child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
//              crossAxisAlignment: CrossAxisAlignment.center,
//              children: <Widget>[
//                SizedBox(height: 50,),
//                FadeAnimation(1.6,Container(
//                  width: MediaQuery.of(context).size.width,
//                  height: 250,
//                  decoration: BoxDecoration(
//                      image: DecorationImage(
//                          image: AssetImage('assets/s3.png'),
//                          fit: BoxFit.cover
//                      )
//                  ),
//                )),
//                FadeAnimation(1.9, Text(
//                  'Login',
//                  style: TextStyle(
//                    fontWeight: FontWeight.w600,
//                    fontSize: 50,
//                    fontStyle: FontStyle.italic,
//                    color:  Colors.blue,
//                  ),
//                )),
//                SizedBox(height: 20,),
//                Padding(
//                  padding: const EdgeInsets.all(10.0),
//                  child: TextFormField(
//                    cursorColor: Colors.black,
//                    decoration: InputDecoration(
//                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                      hintText: 'Enter Email',
//                      border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(50.0),
//                      ),
//
//                    ),
//                    style: TextStyle(color: Colors.blue,fontSize: 20.0),
//                    validator: (String value){
//                      if(value != 'meetsuvariya@gmail.com'){
//                        return 'Invalid Email address';
//                      }
//                      return null;
//                    },
//                    onSaved: (value)=>email=value,
//                  ),
//                ),
//                SizedBox(height: 10,),
//                Padding(
//                  padding: const EdgeInsets.all(10.0),
//                  child: TextFormField(
//                    cursorColor: Colors.black,
//                    obscureText: true,
//                    decoration: InputDecoration(
//                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//                      hintText: 'Enter Password',
//
//                      border: OutlineInputBorder(
//                        borderRadius: BorderRadius.circular(50.0),
//                      ),
//
//                    ),
//                    style: TextStyle(color: Colors.blue,fontSize: 20.0,),
//                    validator: (String value){
//                      if(value != 'meet'){
//                        return 'Invalid Password';
//                      }
//                      return null;
//                    },
//                    onSaved: (value)=>password=value,
//                  ),
//                ),
//                SizedBox(height: 10,),
//                Text('you are remaining with $counter Attempt.',style: TextStyle(fontSize: 20.0),),
//                SizedBox(height: 10,),
//                Padding(
//                  padding: const EdgeInsets.all(16.0),
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      RaisedButton(
//                        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
//                        onPressed: btnenabled?Buttonenable:null,
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20)
//                        ),
//                        color: Colors.deepOrange,
//                        child: Text(
//                          'Login',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            color: Colors.white,
//                            fontSize: 20.0,
//                          ),
//                        ),
//                      ),
//                      RaisedButton(
//                        padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
//                        onPressed: (){
//                          exit(0);
//                        },
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(20)
//                        ),
//                        color: Colors.orangeAccent,
//                        child: Text(
//                          'Cancel',
//                          style: TextStyle(
//                            fontWeight: FontWeight.bold,
//                            color: Colors.white,
//                            fontSize: 20.0,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                ),
//              ],
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}
