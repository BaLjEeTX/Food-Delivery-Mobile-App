import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Header extends StatefulWidget {
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate([
        Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: size.height / 5,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(45),
                    ),
                    boxShadow: [BoxShadow(offset: Offset(0, 0), blurRadius: 2)],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 35,
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/profile.jpg",
                              ),
                              radius: 30,
                            ),
                          ),
                          SizedBox(width: 5),
                          Column(
                            children: [
                              Text(
                                "Momo Singh",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  "Gold Member",
                                  style: TextStyle(color: Color(0xFFFFD700)),
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Text(
                            "₹200",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                height: 50,
                width: size.width,
                child: Card(
                  elevation: 3,

                  margin: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(15),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: "What would you like to have ?",
                      suffixIcon: Icon(Icons.search),
                      contentPadding: EdgeInsets.only(left: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
