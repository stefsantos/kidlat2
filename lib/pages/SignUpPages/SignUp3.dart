import 'package:flutter/material.dart';
import 'package:kidlat/pages/login_page.dart';
import '../../main.dart';

class SignUpPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
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
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity, // Ensure the image container takes full width
              height: 500, // Adjust height as needed
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/roadtrip.png"),
                  fit: BoxFit.cover, // Ensure proper scaling
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter, // Align content to the top
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start, // Align items at the start (top)
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 150), // Adjust this value to move the content higher
                  Container(
                    width: 322,
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        Text(
                          'Account Successfully Created',
                          style: TextStyle(
                            color: Color(0xFF1E1E1E),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.50,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Your account has been successfully created. You can now navigate with Kidlat!',
                          style: TextStyle(
                            color: Color(0xFF989898),
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.50,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(
                    onPressed: () {
                      print("Proceed to Login Button tapped!");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Proceed to Login',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    style: TextButton.styleFrom(
                      elevation: 2,
                      backgroundColor: Colors.amber,
                      minimumSize: Size(350, 48.43),
                      shadowColor: Colors.black.withOpacity(0.2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color: Colors.grey.shade600.withOpacity(0.2),
                          width: 1.5,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


