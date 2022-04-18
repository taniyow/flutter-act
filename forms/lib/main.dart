// ignore_for_file: unused_field

import 'package:flutter/material.dart';

void main() {
  runApp(const HomeFormPage());
}

class HomeFormPage extends StatefulWidget {
  const HomeFormPage({Key? key}) : super(key: key);

  @override
  State<HomeFormPage> createState() => _HomeFormPageState();
}

class _HomeFormPageState extends State<HomeFormPage> {
  late String _name;
  late String _email;
  late String _password;
  late String _url;
  late String _phoneNumber;

  // Form Key
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Form Widgets
  Widget buildNameField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Name',
        hintText: 'Enter your name here',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        )
      ),
      validator: (String? value) {
        if(value!.isEmpty) {
          return 'Name is required';
        }
      },
      onSaved: (String? value) {
        _name = value.toString();
      },
    );
  }
  Widget buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: 'Email',
        hintText: 'youremail@domain.com',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        )
      ),
      validator: (String? value) {
        if(value!.isEmpty) {
          return 'Email is required';
        }
      },
      onSaved: (String? value) {
        _email = value.toString();
      },
    );
  }

  Widget buildPasswordField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password here',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          )
        )
      ),
      validator: (String? value) {
        if(value!.isEmpty) {
          return 'Password is required';
        }
      },
      onSaved: (String? value) {
        _password = value.toString();
      },
      obscureText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Using Forms'),
        ),
        body: Container(
          margin: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildNameField(),
                const SizedBox(
                  height: 20.0,
                ),
                buildEmailField(),
                const SizedBox(
                  height: 20.0,
                ),
                buildPasswordField(),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    if(!_formKey.currentState!.validate()) {
                      return;
                    }
                    _formKey.currentState!.save();
                    print(_name);
                    print(_email);
                    print(_password);
                  }, 
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                )
              ],
            )
          ),
        ),
      )
    );
  }
}