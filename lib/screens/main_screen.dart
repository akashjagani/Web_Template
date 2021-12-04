import 'package:flutter/material.dart';
import 'package:web_demo_app/components/message_part.dart';
import 'package:web_demo_app/components/middle_part.dart';
import 'package:web_demo_app/components/side_bar.dart';
import 'package:web_demo_app/constants.dart';
import 'package:web_demo_app/responsive.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
        color: kPrimaryColor,
        child: Responsive(
          mobile: Row(
            children: [
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 9,
                child: MiddlePart(),
              ),
            ],
          ),
          tablet: Row(
            children: [
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      MiddlePart(),
                      MessagePart(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          desktop: Row(
            children: [
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 6,
                child: MiddlePart(),
              ),
              Expanded(
                flex: 7,
                child: MessagePart(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize buildAppBar(context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
            top: 10,
            right: 10,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Responsive.isTablet(context)
                      ? SizedBox()
                      : SizedBox(
                          width: 20,
                        ),
                  IconButton(
                    icon: Image(
                      image: AssetImage('assets/icons/menu.png'),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Text(
                    'My Portfolio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: kWhiteColor,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: kWhiteColor.withOpacity(0.2),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        color: kWhiteColor,
                        size: 13,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.notifications_none_outlined,
                    color: kWhiteColor,
                    size: 23,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: kWhiteColor.withOpacity(0.3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/person.jpg'),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Hira R',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kWhiteColor,
                      letterSpacing: 0.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
