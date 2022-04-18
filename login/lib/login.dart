import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  late String _studentID;
  late String _password;

  // Form Key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  '../assets/images/hau-bg.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade500.withOpacity(0.2),
                  Colors.white.withOpacity(0.5),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Image(
                    width: 350,
                    height: 350,
                    image: AssetImage('../assets/images/logo.png')
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Student ID',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                      ),
                      validator: (String? value) {
                        if(value!.isEmpty) {
                          return 'Student ID is required';
                        }
                      },
                      onSaved: (String? value) {
                        _studentID = value.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        prefixIcon: Icon(
                          Icons.vpn_key,
                          color: Colors.black,
                        ),
                      ),
                      validator: (String? value) {
                        if(value!.isEmpty) {
                          return 'Password is required';
                        }
                      },
                      onSaved: (String? value) {
                        _password = value.toString();
                      },
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                      if(!_formKey.currentState!.validate()) {
                        return;
                      }
                      _formKey.currentState!.save();
                      print(_studentID);
                      print(_password);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.02,
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black87,
                              offset: Offset(1, 1),
                              blurRadius: 10,
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
