import 'package:admin/screens/dashboard/Facture_intervention_screen.dart';
import 'package:admin/screens/main/Facture_intervention.dart';
import 'package:admin/service/facture_intervention_service.dart';
import 'package:flutter/material.dart';



class Facture_intervention_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facture_intervention_add',
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
 final id_facture = TextEditingController();
  final id_inter = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Facture intervention "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: "id_inter",
                    labelText: "id_inter",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: id_facture,
              ),
              SizedBox(
                height: 16,
              ),
             
              TextField(
                decoration: InputDecoration(
                    hintText: "id_facture",
                    labelText: "id_facture",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                 controller: id_inter,
              ),
              SizedBox(
                height: 16,
              ),
             
                 RaisedButton(onPressed: () {
                    postFacture_intervention(id_facture.text,id_inter.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => Factureinterventionmain(),
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