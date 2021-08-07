import 'package:admin/screens/main/facture.dart';
import 'package:admin/service/facture_service.dart';
import 'package:flutter/material.dart';



class facture_add extends StatelessWidget {
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
 

  var _formKey = GlobalKey<FormState>();
    final siteweb = TextEditingController();
  final raison = TextEditingController();
  final nom = TextEditingController();
  final remise = TextEditingController();
   final tva = TextEditingController();
   final total_ttc = TextEditingController();
  final total_ht = TextEditingController();
   final modalite_payment = TextEditingController();
   final date_paiement = TextEditingController();
   final date_envoie = TextEditingController();
   final a_payer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Facture "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "date_envoie",
                    labelText: "date_envoie",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: date_envoie,
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "date_paiement",
                    labelText: "date_paiement",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: date_paiement,
              ),
              SizedBox(
                height: 16,
              ),
             TextField(
                decoration: InputDecoration(
                    hintText: "modalite_payment",
                    labelText: "modalite_payment",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:modalite_payment ,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "total_ht",
                    labelText: "total_ht",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:total_ht ,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "total_ttc",
                    labelText: "total_ttc",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: total_ttc,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "tva",
                    labelText: "tva",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:tva ,
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "remise",
                    labelText: "remise",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:remise ,
              ),
              SizedBox(
                height: 16,
              ),
             TextField(
                decoration: InputDecoration(
                    hintText: "a_payer",
                    labelText: "a_payer",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller:a_payer ,
              ),
              SizedBox(
                height: 16,
              ),
              
              
                 RaisedButton(onPressed: () {
                   postfacture(a_payer.text,remise.text,tva.text,total_ttc.text,total_ht.text,modalite_payment.text,date_paiement.text,date_envoie.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => facture_main(),
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