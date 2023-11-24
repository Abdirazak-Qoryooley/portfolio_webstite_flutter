import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Customize the background color of the header
      padding: EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.only(right: -2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Add your header content here
            Text(
              'Qoryooley',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Customize the text color
              ),
            ),
            Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Customize the text color
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'About',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Customize the text color
                  ),
                ),
                SizedBox(width: 16),
                Text(
                  'Contact',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white, // Customize the text color
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
