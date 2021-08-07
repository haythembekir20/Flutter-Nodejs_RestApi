
import 'package:admin/models/Facture_intervention.dart';
import 'package:admin/models/interventionFile.dart';
import 'package:admin/screens/dashboard/components/delete_button/facture_intervention.dart';
import 'package:admin/service/facture_intervention_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class Facture_intervention_files extends ConsumerWidget {
  const Facture_intervention_files ({
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
                  label: Text("id_facture"),
                ),
                DataColumn(
                  label: Text("Delete"),
                ),
               
              ],
              rows: List.generate(
                viewModel.demoFacture_interventionfile.length,
                (index) => Facture_interventionDataRow(viewModel.demoFacture_interventionfile[index]),
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
     DataCell(Text(fileInfo.id_inter!)),
      DataCell(Text(fileInfo.id_facture!)),
     DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
