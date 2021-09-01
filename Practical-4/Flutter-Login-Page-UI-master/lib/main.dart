import 'package:flutter/material.dart';
import 'Animation/FadeAnimation.dart';
import 'login_page.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  )
);
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
	final GlobalKey<FormState> fkey= GlobalKey<FormState>();
	Color bgcolor;
	bool buttonenabled=true;
	int counter=3;
	String email;
	String password;
	void ButtonEnable(){
		final formstate=fkey.currentState;
		if(formstate.validate()){
			formstate.save();
		}
		if(email != 'fenilvaghasiya@gmail.com' || password != 'fenil29'){
			setState(() {
				counter--;
			});
		}
		else{
			setState(() {
				buttonenabled=true;
				Navigator.push(
						context,
						MaterialPageRoute(builder: (context)=>Fenil(),)
				);
			});
		}
		if(counter==0){
			setState(() {
				buttonenabled=false;

			});
		}
	}
	@override
	Widget build(BuildContext context) {
		return Scaffold(
				backgroundColor: Colors.white,
				body: SingleChildScrollView(
					child: Container(
						child: Column(
							children: <Widget>[
								Container(
									height: 400,
									decoration: BoxDecoration(
											image: DecorationImage(
													image: AssetImage('assets/images/background.png'),
													fit: BoxFit.fill
											)
									),
									child: Stack(
										children: <Widget>[
											Positioned(
												left: 30,
												width: 80,
												height: 200,
												child: FadeAnimation(1, Container(
													decoration: BoxDecoration(
															image: DecorationImage(
																	image: AssetImage('assets/images/light-1.png')
															)
													),
												)),
											),
											Positioned(
												left: 140,
												width: 80,
												height: 150,
												child: FadeAnimation(1.3, Container(
													decoration: BoxDecoration(
															image: DecorationImage(
																	image: AssetImage('assets/images/light-2.png')
															)
													),
												)),
											),
											Positioned(
												right: 40,
												top: 40,
												width: 80,
												height: 150,
												child: FadeAnimation(1.5, Container(
													decoration: BoxDecoration(
															image: DecorationImage(
																	image: AssetImage('assets/images/clock.png')
															)
													),
												)),
											),
											Positioned(
												child: FadeAnimation(1.6, Container(
													margin: EdgeInsets.only(top: 50),
													child: Center(
														child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
													),
												)),
											)
										],
									),
								),
								Padding(
									padding: EdgeInsets.all(30.0),
									child: Column(
										children: <Widget>[
											FadeAnimation(1.8, Container(
												padding: EdgeInsets.all(5),
												decoration: BoxDecoration(
														color: Colors.white,
														borderRadius: BorderRadius.circular(10),
														boxShadow: [
															BoxShadow(
																	color: Color.fromRGBO(143, 148, 251, .2),
																	blurRadius: 20.0,
																	offset: Offset(0, 10)
															)
														]
												),
												child: Form(
													key: fkey,
												  child: Column(
												  	children: <Widget>[
												  		Container(
												  			padding: EdgeInsets.all(8.0),
												  			decoration: BoxDecoration(
												  					border: Border(bottom: BorderSide(color: Colors.grey[100]))
												  			),
												  			child: TextFormField(
												  				decoration: InputDecoration(
												  						border: InputBorder.none,
												  						hintText: "Enter an email id",
												  						hintStyle: TextStyle(color: Colors.grey[400])
												  				),
												  				validator: (String value){
												  					if(value != 'fenilvaghasiya@gmail.com'){
												  						return 'Invalid Email address';
												  					}
												  					return null;
												  				},
												  				onSaved: (value)=>email=value,
												  			),
												  		),
												  		Container(
												  			padding: EdgeInsets.all(8.0),
												  			child: TextFormField(
												  				decoration: InputDecoration(
												  						border: InputBorder.none,
												  						hintText: "Password",
												  						hintStyle: TextStyle(color: Colors.grey[400])
												  				),
												  				validator: (String value){
												  					if(value != 'fenil29'){
												  						return 'Invalid Password';
												  					}
												  					return null;
												  				},
												  				onSaved: (value)=>password=value,
												  			),
												  		)
												  	],
												  ),
												),
											)),
											SizedBox(height: 30,),

											RaisedButton(
												onPressed: buttonenabled?ButtonEnable:null,
												shape: RoundedRectangleBorder(
														borderRadius: BorderRadius.circular(10)
												),
												textColor: Colors.white,
												padding: const EdgeInsets.all(0.0),
												child: Container(
													width: MediaQuery.of(context).size.width,
													decoration: const BoxDecoration(
														gradient: LinearGradient(
															colors: <Color>[
																Color.fromRGBO(143,148,251,1),
																Color.fromRGBO(143,148,251,1),
															],
														),
													),
													padding: const EdgeInsets.all(10.0),
													child: Center(child: Text("Login",style: TextStyle(fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold),)),
												),
											),
											SizedBox(height: 70,),


										],
									),
								)
							],
						),
					),
				)
		);
	}
}


