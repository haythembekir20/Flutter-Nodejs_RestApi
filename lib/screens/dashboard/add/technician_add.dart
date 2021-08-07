import 'package:admin/screens/main/technician.dart';
import 'package:admin/service/technicain_service.dart';
import 'package:flutter/material.dart';



class technician_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'technician add',
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
  final dern_cnx = TextEditingController();
  final nom = TextEditingController();
  final prenom = TextEditingController();
   final email = TextEditingController();
   final tel = TextEditingController();
  final adresse = TextEditingController();
   
   final login = TextEditingController();
   final mdp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add technician "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "dern_cnx",
                    labelText: "dern_cnx",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: dern_cnx,
              ),
              SizedBox(
                height: 16,
              ),
            
             TextField(
                decoration: InputDecoration(
                    hintText: "nom",
                    labelText: "nom",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: nom,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "prenom",
                    labelText: "prenom",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: prenom,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "email",
                    labelText: "email",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller:email ,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "tel",
                    labelText: "tel",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: tel ,
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
                    hintText: "login",
                    labelText: "login",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: login,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "mdp",
                    labelText: "mdp",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: mdp,
              ),
              
              SizedBox(
                height: 16,
              ),
               
                 RaisedButton(onPressed: () {
                    posttechnician(dern_cnx.text,nom.text,prenom.text,email.text,tel.text,adresse.text,login.text,mdp.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => technicianmain(),
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