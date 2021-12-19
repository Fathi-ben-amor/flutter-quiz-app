import 'package:flutter/material.dart';
import '../main.dart';
import '../profile.dart';
import '../howtoPlay.dart';
import '../PrivacyPolicy.dart';
import '../settings.dart';
import '../contactUs.dart';
import '../aboutUs.dart';
import '../termsandConditions.dart';

class Menu extends StatelessWidget {
  Widget buildListTile(
      BuildContext context, String title, IconData icon, Link) {
    return ListTile(
        leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return (Link);
            }),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.blue,
            child: ListTile(
              leading: CircleAvatar(
                radius: 18.0,
                backgroundImage: AssetImage('images/img4.jpg'),
              ),
              title: Text(
                'User Name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                'username@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          buildListTile(
              context, 'Profile', Icons.account_circle_rounded, Profile()),
          buildListTile(
              context, 'How to play', Icons.contact_support_sharp, HowtoPlay()),
          buildListTile(
              context, 'About Us', Icons.assignment_ind_outlined, AboutUs()),
          buildListTile(context, 'Contact Us', Icons.contact_mail, ContactUs()),
          buildListTile(context, 'Terms & Conditions', Icons.security,
              TermsandConditions()),
          buildListTile(
              context, 'Privacy Policy', Icons.security, PrivacyPolicy()),
          buildListTile(context, 'Settings', Icons.settings, Settings()),
          buildListTile(context, 'Lagout', Icons.logout, MyApp()),
        ],
      ),
    );
  }
}
