import 'package:counter_7/main.dart';
import 'package:counter_7/tambah_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/data_model.dart';
import 'package:counter_7/drawer.dart';

// class DataModel extends ChangeNotifier {
//   List<Budget> budgets = [];
//   List<Budget> get userBudget => budgets;

//   void add(Budget budget) {
//     budgets.add(budget);
//     notifyListeners();
//   }
// }

class MyDataPage extends StatelessWidget {
  const MyDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: DrawerSection(),
        body: SingleChildScrollView(
          child: Budget.daftarBudget.isEmpty
              ? Column(
                  children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Tidak ada data!',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                )
              : Align(
                  alignment: Alignment.topCenter,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: Budget.daftarBudget.map((Budget data) {
                      return Card(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    data.judul,
                                    style: const TextStyle(fontSize: 20.0),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(data.nominal.toString(),
                                      style: const TextStyle(fontSize: 14.0)),
                                  Text(
                                    data.tipe,
                                    style: const TextStyle(fontSize: 14.0),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
        ));
  }
}

// class _MyDataPageState extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var daftarBudget = context.rea<DataModel>();
//     return ListView.builder(
//       itemCount: daftarBudget.items.length,
//       itemBuilder: (context, index) => ListTile(
//         title: Card(),
//       ),
//     );
//   }
// }
