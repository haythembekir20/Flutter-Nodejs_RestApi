import 'package:admin/screens/main/tache.dart';
import 'package:admin/service/tache_service.dart';
import 'package:flutter/material.dart';



class tache_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facture add',
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
 final id_client = TextEditingController();
  final id_tech = TextEditingController();
  final etat = TextEditingController();
   final vmc = TextEditingController();
   final date_creation = TextEditingController();
  final chauffage = TextEditingController();
   
   final plomberie = TextEditingController();
   final livraison = TextEditingController();
    final   travaux = TextEditingController();
  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add tache "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "id_client",
                    labelText: "id_client",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: id_client,
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "id_tech",
                    labelText: "id_tech",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: id_tech,
              ),
              SizedBox(
                height: 16,
              ),
             TextField(
                decoration: InputDecoration(
                    hintText: "etat",
                    labelText: "etat",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:etat ,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "date_creation",
                    labelText: "date_creation",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: date_creation,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "vmc",
                    labelText: "vmc",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: vmc,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "chauffage",
                    labelText: "chauffage",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: chauffage,
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "plomberie",
                    labelText: "plomberie",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: plomberie,
              ),
              SizedBox(
                height: 16,
              ),
             TextField(
                decoration: InputDecoration(
                    hintText: "livraison",
                    labelText: "livraison",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: livraison,
              ),
              SizedBox(
                height: 16,
              ),
                TextField(
                decoration: InputDecoration(
                    hintText: "travaux",
                    labelText: "travaux",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:travaux ,
              ),
              SizedBox(
                height: 16,
              ),
              
                 RaisedButton(onPressed: () {
                   posttache(id_client.text,id_tech.text,etat.text,date_creation.text
                   ,vmc.text,chauffage.text,plomberie.text,livraison.text,travaux.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => tache_main(),
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