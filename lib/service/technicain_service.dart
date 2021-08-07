import 'dart:convert';

import 'package:admin/models/clientfile.dart';
import 'package:admin/models/technicianfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


final getDataFuture =
    ChangeNotifierProvider<GetDataFromApi>((ref) => GetDataFromApi());

class GetDataFromApi extends ChangeNotifier {
  List<technicianfile> demotechnicianfile = [];
  GetDataFromApi() {
    getData();
  }

  Future getData() async {
    demotechnicianfile = [];
    try {
      http.Response response = await http
          .get(Uri.parse("http://localhost:3333/technician")
          );
// https://jsonplaceholder.typicode.com/posts
      var data = jsonDecode(response.body);
   print(data.length);
      for (int i = 0; i < data.length; i++) {
        print(technicianfile.fromMap(data[i]));
        demotechnicianfile.add(technicianfile.fromMap(data[i]));
         
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
     Future<clientfile> posttechnician(String nom ,String prenom , String email ,String tel , String adresse, String dern_cnx , String login ,String pwd   ) async {
   var url="http://localhost:3333/technician/";
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
      'dern_cnx': dern_cnx,
      'login': login,
       'mdp': pwd,
      
      }),
    );
    if (response.statusCode == 201) {
      print("Returning intervention");
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);
      return clientfile.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Ligne_facture');
    }
  }
