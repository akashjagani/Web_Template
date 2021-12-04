import 'package:flutter/material.dart';
import 'package:web_demo_app/constants.dart';
import 'package:web_demo_app/responsive.dart';

class MessagePart extends StatefulWidget {
  @override
  _MessagePartState createState() => _MessagePartState();
}

class _MessagePartState extends State<MessagePart> {
  Offset translate = Offset(0, 0);
  Color color = kPrimaryColor;

  List<Map<String, dynamic>> cardList = [
    {'image': 'assets/images/pro1.jpg', 'name': 'David'},
    {'image': 'assets/images/pro2.jpg', 'name': 'Stephanie'},
    {'image': 'assets/images/pro3.jpg', 'name': 'William'},
    {'image': 'assets/images/pro4.jpg', 'name': 'Alona'},
    {'image': 'assets/images/pro5.jpg', 'name': 'Hira'},
    {'image': 'assets/images/pro6.jpg', 'name': 'Oliver'},
    {'image': 'assets/images/pro7.jpg', 'name': 'Jack'},
    {'image': 'assets/images/pro8.jpg', 'name': 'Jacob'},
    {'image': 'assets/images/pro9.jpg', 'name': 'Liam'},
    {'image': 'assets/images/pro10.jpeg', 'name': 'Mason'},
  ];

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height,
      color: kPrimaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Client Messages',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kWhiteColor,
                    letterSpacing: 0.5,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.search_outlined,
                  color: kWhiteColor.withOpacity(0.7),
                  size: 18,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: kWhiteColor.withOpacity(0.7),
                  size: 18,
                ),
              ],
            ),
            //Spacer(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                //height: _size.height / 1.24,
                width: _size.width,
                color: Colors.transparent,
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    onHover: (isHovering) {
                      if (isHovering) {
                        setState(() {
                          color = Colors.red;
                        });
                      } else {
                        setState(() {
                          color = kPrimaryColor;
                        });
                      }
                    },
                    child: Container(
                      height: 80,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 30,
                          ),
                          CircleAvatar(
                            backgroundColor: kTransparentColor,
                            backgroundImage: AssetImage(
                              cardList[index]['image'],
                            ),
                          ),
                          //Spacer(),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              height: 80,
                              //width: _size.width / 3,
                              color: Colors.transparent,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          cardList[index]['name'],
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: kWhiteColor,
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                        Spacer(),
                                        Icon(
                                          Icons.star_border_outlined,
                                          color: kWhiteColor,
                                          size: 18,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Hey tell me about progress of project? Waiting for your response.',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: kWhiteColor.withOpacity(0.7),
                                          letterSpacing: 0.5,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Spacer(),
                                        Text(
                                          '21 July',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            color: kWhiteColor.withOpacity(0.7),
                                            letterSpacing: 0.5,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider(
                      color: kTransparentColor,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
