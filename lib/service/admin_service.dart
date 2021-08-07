import 'dart:convert';

import 'package:admin/models/adminfile.dart';
import 'package:admin/models/clientfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


final getDataFuture =
    ChangeNotifierProvider<GetDataFromApi>((ref) => GetDataFromApi());

class GetDataFromApi extends ChangeNotifier {
  List<adminfile> demoadminfile = [];
  GetDataFromApi() {
    getData();
  }

  Future getData() async {
    demoadminfile = [];
    try {
      http.Response response = await http
          .get(Uri.parse("http://localhost:3333/admin")
          );
// https://jsonplaceholder.typicode.com/posts
      var data = jsonDecode(response.body);
   print(data.length);
      for (int i = 0; i < data.length; i++) {
        print(adminfile.fromMap(data[i]));
        demoadminfile.add(adminfile.fromMap(data[i]));
         
      }
    } catch (e) {
      print(e.toString());
      
    }

    notifyListeners();
   
  }

}
 
  /*
 Future<void> deleteLigne_facture(int id) async {
    print("delettttttttttttttte");
    final url = "http://localhost:3333/ligne_facture/1";
      final Response response = await http.delete(
        Uri.parse(url),
        body: jsonEncode(id),
        
        headers: {
          "Content-Type": "application/json; charset=UTF-8",
          
        },
      );
      //
      if (response.statusCode == 200) {
        print("delete done");
      } else {
        throw "Failed to delete a case.";
       
      }
    }
*/
     Future<adminfile> postadmin(String nom ,String prenom , String email ,String tel , String adresse,  String login ,String pwd , String rule ) async {
   var url="http://localhost:3333/admin/";
    final Response response = await post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "id":"",
     'nom': nom,
     'prenom': prenom,
      'email': email,
       'tel': tel,
       'adresse': adresse,
      
      'login': login,
       'mdp': pwd,
       'rule': rule,
      
      }),
    );
    if (response.statusCode == 201) {
      print("Returning intervention");
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);
      return adminfile.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Ligne_facture');
    }
  }
