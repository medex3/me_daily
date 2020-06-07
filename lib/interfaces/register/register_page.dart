import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:me_daily/interfaces/login/login_page.dart';

// Uncomment if you use injector package.
// import 'package:my_app/framework/di/injector.dart';

class Register extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RegisterState();
  }
}

class RegisterState extends State<Register> {
  // Insert into injector file if you use it.
  // injector.map<RegisterBloc>((i) => RegisterBloc(i.get<Repository>()), isSingleton: true);

  // Uncomment if you use injector.
  // final _bloc = injector.get<RegisterBloc>();
  TextEditingController _controller1 = new TextEditingController();
  TextEditingController _controller2 = new TextEditingController();
  TextEditingController _controller3 = new TextEditingController();
  TextEditingController _controller4 = new TextEditingController();
  TextEditingController _controller5 = new TextEditingController();

  _OnPressed() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.lightGreenAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/undraw_welcome_cats_thqn.svg',
              width: 80,
              height: 100,
            ),
            SizedBox(height: 10),
            Opacity(
              opacity: 0.6,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(30.0))),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        child: Text(
                          'Existing ',
                          style: new TextStyle(
                              fontSize: 25.0, color: Colors.white),
                        )),
                    new MaterialButton(
                        onPressed: null,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0)),
                        child: Text(
                          'New',
                          style: new TextStyle(
                              fontSize: 25.0, color: Colors.white),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ListTile(
                    leading: SizedBox(width: 23),
                    title: TextField(
                      controller: _controller1,
                      autofocus: true,
                      autocorrect: true,
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(hintText: 'First Name'),
                      onSubmitted: (text) => print(_controller1.text),
                    ),
                    trailing: SizedBox(width: 23),
                  ),
                  ListTile(
                    leading: SizedBox(width: 23),
                    title: TextField(
                      controller: _controller2,
                      autofocus: true,
                      autocorrect: true,
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(hintText: 'last NAME'),
                      onSubmitted: (text) => print(_controller2.text),
                    ),
                    trailing: SizedBox(width: 23),
                  ),
                  ListTile(
                    leading: SizedBox(width: 23),
                    title: TextField(
                      controller: _controller3,
                      autofocus: true,
                      autocorrect: true,
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(hintText: 'Email'),
                      onSubmitted: (text) => print(_controller3.text),
                    ),
                    trailing: SizedBox(width: 23),
                  ),
                  ListTile(
                    leading: SizedBox(width: 23),
                    title: TextField(
                      controller: _controller4,
                      autofocus: true,
                      autocorrect: true,
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(hintText: 'PhoneNumber'),
                      onSubmitted: (text) => print(_controller4.text),
                    ),
                    trailing: SizedBox(width: 23),
                  ),
                  SizedBox(height: 5),
                  ListTile(
                    leading: SizedBox(width: 23),
                    title: TextField(
                      controller: _controller5,
                      autofocus: true,
                      autocorrect: true,
                      cursorColor: Colors.amberAccent,
                      decoration: InputDecoration(hintText: 'Password'),
                      onSubmitted: (text) => print(_controller5.text),
                    ),
                    trailing: Icon(Icons.visibility),
                  ),
                  Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 0)),
                          RaisedButton(
                            onPressed: () {
                              print('Login Pressed');
                            },
                            color: Colors.green,
                            shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(30.0)),
                            child: new Text('Continue',
                                style: new TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
