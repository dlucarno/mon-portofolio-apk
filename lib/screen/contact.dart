import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Ce widget est la racine de votre application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Démo Flutter',
      home: Accueil(title: 'Accueil'),
    );
  }
}

class Accueil extends StatefulWidget {
  Accueil({Key? key, required this.title}) : super(key: key);

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
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Container(
              color: Colors.blue[600],
              height: 100.0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.school,
                size: 50.0,
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "Éducation",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Licence en Informatique - Université de Paris",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Master en Informatique - Université de Paris",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Doctorat en Informatique - Université de Paris",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Post-Doctorat en Informatique - Université de Paris",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Icon(
                Icons.work,
                size: 50.0,
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "Expérience",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Développeur Web chez XYZ - 2 ans",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Développeur Web chez XYZ - 2 ans",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Développeur Web chez XYZ - 2 ans",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Développeur Web chez XYZ - 2 ans",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                "Développeur Web chez XYZ - 2 ans",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Icon(
                Icons.code,
                size: 50.0,
              ),
              Text(
                "Compétences",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Flutter, Dart, JavaScript, HTML, CSS",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Text(
                "Flutter, Dart, JavaScript, HTML, CSS",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
