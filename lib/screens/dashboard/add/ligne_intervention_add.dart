import 'package:admin/screens/main/ligne_intervention.dart';
import 'package:admin/service/ligne_intervention_service.dart';
import 'package:flutter/material.dart';



class ligne_intervention_add extends StatelessWidget {
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

 final id_inter = TextEditingController();
  final desc = TextEditingController();
 

  var _formKey = GlobalKey<FormState>();

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
                    hintText: "id_inter",
                    labelText: "id_inter",
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
             
              TextField(
                decoration: InputDecoration(
                    hintText: "description",
                    labelText: "description",
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
             
                 RaisedButton(onPressed: () {
               postLigne_intervention(id_inter.text,desc.text);
             GetDataFromApi();
              
   

                 Navigator.push(context,
      MaterialPageRoute(
        builder:(context) => ligne_intervention_main(),
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