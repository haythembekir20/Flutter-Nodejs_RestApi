import 'package:admin/models/clientfile.dart';
import 'package:admin/screens/dashboard/components/delete_button/client_button.dart';
import 'package:admin/service/client_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../constants.dart';

class clientfiles extends ConsumerWidget {
  const clientfiles ({
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
            "Client",
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
                  label: Text("siteweb"),
                ),
                
                 DataColumn(
                  label: Text("raison"),
                ),
                DataColumn(
                  label: Text("Delete"),
                ),
                
                
              ],
              rows: List.generate(
                viewModel.democlientfile.length,
                (index) => clientfileDataRow(viewModel.democlientfile[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow clientfileDataRow(clientfile fileInfo) {
  return DataRow(
    cells: [
    // DataCell(Text(fileInfo.idclient!)),
      DataCell(Text(fileInfo.nom!)),
      DataCell(Text(fileInfo.prenom!)),
       DataCell(Text(fileInfo.email!)),
       DataCell(Text(fileInfo.tel!)),
       DataCell(Text(fileInfo.adresse!)),
      // DataCell(Text(fileInfo.desactiver!)),
       DataCell(Text(fileInfo.login!)),
       DataCell(Text(fileInfo.mdp!)),
         DataCell(Text(fileInfo.siteweb!)),
       //DataCell(Text(fileInfo.num_tva!)),
       DataCell(Text(fileInfo.raison!)),
        DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
