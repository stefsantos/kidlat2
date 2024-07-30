import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidlat/pages/start_page.dart'; // Ensure this is the correct path
import 'package:flutter_switch/flutter_switch.dart';
import 'ProfilePage2.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSelectedSwitch = false;

  void _logout(BuildContext context) {
    // Perform any necessary logout operations here (e.g., clearing session data)

    // Navigate to the start page
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => StartPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 38),
              _buildProfileSection(context),
              SizedBox(height: 4),
              Spacer(),
              _buildCarStatus(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22,
        right: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your profile",
            style: TextStyle(
              color: Color(0XFF181D27),
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4),
            decoration: BoxDecoration(
              color: Color(0XFFFEB62C),
              borderRadius: BorderRadius.circular(
                10,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0XFFFEB62C),
                    borderRadius: BorderRadius.circular(
                      5,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0X0F000000),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(
                          0,
                          4,
                        ),
                      )
                    ],
                  ),
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 56,
                        width: 64,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(right: 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    28,
                                  ),
                                  child: Image.asset(
                                    "assets/images/img_ellipse_643.png",
                                    height: 56,
                                    width: double.maxFinite,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 56,
                              child: Stack(
                                alignment: Alignment.centerRight,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 12),
                                    child: SizedBox(
                                      height: 40,
                                      width: 32,
                                      child: SvgPicture.asset(
                                        "assets/images/img_profile.svg",
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        28,
                                      ),
                                      child: Image.asset(
                                        "assets/images/img_user_image.png",
                                        height: 56,
                                        width: double.maxFinite,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Alisha Chua",
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 14,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "@ilovemyev",
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 11,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: SizedBox(
                          height: 24,
                          width: 24,
                          child: SvgPicture.asset(
                            "assets/images/img_edit_icon.svg",
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 18),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4),
            padding: EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 18,
            ),
            decoration: BoxDecoration(
              color: Color(0XFFFFFFFF),
              borderRadius: BorderRadius.circular(
                5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0X0F000000),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: Offset(
                    0,
                    4,
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 40,
                        ),
                        padding: EdgeInsets.all(0),
                        icon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0X0C000000),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            "assets/images/img_group_12334.svg",
                          ),
                        ),
                      ),
                      InkWell(
                      onTap: () {
                        // Add your onPress code here
                        print("My Account pressed");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProfilePage2(onBack: () {  },)),
                        );
                      },
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "My Account ",
                                style: TextStyle(
                                  color: Color(0XFF000000),
                                  fontSize: 13,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                "Make changes to your account",
                                style: TextStyle(
                                  color: Color(0XFFABABAB),
                                  fontSize: 11,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: SizedBox(
                          height: 14,
                          width: 14,
                          child: SvgPicture.asset(
                            "assets/images/img_group_12135.svg",
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 0),
                        child: SizedBox(
                          height: 10,
                          width: 6,
                          child: SvgPicture.asset(
                            "assets/images/img_month_chevron.svg",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        constraints: BoxConstraints(
                          minHeight: 40,
                          minWidth: 40,
                        ),
                        padding: EdgeInsets.all(0),
                        icon: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0X0C000000),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: SvgPicture.asset(
                            "assets/images/img_group_12334_40x40.svg",
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Face ID / Touch ID",
                              style: TextStyle(
                                color: Color(0XFF000000),
                                fontSize: 13,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              "Manage your device security",
                              style: TextStyle(
                                color: Color(0XFFABABAB),
                                fontSize: 11,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 16),
                      FlutterSwitch(
                        value: isSelectedSwitch,
                        height: 30,
                        width: 50,
                        toggleSize: 20,
                        borderRadius: 14,
                        activeColor: Color(0XFFE3E4E8),
                        activeToggleColor: Color(0X19000000),
                        inactiveColor: Color(0X19000000),
                        inactiveToggleColor: Color(0X19000000),
                        onToggle: (value) {
                          setState(() {
                            isSelectedSwitch = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildLogoutSection(
                    context,
                    logoutText: "Two-Factor Authentication",
                    securityText: "Further secure your account for safety",
                  ),
                ),
                SizedBox(height: 14),
                SizedBox(
                  width: double.maxFinite,
                  child: _buildLogoutSection(
                    context,
                    logoutText: "Log out",
                    securityText: "Further secure your account for safety",
                    isLogout: true,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget

  /// Section Widget
  Widget _buildCarStatus(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22,
        right: 20,
      ),
      padding: EdgeInsets.only(right: 126),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 0),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildLogoutSection(
    BuildContext context, {
    required String logoutText,
    required String securityText,
    bool isLogout = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: isLogout ? () => _logout(context) : () {},
          constraints: BoxConstraints(
            minHeight: 40,
            minWidth: 40,
          ),
          padding: EdgeInsets.all(0),
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Color(0X0C000000),
              borderRadius: BorderRadius.circular(
                20,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              "assets/images/img_group_12334_2.svg",
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                logoutText,
                style: TextStyle(
                  color: Color(0XFF555555),
                  fontSize: 13,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2),
              Text(
                securityText,
                style: TextStyle(
                  color: Color(0XFFABABAB),
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ),
        SizedBox(width: 16),
        Padding(
          padding: EdgeInsets.only(right: 0),
          child: SizedBox(
            height: 10,
            width: 6,
            child: SvgPicture.asset(
              "assets/images/img_month_chevron.svg",
            ),
          ),
        )
      ],
    );
  }
}
