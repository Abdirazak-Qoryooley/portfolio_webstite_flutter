import 'package:flutter/material.dart';

class about_page extends StatelessWidget {
  const about_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF00A0119),
      ),
      child: Column(
        children: [
          Text(
            'Get To Know Me',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 150, top: 120),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/abdi.jpg'),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I implement user interface design and solve user problems with flutter.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I have 2 years of making products that solve user problems and implementing cross-platform.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I implement user interface design and solve user problems with flutter.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I have 2 years of making products that solve user problems and implementing cross-platform.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                );
              } else {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: 300,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/abdi.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'I implement user interface design and solve user problems with flutter.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I have 2 years of making products that solve user problems and implementing cross-platform.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I implement user interface design and solve user problems with flutter.',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'I have 2 years of making products that solve user problems and implementing cross-platform.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                );
              }
            },
          ),
        ],
      ),
    );
  }
}




