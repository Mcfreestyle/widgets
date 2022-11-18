import 'package:flutter/material.dart';

class MyDataTable extends StatelessWidget {
  const MyDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    final List<dynamic> products = [
      {
        'name': 'CocaCola',
        'description': '500ml',
        'purchase': '2.00',
        'sale': '3.50'
      },
      {
        'name': 'Inka COla',
        'description': '500ml',
        'purchase': '1.00',
        'sale': '3.50'
      },
      {
        'name': 'Oreo',
        'description': '1 UND',
        'purchase': '2.00',
        'sale': '3.00'
      },
      {
        'name': 'Gloria',
        'description': 'Leche 1T',
        'purchase': '2.00',
        'sale': '5.50'
      },
      {
        'name': 'Ariel',
        'description': '500Kg',
        'purchase': '2.00',
        'sale': '4.00'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DataTable'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: DataTable(
            border: TableBorder.all(color: Colors.white),
            columns: const [
              DataColumn(label: Text('Name')),
              DataColumn(label: Text('Description')),
              DataColumn(label: Text('Purchase Price')),
              DataColumn(label: Text('Sale Price')),
            ],
            rows: products.map((product) {
              return DataRow(cells: [
                DataCell(Text(product['name'])),
                DataCell(Text(product['description'])),
                DataCell(Text("S/. ${product['purchase']}")),
                DataCell(Text("S/. ${product['sale']}")),
              ]);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
