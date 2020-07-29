import 'package:flutter/material.dart';

class List3Page extends StatefulWidget {
  @override
  _List3PageState createState() => _List3PageState();
}

class _List3PageState extends State<List3Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste 3'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            DataTable(
              sortColumnIndex: 0,
              sortAscending: true,
              columns: [
                DataColumn(label: Text("Tarih")),
                DataColumn(label: Text("Türü")),
                DataColumn(label: Text("Cari")),
                DataColumn(label: Text("Açıklama")),
                DataColumn(label: Text("Tutar"), numeric: true),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
                DataRow(cells: [
                  DataCell(Text("27.02.2020")),
                  DataCell(Text("Alış")),
                  DataCell(Text("Test")),
                  DataCell(Text("Ödeme")),
                  DataCell(Text("55 ₺")),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
