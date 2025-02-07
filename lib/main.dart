import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web_project/web_main/core/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebMain(),
    );
  }
}

class WebMain extends StatelessWidget {
  const WebMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.deepBlack,
        leading: Builder(builder: (context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: AppColors.neonBlue,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        title: Align(
          alignment: Alignment.topCenter,
          child: Text(
            "IT with Said",
            style: TextStyle(
              color: AppColors.neonBlue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.developer_board,
            size: 50,
            color: AppColors.neonBlue,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: AppColors.cyberpunkGradient,
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.deepBlack,
        surfaceTintColor: AppColors.deepBlack,
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2),
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(10),
          ),
        ),
        child: ListView(
          padding: EdgeInsets.only(left: 6, top: 50),
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 80,
                    color: AppColors.neonBlue,
                  ),
                ),
                Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: AppColors.cyberpunkGradientBar,
                    border: Border.all(
                      width: 2,
                      color: AppColors.neonBlue,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Said",
                    style: TextStyle(
                      color: Color(0xFF00FFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
