import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(
              Icons.more_horiz,
              size: 35,
            ),
          ],
        ),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipPath(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.green,
                ),
                clipper: CustomClipPath(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Details",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ],
              )
            ],
          ),
          Detailstile()
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 75),
        color: Colors.green,
        height: 70,
        child: Row(
          children: <Widget>[
            Text(
              "BUY IT NOW",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Spacer(),
            Container(
                height: 70,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                    ),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.green,
                      ),
                    ]),
                child: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 32,
                ))
          ],
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class Detailstile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Reviews"),
                      Row(
                        children: <Widget>[
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                          Image.asset(
                            "images/star.png",
                            height: 14,
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Product Name"),
                      Text("Rule Book",
                          style: TextStyle(color: Color(0xff009688))),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Size"),
                      Text(
                        "Medium",
                        style: TextStyle(color: Color(0xff009688)),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Price"),
                      Text(
                        "\$200",
                        style: TextStyle(color: Color(0xff009688)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 160,
                        backgroundColor: Color(0xffE1E9EE),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                        child: Image.asset(
                          "images/plant0.png",
                          height: 280,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 200),
                        height: 55,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(27),
                              topLeft: Radius.circular(27),
                            )),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                          margin: EdgeInsets.only(top: 213, right: 15),
                          child: Text(
                            "Price: \$200",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 330,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Details",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        width: 330,
                        child: Text(
                          "Lorem Ipsum is simplydummy text of the printing and typesetting industry. lpsum has been",
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
