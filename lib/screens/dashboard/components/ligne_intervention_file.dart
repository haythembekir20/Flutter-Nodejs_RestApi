

import 'package:admin/models/ligne_facturefile.dart';
import 'package:admin/models/ligne_interventionfile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ligne_interventionfiles extends StatelessWidget {
  const ligne_interventionfiles ({
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
            "ligne_intervention",
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
                  label: Text("idinter"),
                ),
                DataColumn(
                  label: Text("description"),
                ),
               
              ],
              rows: List.generate(
                demoligne_interventionfile.length,
                (index) => ligne_interventionfileDataRow(demoligne_interventionfile[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow ligne_interventionfileDataRow(ligne_interventionfile fileInfo) {
  return DataRow(
    cells: [
     DataCell(Text(fileInfo.idligne!)),
      DataCell(Text(fileInfo.idinter!)),
      DataCell(Text(fileInfo.description!)),
      
    ],
  );
}
