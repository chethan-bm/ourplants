import 'package:flutter/material.dart';
import 'package:ourplants/data/top_categories_model.dart';

import 'data/data.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<TopCategoriesModel> topCategorieData = new List();

  @override
  void initState() {
    topCategorieData = getTopCategoriesData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Column(children: <Widget>[
              Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 420.0,
                                decoration: BoxDecoration(
                                    color: Color(0xff7ed957),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.elliptical(2200, 1300),
                                      bottomRight:
                                          Radius.elliptical(2200, 1300),
                                    )),
                                child: Stack(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 50),
                                        //height: 200.0,
                                        //width: 200.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          color: Colors.green,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.arrow_back),
                                            onPressed: () {}),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        margin: EdgeInsets.only(right: 50),
                                        //height: 200.0,
                                        //width: 200.0,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100.0),
                                          color: Colors.green,
                                        ),
                                        child: IconButton(
                                            icon: Icon(Icons.arrow_forward),
                                            onPressed: () {}),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                  icon: Icon(Icons.arrow_back_ios),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  icon: Icon(Icons.more_horiz),
                                  color: Colors.white,
                                  onPressed: () {},
                                ),
                              ),
                              SizedBox(height: 10.0),
                              Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(top: 60),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "OUR PLANTS",
                                            style: TextStyle(
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            "Lorem Ipsum Dammy Plants",
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Text("Price: \$200",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        Text("|",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        Text("Size:Medium ",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        Text("|",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                        Text("Plant:Aloevera",
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Image.asset(
                                      "images/plant0.png",
                                      fit: BoxFit.scaleDown,
                                      height: 250,
                                      width: 250,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text("Explore More",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                  )],
                              ),
                               Padding(
                                 padding: const EdgeInsets.only(left:40.0,right: 40),
                                 child: Column(
                                  children: <Widget>[
                                    Material(
                                      elevation: 0,
                                      shadowColor: Colors.grey.withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(4),
                                      child: Container(
                                        decoration: BoxDecoration(color: Colors.grey.withOpacity(0.3),
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        height: 45,
                                        child: Row(children: <Widget>[
                                          Expanded(
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Search",
                                                  border: InputBorder.none
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 16,),
                                          InkWell(
                                              // ignore: unnecessary_statements
                                              onTap: (){
                                                print("you clicked search icon");
                                              },
                                              child: Icon(Icons.search))

                            ],
                          ),
                                      ),
                                        ),
                        ],
                      ),
                               ),
                              SizedBox(height: 16,),
                              Container(
                                height: 150,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: topCategorieData.length,
                                    itemBuilder: (context, index){
                                      return TopCategoriesTile(
                                        imgAssetPath: topCategorieData[index].imgAssetPath,
                                        label: topCategorieData[index].label,
                                      );
                                    }),
                              )
                    ],
                  ),
                ],
              ),
            ]),
          ],
        ),],),],),
      ),
    );
  }
}
class TopCategoriesTile extends StatelessWidget {

  final String label;
  final String imgAssetPath;

  TopCategoriesTile({@required this.imgAssetPath, this.label,});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top:10.0),
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              color: Colors.green,
            ),
            child: Image.asset(imgAssetPath,fit: BoxFit.contain,),),
          SizedBox(height: 6,),
          Text(label)
        ],),
    );
  }
}
