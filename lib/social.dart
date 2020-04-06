import 'package:flutter/material.dart';
import 'package:socialapp/data.dart';

class SocialApp extends StatefulWidget {
  SocialApp({Key key}) : super(key: key);

  @override
  _SocialAppState createState() => _SocialAppState();
}

class _SocialAppState extends State<SocialApp> {
  bool tap = true;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                width: screenWidth,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.account_box,
                          color: Colors.grey,
                        )),
                    Flexible(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.only(left: 16, right: 5),
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: InputBorder.none,
                                suffixIcon: Icon(Icons.search)),
                          ),
                        )),
                    Flexible(
                        flex: 2,
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.favorite_border,
                                size: 20.0, color: Colors.grey),
                            SizedBox(width: 10),
                            Icon(Icons.camera_alt,
                                size: 20.0, color: Colors.grey),
                          ],
                        )),
                  ],
                ),
              ),
            ),
            //
            Container(
                margin: EdgeInsets.all(16.0),
                padding: EdgeInsets.only(bottom: 2.0),
                height: 34,
                // color: Colors.amber,
                width: screenWidth,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    searchlist("#Corona "),
                    searchlist("#gaming"),
                    searchlist("#Corona"),
                    searchlist("#Fashion"),
                    searchlist("#Oh Corona"),
                  ],
                )),

            //start list buildeer
            Container(
              height: 455, //for listbuilder hight
              // color: Colors.red,
              width: screenWidth,
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: sociallist.length,
                itemBuilder: (context, int index) {
                  return Container(
                      height: 240, //for layout height
                      width: screenWidth,
                      child: Column(
                        children: <Widget>[
                          Flexible(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  //1st
                                  Expanded(
                                    flex: 1,
                                    //1st backgroud container
                                    child: Container(
                                      height: double.infinity,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.1),
                                                spreadRadius: 2,
                                                blurRadius: 4)
                                          ]),
                                      //start 2 expn for imag and txt and avatar
                                      child: Column(
                                        children: <Widget>[
                                          //image
                                          Expanded(
                                              flex: 3,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(16.0),
                                                    topRight:
                                                        Radius.circular(16.0)),
                                                image: DecorationImage(
                                                    image: NetworkImage(
                                                        sociallist[index]
                                                            .image),
                                                    fit: BoxFit.cover),
                                              ))),
                                          //txt
                                          Expanded(
                                              flex: 1,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8,
                                                    right: 14,
                                                    bottom: 8),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 40),
                                                      child: Text(
                                                          sociallist[index]
                                                              .title,
                                                          style: TextStyle(
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: <Widget>[
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Text(
                                                              sociallist[index]
                                                                  .time,
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                            Text(
                                                                sociallist[
                                                                        index]
                                                                    .name,
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        10.0,
                                                                    color: Colors
                                                                        .grey,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold))
                                                          ],
                                                        ),
                                                        ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        32.0),
                                                            child: Image(
                                                                image: NetworkImage(
                                                                    sociallist[
                                                                            index]
                                                                        .profileImage),
                                                                height: 32,
                                                                width: 32,
                                                                fit: BoxFit
                                                                    .cover))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ));
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 52,
          width: screenWidth,
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                        left: 20.0, right: 3.0, top: 12.0, bottom: 12.0),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.priority_high,
                            size: 20.0, color: Colors.red),
                        Text(" News Feeds",
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  )),
              Expanded(
                  flex: 1,
                  child: Icon(Icons.chat_bubble_outline,
                      size: 28.0, color: Colors.grey)),
              Expanded(
                  flex: 1,
                  child: Icon(Icons.supervisor_account,
                      size: 28.0, color: Colors.grey)),
            ],
          ),
        ),
      ),
    );
  }

  Widget searchlist(String txt) {
    return Container(
      margin: EdgeInsets.only(right: 12.0),
      height: 32,
      width: 90,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: Center(
        child: Text(
          "$txt",
          style: TextStyle(
              color: Colors.grey, fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
