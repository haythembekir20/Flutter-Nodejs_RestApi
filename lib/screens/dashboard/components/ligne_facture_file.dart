

import 'package:admin/models/ligne_facturefile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ligne_facturefiles extends StatelessWidget {
  const ligne_facturefiles ({
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
            "ligne_facture",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("idligne"),
                ),
                DataColumn(
                  label: Text("idligne"),
                ),
                DataColumn(
                  label: Text("description"),
                ),
               
              ],
              rows: List.generate(
                demoligne_facturefile.length,
                (index) => ligne_factureFileDataRow(demoligne_facturefile[index]),
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
     DataCell(Text(fileInfo.idligne!)),
      DataCell(Text(fileInfo.idfacture!)),
      DataCell(Text(fileInfo.description!)),
      
    ],
  );
}
