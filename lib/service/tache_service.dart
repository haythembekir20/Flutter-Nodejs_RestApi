import 'dart:convert';
import 'package:admin/models/Facture_intervention.dart';
import 'package:admin/models/tacheFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


final getDataFuture =
    ChangeNotifierProvider<GetDataFromApi>((ref) => GetDataFromApi());

class GetDataFromApi extends ChangeNotifier {
  List<tacheFile> demotacheFiles = [];
  GetDataFromApi() {
    getDatatacheFile();
  }

  Future getDatatacheFile() async {
    demotacheFiles = [];
    try {
      http.Response response = await http
          .get(Uri.parse("http://localhost:3333/tache")
          );
// https://jsonplaceholder.typicode.com/posts
      var data = jsonDecode(response.body);
   
      for (int i = 0; i < data.length; i++) {

         print("zzz");
         
         
           print(data[i]);
        demotacheFiles.add(tacheFile.fromMap(data[i]));
         
        print("zzz");
         
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

     Future<tacheFile> posttache(String id_client , String id_tech , String etat, String date_creation, String vmc, String chauffage, String plomberie, String livraison, String travaux) async {
   var url="http://localhost:3333/tache";
    final Response response = await post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "id":"",
    'id_Client': id_client,
      'id_tech': id_tech,
       'etat': etat,
       'date_creation': date_creation,
      'vmc': vmc,
      'chauffage': chauffage,
      'plomberie': plomberie,
      'livraison': livraison,
       'travaux': travaux,
      }),
    );
    if (response.statusCode == 201) {
      print("Returning Facture_intervention");
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      print(response.body);
      return tacheFile.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load Facture_intervention');
    }
  }
