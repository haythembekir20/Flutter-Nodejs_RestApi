import 'package:admin/screens/main/intervention.dart';
import 'package:admin/service/intervention_service.dart';
import 'package:flutter/material.dart';



class intervention_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ligne_intervention_add',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _secureText = true;

  TextEditingController _passwordController = TextEditingController();
 

  var _formKey = GlobalKey<FormState>();
  final id_tache = TextEditingController();
  final adresse = TextEditingController();
  final pdf_name = TextEditingController();
  final date_deb = TextEditingController();
   final date_fin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add ligne intervention "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "id_tache",
                    labelText: "id_tache",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: id_tache,
                
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "adresse",
                    labelText: "adresse",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: adresse,
              ),
              SizedBox(
                height: 16,
              ),
             TextField(
                decoration: InputDecoration(
                    hintText: "pdf_name",
                    labelText: "pdf_name",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: pdf_name,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "date_deb",
                    labelText: "date_deb",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: date_deb,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "date_fin",
                    labelText: "date_fin",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: date_fin,
              ),
              SizedBox(
                height: 16,
              ),
                 RaisedButton(onPressed: () {
                postintervention(id_tache.text,adresse.text,pdf_name.text,date_deb.text,date_fin.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => intervention_main(),
        )
        );
              })
            ],
          ),
        ),
      ),
    );
  }
}