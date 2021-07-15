
import 'package:admin/models/Facture_intervention.dart';
import 'package:admin/models/interventionFile.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Facture_intervention_files extends StatelessWidget {
  const Facture_intervention_files ({
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
            "Facture_intervention",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 600,
              columns: [
                DataColumn(
                  label: Text("id_inter"),
                ),
                DataColumn(
                  label: Text("facture"),
                ),
               
              ],
              rows: List.generate(
                demoFacture_interventionfile.length,
                (index) => Facture_interventionDataRow(demoFacture_interventionfile[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow Facture_interventionDataRow(Facture_interventionfile fileInfo) {
  return DataRow(
    cells: [
     DataCell(Text(fileInfo.idinter!)),
      DataCell(Text(fileInfo.idfacture!)),
     
    ],
  );
}
