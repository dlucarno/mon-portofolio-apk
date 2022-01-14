import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Accueil(),
    );
  }
}

class Accueil extends StatefulWidget {
  Accueil({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: Container(
          color: Colors.blue[600],
          height: 100.0,
          child: Padding(
            padding: EdgeInsets.only(left: 50.0, right: 30.0, top: 10.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 80.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/users.png"))),
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Lebon Ardies",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Développeur Web - Developpeur Mobile",
                                  style: TextStyle(
                                    color: Colors.white60,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 7.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white60),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Download CV",
                          style:
                              TextStyle(color: Colors.white60, fontSize: 10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // body: Container(
      //   color: Colors.blue[600],
      //   height: 100.0,
      //   child: Padding(
      //     padding: EdgeInsets.only(left: 50.0, right: 30.0, top: 10.0),
      //     child: Column(
      //       children: <Widget>[
      //         Row(
      //           children: <Widget>[
      //             Container(
      //               height: 80.0,
      //               width: 80.0,
      //               decoration: BoxDecoration(
      //                   shape: BoxShape.circle,
      //                   image: DecorationImage(
      //                       fit: BoxFit.cover,
      //                       image: AssetImage("assets/users.png"))),
      //             ),
      //             SizedBox(
      //               width: 7.0,
      //             ),
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: <Widget>[
      //                 Text(
      //                   "Lebon Ardies",
      //                   textAlign: TextAlign.center,
      //                   style: TextStyle(
      //                       color: Colors.white,
      //                       fontSize: 15.0,
      //                       fontWeight: FontWeight.bold),
      //                 ),
      //                 SizedBox(
      //                   height: 7.0,
      //                 ),
      //                 Row(
      //                   children: <Widget>[
      //                     Row(
      //                       children: <Widget>[
      //                         SizedBox(
      //                           width: 8,
      //                         ),
      //                         Text(
      //                           "Développeur Web - Developpeur Mobile",
      //                           style: TextStyle(
      //                             color: Colors.white60,
      //                             fontSize: 12,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     SizedBox(
      //                       width: 7,
      //                     ),
      //                     Row(
      //                       children: <Widget>[
      //                         SizedBox(
      //                           width: 12,
      //                         ),
      //                       ],
      //                     )
      //                   ],
      //                 )
      //               ],
      //             )
      //           ],
      //         ),
      //         SizedBox(
      //           height: 7.0,
      //         ),
      //         Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //           children: <Widget>[
      //             Container(
      //               decoration: BoxDecoration(
      //                 border: Border.all(color: Colors.white60),
      //                 borderRadius: BorderRadius.circular(5.0),
      //               ),
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8.0),
      //                 child: Text(
      //                   "Download CV",
      //                   style: TextStyle(color: Colors.white60, fontSize: 10.0),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
