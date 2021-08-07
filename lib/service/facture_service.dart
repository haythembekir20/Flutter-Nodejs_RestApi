import 'dart:convert';

import 'package:admin/models/adminfile.dart';
import 'package:admin/models/clientfile.dart';
import 'package:admin/models/facturefile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';


final getDataFuture =
    ChangeNotifierProvider<GetDataFromApi>((ref) => GetDataFromApi());

class GetDataFromApi extends ChangeNotifier {
  List<facturefile> demofacturefile = [];
  GetDataFromApi() {
    getData();
  }

  Future getData() async {
    demofacturefile = [];
    try {
      http.Response response = await http
          .get(Uri.parse("http://localhost:3333/facture")
          );
// https://jsonplaceholder.typicode.com/posts
      var data = jsonDecode(response.body);
   print(data.length);
      for (int i = 0; i < data.length; i++) {
        print(facturefile.fromMap(data[i]));
        demofacturefile.add(facturefile.fromMap(data[i]));
         
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
     Future<clientfile> postfacture( String a_payer,String remise,  String tva , String total_ht ,String total_ttc, String modalite,String date_paiement,String date_envoie    ) async {
   var url="http://localhost:3333/facture/";
    final Response response = await post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, Object>{
        "id":"",
      'date_envoie': date_envoie,
      'date_paiement': date_paiement,
      'modalite_payment': modalite,
      'total_ht': total_ht,
      'total_ttc': total_ttc,
      
      'tva': tva,
      'remise': remise,
       'a_payer': a_payer,
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
