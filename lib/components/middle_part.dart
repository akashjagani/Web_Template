import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:web_demo_app/constants.dart';
import 'package:web_demo_app/responsive.dart';

class MiddlePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      color: kPrimaryColor,
      child: SingleChildScrollView(
        physics: Responsive.isDesktop(context)
            ? BouncingScrollPhysics()
            : NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: SingleChildScrollView(
                child: Container(
                  height: 600,
                  width: _size.width,
                  decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'My Projects',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: kWhiteColor,
                                letterSpacing: 0.5,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Pending',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: kWhiteColor.withOpacity(0.7),
                                letterSpacing: 0.5,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 20,
                              width: 1,
                              color: kWhiteColor.withOpacity(0.2),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'July,2020',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: kWhiteColor.withOpacity(0.7),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.search_outlined,
                                      color: kWhiteColor.withOpacity(0.7),
                                    ),
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kWhiteColor.withOpacity(0.7),
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: _size.width / 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  color: kPrimaryColor,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Filter',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kWhiteColor.withOpacity(0.7),
                                        letterSpacing: 0.5,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Icon(
                                      Icons.filter_alt_outlined,
                                      color: kWhiteColor.withOpacity(0.7),
                                      size: 15,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Ongoing Projects',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: kWhiteColor,
                                letterSpacing: 0.5,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                                color: kWhiteColor,
                                size: 15,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CommonBox(
                                size: _size,
                                title: 'Web Designing',
                                subTitle: 'Prototyping',
                                date: 'Feb 2, 2021',
                                per: '90 %',
                                time: '2 days Left',
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  stops: [0.65, 1],
                                  colors: [
                                    Color(0xff16161B),
                                    Color(0xFF0C5E54),
                                  ],
                                ),
                                color: Color(0xFF00C3A8),
                                val: 90,
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Expanded(
                              child: CommonBox(
                                size: _size,
                                title: 'Mobile App',
                                subTitle: 'Shopping',
                                date: 'Feb 05, 2021',
                                per: '30 %',
                                time: '3 week left',
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomLeft,
                                  stops: [0.65, 1],
                                  colors: [
                                    Color(0xff16161B),
                                    Color(0xFFE9A83D),
                                  ],
                                ),
                                color: Color(0xFFFFB740),
                                val: 30,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 35.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: CommonBox(
                                size: _size,
                                title: 'Dashboard',
                                subTitle: 'Medical',
                                date: 'March 03, 2021',
                                per: '50 %',
                                time: '2 week left',
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomLeft,
                                  stops: [0.65, 1],
                                  colors: [
                                    Color(0xff16161B),
                                    Color(0xFF90372A),
                                  ],
                                ),
                                color: Color(0xFFA63E2A),
                                val: 50,
                              ),
                            ),
                            SizedBox(
                              width: 35.0,
                            ),
                            Expanded(
                              child: CommonBox(
                                size: _size,
                                title: 'Web Designing',
                                subTitle: 'Wireframing',
                                date: 'March 08, 2021',
                                per: '20 %',
                                time: '3 week left',
                                gradient: LinearGradient(
                                  end: Alignment.topRight,
                                  begin: Alignment.bottomLeft,
                                  stops: [0.65, 1],
                                  colors: [
                                    Color(0xff16161B),
                                    Color(0xFF2E8FF6),
                                  ],
                                ),
                                color: Color(0xFF2C8FF4),
                                val: 20,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CommonBox extends StatelessWidget {
  const CommonBox({
    Key key,
    @required Size size,
    @required this.title,
    @required this.subTitle,
    @required this.date,
    @required this.per,
    @required this.time,
    @required this.gradient,
    @required this.color,
    @required this.val,
  })  : _size = size,
        super(key: key);

  final Size _size;
  final String title;
  final String subTitle;
  final String date;
  final String per;
  final String time;
  final Gradient gradient;
  final Color color;
  final int val;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(30),
        gradient: gradient,
      ),
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          date,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: kWhiteColor.withOpacity(0.7),
                            letterSpacing: 0.5,
                          ),
                        ),
                        Icon(
                          Icons.more_vert_outlined,
                          color: kWhiteColor.withOpacity(0.7),
                          size: 15,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 13,
                        color: kWhiteColor,
                        letterSpacing: 0.5,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                        color: kWhiteColor.withOpacity(0.7),
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Progress',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            color: kWhiteColor,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    FAProgressBar(
                      backgroundColor: kWhiteColor.withOpacity(0.2),
                      size: 5,
                      progressColor: color,
                      currentValue: val,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          per,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: kWhiteColor,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Divider(
                height: 1,
                color: kWhiteColor.withOpacity(0.2),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                      color: kWhiteColor.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        time,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: kWhiteColor,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 15,
            left: 15,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 25,
            child: CircleAvatar(
              radius: 10,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 50,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: color,
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 14,
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
