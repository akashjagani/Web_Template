import 'package:flutter/material.dart';
import 'package:web_demo_app/constants.dart';

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      color: kPrimaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            CircleAvatar(
              backgroundColor: kTransparentColor,
              child: IconButton(
                icon: Image(
                  image: AssetImage('assets/icons/home.png'),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/user.png'),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/message.png'),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/calendar.png'),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/clock.png'),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
            IconButton(
              icon: Image(
                image: AssetImage('assets/icons/settings.png'),
              ),
              onPressed: () {},
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
