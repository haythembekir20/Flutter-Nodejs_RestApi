

import 'package:admin/models/ligne_facturefile.dart';
import 'package:admin/service/ligne_facture_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../constants.dart';
import 'delete_button/ligne_facture_rbutton.dart';

class ligne_facturefiles extends ConsumerWidget {
  const ligne_facturefiles ({
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
            "ligne_facture",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
               /* DataColumn(
                  label: Text("idligne"),
                ),
                */
                DataColumn(
                  label: Text("idligne"),
                ),
                DataColumn(
                  label: Text("description"),
                ),
               DataColumn(
                  label: Text("Delete"),
                ),
              ],
              
              rows: List.generate(
                viewModel.listDataModel.length,
                (index) => ligne_factureFileDataRow(viewModel.listDataModel[index]),
               
              ),
              
            ),
          ),
        ],
      ),
    );
  }
}


DataRow ligne_factureFileDataRow(ligne_facturefile fileInfo) {
  return DataRow(
    cells: [
      
    // DataCell(Text(int(fileInfo.id))),
      DataCell(Text(fileInfo.idfacture!)),
      DataCell(Text(fileInfo.description!)),
       DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
