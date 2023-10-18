import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends StatelessWidget {
  const Services({Key? key, required this.title}) : super(key: key);
  final String title;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccordionPage(),
    );
  }
}

/// Main example page
class AccordionPage extends StatelessWidget {
  static const headerStyle = TextStyle(
      color: Color(0xffffffff), fontSize: 18, fontWeight: FontWeight.bold);
  static const contentStyleHeader = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
  static const contentStyle = TextStyle(
      color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
  static const loremIpsum =
      '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';
  static const slogan =
      'Do not forget to play around with all sorts of colors, backgrounds, borders, etc.';

  const AccordionPage({Key? key}) : super(key: key);

  @override
  Widget build(context) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return Container(
                color: Colors.blue[600],
                height: 100.0,
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          height: 70.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/users.png"))),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Lebon Ardies",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              "Développeur Web - Développeur Mobile",
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white60),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Télécharger le CV",
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "MES SERVICES",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Accordion(
                headerBorderColor: Colors.blueGrey,
                headerBorderColorOpened: Colors.transparent,
                // headerBorderWidth: 1,
                headerBackgroundColorOpened: Colors.green,
                contentBackgroundColor: Colors.white,
                contentBorderColor: Colors.green,
                contentBorderWidth: 3,
                contentHorizontalPadding: 20,
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),

                children: [
                  AccordionSection(
                    isOpen: true,
                    contentVerticalPadding: 20,
                    leftIcon: const Icon(Icons.text_fields_rounded,
                        color: Colors.white),
                    header: const Text('Développement Web', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon: const Icon(Icons.input, color: Colors.white),
                    header:
                        const Text('Développement Mobile', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                  AccordionSection(
                    isOpen: true,
                    leftIcon: const Icon(Icons.child_care_rounded,
                        color: Colors.white),
                    header:
                        const Text('Développement Desktop', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon:
                        const Icon(Icons.shopping_cart, color: Colors.white),
                    header: const Text('Game Programming', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon:
                        const Icon(Icons.shopping_cart, color: Colors.white),
                    header: const Text('Game Programming', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon:
                        const Icon(Icons.shopping_cart, color: Colors.white),
                    header: const Text('Data Science', style: headerStyle),
                    content: const Text(loremIpsum, style: contentStyle),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
