import 'package:flutter/material.dart';
import 'package:kidlat/MapPage.dart';
import 'package:kidlat/pages/ProfilePages/ProfilePage.dart';

class ProfilePage3 extends StatefulWidget {
  @override
  _ProfilePage3State createState() => _ProfilePage3State();
}

class _ProfilePage3State extends State<ProfilePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 393,
          height: 1000,
          padding: const EdgeInsets.only(
            top: 58,
            left: 49,
            right: 48,
            bottom: 357.46,
          ),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Container(
                  width: 50,
                  height: 50,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Kidlat Logo-3.png"),
                      fit: BoxFit.fill,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
                const SizedBox(height: 80),
                Image.asset(
                  'assets/img_user_image.png', 
                  width: 100, 
                  height: 100, 
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: 295,
                  height: 52,
                  child: Text(
                    'Your profile has successfully been updated!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF1E1E1E),
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                      letterSpacing: -0.50,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFEB62C),
                    minimumSize: Size(257.06, 52.54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    print("back to account button pressed");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MapPage()),
                    );
                  },
                  child: Center(
                    child: Text(
                      'Back to Main Page',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
