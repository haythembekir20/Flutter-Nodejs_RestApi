

import 'package:admin/models/facturefile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';


import '../../../constants.dart';

class facturefiles extends StatelessWidget {
  const facturefiles ({
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
            "Facture",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("idfacture"),
                ),
                DataColumn(
                  label: Text("date_envoie"),
                ),
                DataColumn(
                  label: Text("date_paiement"),
                ),
                DataColumn(
                  label: Text("modalite"),
                ),
                DataColumn(
                  label: Text("total_ht"),
                ),
                DataColumn(
                  label: Text("total_ttc"),
                ),
                 DataColumn(
                  label: Text("tva"),
                ),
                 DataColumn(
                  label: Text("remise"),
                ),
                 DataColumn(
                  label: Text("a_payer"),
                ),
                
              ],
              rows: List.generate(
                demofacturefile.length,
                (index) => factureFileDataRow(demofacturefile[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow factureFileDataRow(facturefile fileInfo) {
  return DataRow(
    cells: [
     DataCell(Text(fileInfo.idfacture!)),
      DataCell(Text(fileInfo.date_envoie!)),
      DataCell(Text(fileInfo.date_paiement!)),
       DataCell(Text(fileInfo.modalite!)),
       DataCell(Text(fileInfo.total_ht!)),
       DataCell(Text(fileInfo.total_ttc!)),
       DataCell(Text(fileInfo.tva!)),
       DataCell(Text(fileInfo.remise!)),
       DataCell(Text(fileInfo.a_payer!)),
       
    ],
  );
}
