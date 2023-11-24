import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

import 'package:my_portfolio/screens/about.dart';
import 'package:my_portfolio/screens/constraints/nav_items.dart';

import 'package:my_portfolio/screens/footer.dart';

class HeaderController extends GetxController {
  final selectedIndex = 0.obs;

  void selectIndex(int index) {
    selectedIndex.value = index;
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.titles}) : super(key: key);
  final List<String> titles;
  final HeaderController controller = Get.put(HeaderController());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff00a0119),
              ),
              child: Text(
                'Qoryooley',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Projects'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('About'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
            ListTile(
              title: Text('Contact'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xFF00A0119),
              // borderRadius: BorderRadius.circular(5),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Text(
                    'Qoryooley',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  Spacer(),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        nav_items.length,
                        (index) => GestureDetector(
                          onTap: () => controller.selectIndex(index),
                          child: Container(
                            padding: EdgeInsets.all(12),
                            color: controller.selectedIndex.value == index
                                ? Colors.blue
                                : Colors.transparent,
                            child: Text(
                              nav_items[index],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(color: Color(0xFF00A0119)),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Abdirizak Qoryooley',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Junior Developer',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Hi there! I\'m a passionate Flutter developer with experience',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'in building cross-platform mobile applications. I enjoy exploring new technologies and implementing',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5)),
                              child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Contact',
                                    style: TextStyle(color: Colors.black),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    if (constraints.maxWidth > 600)
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
                  ],
                );
              },
            ),
          ),
          about_page(),
          Container(
            height: 800,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff00a0119),
            ),
            child: Column(
              children: [
                Text(
                  'Projects',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                          color: Color(0xff00a0119),
                        ),
                        child: Image.asset(
                          'images/1.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                          color: Color(0xff00a0119),
                        ),
                        child: Image.asset(
                          'images/2.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                  ],
                ),
              ],
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
