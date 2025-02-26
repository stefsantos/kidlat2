import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'SignUp2.dart';

class SignUpPage extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        // title: const Text('Sign Up'),
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/');
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0), 
            child: Image.asset(
              "assets/3.png",
              height: 150.0, 
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 0),
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 300,
                  height: 240,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/locationsearch.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Signup',
                    style: TextStyle(
                      color: Color(0xFF303E44),
                      fontSize: 40,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.30,
                    ),
                  ),
                  Text(
                    'Create a new account',
                    style: TextStyle(
                      color: Color(0xFF2A2A2A),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.50,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              _buildInputField('Username', 'Enter your username', usernameController),
              SizedBox(height: 10),
              _buildInputField('Email', 'Enter your email', emailController),
              SizedBox(height: 10),
              _buildInputField('Name', 'Enter your name', nameController),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: 117,
                  height: 42,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x1E000000),
                        blurRadius: 12,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        if (_validateFields()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage2()),
                          );
                        } else {
                          Fluttertoast.showToast(
                            msg: "All fields must be filled to proceed.",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0,
                          );
                        }
                      },
                      borderRadius: BorderRadius.circular(30),
                      splashColor: Color.fromRGBO(254, 182, 44, 1.0),
                      child: Center(
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, String hintText, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF2A2A2A),
            fontSize: 20,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            letterSpacing: -0.50,
          ),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(0.7),
              fontSize: 17,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              letterSpacing: -0.30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: Color(0xFFE1E1E1),
                width: 2,
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 13),
          ),
        ),
      ],
    );
  }

  bool _validateFields() {
    return usernameController.text.isNotEmpty &&
           emailController.text.isNotEmpty &&
           nameController.text.isNotEmpty;
  }
}
