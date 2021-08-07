import 'package:admin/service/ligne_facture_service.dart';
import 'package:flutter/material.dart';

class RButton extends StatelessWidget {
  final int id;
  

  const RButton({required this.id});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        child: FlatButton(
          
          onPressed: () {
           deleteLigne_facture(id);
          },
          textColor: Colors.red,
          child: Text("Delete"),
        ));
  }
}