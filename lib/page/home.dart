import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PreferredSizeWidget _appbarWidget() {
    return AppBar(
      backgroundColor: Colors.white,
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        child: Row(
          children: [
            Text(
              "아라동",
            ),
            Icon(
              Icons.arrow_drop_down,
            )
          ],
        ),
      ),
      elevation: 1,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.tune,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            "assets/svg/bell.svg",
            width: 22,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: Container(),
      bottomNavigationBar: Container(),
    );
  }
}