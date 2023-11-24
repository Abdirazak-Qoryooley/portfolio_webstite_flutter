import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 250,
      decoration: BoxDecoration(color: Colors.deepPurple),
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Text(
            'Connect with us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.facebook),
                color: Colors.white,
                onPressed: () {
                  // Handle Facebook button press
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.twitter),
                color: Colors.white,
                onPressed: () {
                  // Handle Twitter button press
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.linkedin),
                color: Colors.white,
                onPressed: () {
                  // Handle LinkedIn button press
                },
              ),
              IconButton(
                icon: FaIcon(FontAwesomeIcons.instagram),
                color: Colors.white,
                onPressed: () {
                  // Handle Instagram button press
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            '© 2023 Your Company. All rights reserved.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
