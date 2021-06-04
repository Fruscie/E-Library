import 'package:e_library/UI/Pages/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username, password;
  bool _isVisible = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: HexColor('#f4eeff'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height / 8),
              Container(
                height: 230,
                child: Image.asset('source/images/elibrary.png'),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        return value.isEmpty && value.length < 5
                            ? "Please enter a valid username!!"
                            : null;
                      },
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          labelText: "Username",
                          hintStyle: TextStyle(color: HexColor('#424874')),
                          labelStyle: TextStyle(color: HexColor('#424874')),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#424874'), width: 2.3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#424874'), width: 2.3)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: HexColor('#424874'),
                            width: 2.3,
                          )),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.person,
                              color: HexColor('#424874'),
                            ),
                          )),
                      onChanged: (value) {
                        username = value;
                      },
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      decoration: InputDecoration(
                          suffixIcon: GestureDetector(
                            child: Icon(
                              // Based on passwordVisible state choose the icon
                              _isVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: HexColor('#424874'),
                            ),
                            onTap: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: HexColor('#424874')),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#424874'), width: 2.3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: HexColor('#424874'), width: 2.3)),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: HexColor('#424874'),
                            width: 2.3,
                          )),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.lock,
                              color: HexColor('#424874'),
                            ),
                          )),
                      obscureText: _isVisible,
                      validator: (value) {
                        return value.length < 6
                            ? "Your password less than 6 characters !!"
                            : null;
                      },
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              MaterialButton(
                  splashColor: HexColor('#a6b1e1'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)),
                  color: HexColor('#424874'),
                  height: screenSize.height / 13,
                  minWidth: screenSize.width / 1.5,
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      if (username == "dicoding" && password == "123456") {
                        _formKey.currentState.reset();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainPage();
                        }));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 2),
                          content: Text('Username atau Password Salah!'),
                        ));
                      }
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
