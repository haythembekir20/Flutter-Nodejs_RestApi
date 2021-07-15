import 'package:admin/models/clientfile.dart';
import 'package:admin/models/technicianfile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';

class technicianfiles extends StatelessWidget {
  const technicianfiles ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "technician",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("idtech"),
                ),
                DataColumn(
                  label: Text("nom"),
                ),
                DataColumn(
                  label: Text("prenom"),
                ),
                DataColumn(
                  label: Text("email"),
                ),
                DataColumn(
                  label: Text("tel"),
                ),
                DataColumn(
                  label: Text("adresse"),
                ),
                 DataColumn(
                  label: Text("descativer"),
                ),
                 DataColumn(
                  label: Text("login"),
                ),
                 DataColumn(
                  label: Text("pwd"),
                ),
                  DataColumn(
                  label: Text("dern_cnx"),
                ),
               
                
                
              ],
              rows: List.generate(
                demotechnicianfile.length,
                (index) => technicianfileDataRow(demotechnicianfile[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow technicianfileDataRow(technicianfile fileInfo) {
  return DataRow(
    cells: [
     DataCell(Text(fileInfo.idtech!)),
      DataCell(Text(fileInfo.nom!)),
      DataCell(Text(fileInfo.prenom!)),
       DataCell(Text(fileInfo.email!)),
       DataCell(Text(fileInfo.tel!)),
       DataCell(Text(fileInfo.adresse!)),
       DataCell(Text(fileInfo.descativer!)),
       DataCell(Text(fileInfo.login!)),
       DataCell(Text(fileInfo.pwd!)),
         DataCell(Text(fileInfo.dern_cnx!)),
      
       
    ],
  );
}
