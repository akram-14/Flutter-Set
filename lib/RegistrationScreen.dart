import 'package:flutter/material.dart';
import 'package:flutter_set/HomeScreen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final firstNameController = TextEditingController();
  final lasttNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final firstNameField = TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.name,
      onSaved: (value ){
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("First Name"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ) ),
    );
    final lastNameField = TextFormField(
      controller: lasttNameController,
      keyboardType: TextInputType.name,
      onSaved: (value ){
        lasttNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("Last Name"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ) ),
    );
    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      onSaved: (value ){
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("Email Address"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),


    );
    final passwordField = TextFormField(
      controller: passwordController,
      obscureText: true,
      onSaved: (value ){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("password"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),


    );
    final confirmpasswordField = TextFormField(
      controller: confirmPasswordController,
      obscureText: true,
      onSaved: (value ){
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(prefixIcon: Icon(Icons.password),
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          label: Text("Confirm Password"),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          )
      ),


    );
    final signUpButten = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.red,
      child: MaterialButton(
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        onPressed: ( ){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        },

        child: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 180,
                      child: Image.asset("assets/coum.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 45,),
                    firstNameField,
                    SizedBox(height: 25,),
                    lastNameField,
                    SizedBox(height: 25,),
                    emailField,
                    SizedBox(height: 25,),
                    passwordField,
                    SizedBox(height: 25,),
                    confirmpasswordField,
                    SizedBox(height: 25,),
                    signUpButten,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
