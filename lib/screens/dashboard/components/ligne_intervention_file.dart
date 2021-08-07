


import 'package:admin/models/ligne_interventionfile.dart';
import 'package:admin/screens/dashboard/components/delete_button/ligne_intervention_button.dart';
import 'package:admin/service/ligne_intervention_service.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import '../../../constants.dart';

class ligne_interventionfiles extends ConsumerWidget {
  const ligne_interventionfiles ({
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
                  label: Text("idinter"),
                ),
                DataColumn(
                  label: Text("description"),
                ),
               DataColumn(
                  label: Text("Delete"),
                ),
              ],
              rows: List.generate(
                viewModel.demoligne_interventionfile.length,
                (index) => ligne_interventionfileDataRow(viewModel.demoligne_interventionfile[index]),
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
    // DataCell(Text(fileInfo.idligne!)),
      DataCell(Text(fileInfo.id_inter!)),
      DataCell(Text(fileInfo.description!)),
      DataCell(new RButton(
                          //id: ,// bid variable increments by 1 every t
                         id: fileInfo.id!
                        ))
    ],
  );
}
