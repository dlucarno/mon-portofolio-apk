import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  Contact({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 7.0,
            ),
            Text(
              'Numéro de téléphone: +33 6 12 34 56 78',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Email: exemple@domaine.com',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              'Formulaire de contact:',
              style: TextStyle(fontSize: 20),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nom',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Message',
              ),
            ),
            MaterialButton(
              onPressed: () {},
              child: Text('Envoyer'),
            ),
          ],
        ),
      ),
    );
  }
}
