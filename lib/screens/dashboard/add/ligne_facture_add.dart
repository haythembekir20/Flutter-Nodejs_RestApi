import 'dart:convert';
import 'package:admin/models/ligne_facturefile.dart';
import 'package:admin/screens/main/ligne_facture.dart';
import 'package:admin/service/ligne_facture_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http ;
import 'package:http/http.dart';


class ligne_facture_add extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ligne_facture_add',
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

 
 

  var _formKey = GlobalKey<FormState>();
  final id_facture = TextEditingController();
  final desc = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add ligne facture "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField (
                decoration: InputDecoration(
                    hintText: "id_facture",
                    labelText: "id_facture",
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
             
              TextFormField (
                decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description",
                    labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                    border: InputBorder.none,
                    fillColor: Colors.black12,
                    filled: true),
                obscureText: false,
                maxLength: 20,
                controller: desc,
              ),
              SizedBox(
                height: 16,
              ),
             
                 RaisedButton(onPressed:
                  () {
                   
              postLigne_facture(id_facture.text,desc.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => ligne_facture_main(),
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