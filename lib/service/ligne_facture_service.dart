import 'dart:convert';

import 'package:admin/models/ligne_facturefile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


final getDataFuture =
    ChangeNotifierProvider<GetDataFromApi>((ref) => GetDataFromApi());

class GetDataFromApi extends ChangeNotifier {
  List<ligne_facturefile> listDataModel = [];
  GetDataFromApi() {
    getData();
  }

  Future getData() async {
    listDataModel = [];
    try {
      http.Response response = await http
          .get(Uri.parse("http://localhost:3333/ligne_facture")
          );
// https://jsonplaceholder.typicode.com/posts
      var data = jsonDecode(response.body);
   
      for (int i = 0; i < data.length; i++) {
        listDataModel.add(ligne_facturefile.fromMap(data[i]));
         
      }
    } catch (e) {
      print(e.toString());
      
    }

    notifyListeners();
   
  }

}
 
  
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

     Future<ligne_facturefile> postLigne_facture(String id_facture , String description ) async {
   var url="http://localhost:3333/ligne_facture/";
    final Response response = await post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "id":"",
    "id_facture":id_facture ,
    "description":description,
      }),
    );
    if (response.statusCode == 201) {
      print("Returning Ligne_facture");
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);
      return ligne_facturefile.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Ligne_facture');
    }
  }
