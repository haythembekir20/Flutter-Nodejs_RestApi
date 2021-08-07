import 'package:admin/models/adminfile.dart';
import 'package:admin/service/admin_service.dart';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;



import '../../../constants.dart';
import 'delete_button/admin_button.dart';

class adminfiles extends ConsumerWidget {
  const adminfiles ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context,watch) {
     
    final viewModel = watch(getDataFuture);
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
            "Admin",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
               
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
                  label: Text("login"),
                ),
                 DataColumn(
                  label: Text("pwd"),
                ),
                  DataColumn(
                  label: Text("rule"),
                ),
                DataColumn(
                  label: Text("Delete"),
                ),
               
                
                
              ],
              rows: List.generate(
                viewModel.demoadminfile.length,
                (index) => adminfileDataRow(viewModel.demoadminfile[index]),
                
              ),
            ),
          ),
          
        ],
      ),
      
    );
    
  }
}

DataRow adminfileDataRow(adminfile fileInfo) {
  return DataRow(
    cells: [
     //DataCell(Text(fileInfo.idadmin!)),
      DataCell(Text(fileInfo.nom!)),
      DataCell(Text(fileInfo.prenom!)),
       DataCell(Text(fileInfo.email!)),
       DataCell(Text(fileInfo.tel!)),
       DataCell(Text(fileInfo.adresse!)),
      // DataCell(Text(fileInfo.descativer!)),
       DataCell(Text(fileInfo.login!)),
       DataCell(Text(fileInfo.pwd!)),
         DataCell(Text(fileInfo.rule!)),
      DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
       
    ],
  );
  
}
