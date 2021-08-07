import 'package:admin/screens/main/client.dart';
import 'package:admin/service/client_service.dart';
import 'package:flutter/material.dart';



class client_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'client add',
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
   final siteweb = TextEditingController();
  final raison = TextEditingController();
  final nom = TextEditingController();
  final prenom = TextEditingController();
   final email = TextEditingController();
   final tel = TextEditingController();
  final adresse = TextEditingController();
   final desactiver = TextEditingController();
   final login = TextEditingController();
   final mdp = TextEditingController();
   final numtva = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Client "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "siteweb",
                    labelText: "siteweb",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: siteweb,
                  
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "raison",
                    labelText: "raison",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: raison,
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
                 controller:tel ,
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
              TextField(
                decoration: InputDecoration(
                    hintText: "num tva",
                    labelText: "num tva",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: numtva,
              ),
              
              SizedBox(
                height: 16,
              ),
               
                 RaisedButton(onPressed: () {
               postclient(siteweb.text,raison.text,nom.text,prenom.text,email.text,tel.text,adresse.text,login.text,mdp.text,numtva.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => clientmain(),
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