import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Dashboard1Page extends StatefulWidget {
  @override
  _Dashboard1PageState createState() => _Dashboard1PageState();
}

class _Dashboard1PageState extends State<Dashboard1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodyWidget(),
    );
  }
  Widget bodyWidget() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          forceElevated: true,
          pinned: true,
          expandedHeight: 200.0,
          iconTheme: IconThemeData(color: Colors.white),
          //title: Text('MOBİL MUHASEBE'),
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('FİRMA İSMİ'),
              background: Image.asset('images/dashboard1_sliver.png',
                fit: BoxFit.cover,
              )),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/login');
                }
            ),
          ],
        ),
        SliverList(
          delegate: SliverChildListDelegate(
              <Widget>[
                SizedBox(
                  height: 30.0,
                ),

                Row(
                  children: <Widget>[
                    Expanded(
                      child: buildTile(
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                Padding(padding: EdgeInsets.only(bottom: 16.0)),
                                Text('Top. Alacak', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22.0)),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 20.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 36,
                                    )),
                                Text('265 TL', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0)),
                                Text('100 USD', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0)),
                                Text('75 EUR', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0))
                              ]
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: buildTile(
                        Padding
                          (
                          padding: const EdgeInsets.all(15.0),
                          child: Column
                            (
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>
                              [
                                Padding(padding: EdgeInsets.only(bottom: 16.0)),
                                Text('Top. Borç', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 22.0)),
                                Container(
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 20.0),
                                    child: Divider(
                                      color: Colors.black,
                                      height: 36,
                                    )),
                                Text('265 TL', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0)),
                                Text('100 USD', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0)),
                                Text('75 EUR', style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 18.0))
                              ]
                          ),
                        ),
                      ),),
                  ],
                ),

                SizedBox(
                  height: 30.0,
                ),

                buildTile(
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text('Bu Ayki İşlemler',
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.0)),
                              SizedBox(
                                height: 150.0,
                                width: 240.0,
                                child: PageView.builder(
                                    controller: pageController,
                                    itemCount: numbers.length,
                                    itemBuilder: (BuildContext context,
                                        int index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        child: Column
                                          (
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: <Widget>
                                            [
                                              Padding(padding: EdgeInsets.only(
                                                  bottom: 16.0)),
                                              Text(numbers[index].toString(),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      fontSize: 20.0)),
                                              Container(
                                                  margin: const EdgeInsets.only(
                                                      left: 10.0, right: 20.0),
                                                  child: Divider(
                                                    color: Colors.black,
                                                    height: 36,
                                                  )),
                                              Text('265 TL',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w300,
                                                      fontSize: 18.0)),
                                              Text('100 USD',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w300,
                                                      fontSize: 18.0)),
                                              Text('75 EUR',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight: FontWeight
                                                          .w300,
                                                      fontSize: 18.0))
                                            ]
                                        ),
                                      );
                                    }),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                ),

                SizedBox(
                  height: 30.0,
                ),

                buildTile(
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Yıllara Göre Satış",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0)),
                              SizedBox(
                                width: 300.0,
                                height: 240.0,
                                child: chartWidget(),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),

                SizedBox(
                  height: 30.0,
                ),

                buildTile(
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text("Son 10 Hareket",
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20.0)),
                              SizedBox(
                                width: 325.0,
                                height: 540.0,
                                child: dataTableWidget(),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),

                SizedBox(
                  height: 80.0,
                ),
              ]
          ),
        ),
      ],
    );
  }

  PageController pageController =
  PageController(viewportFraction: 0.45, initialPage: 0);
  final List<String> numbers = ["Satış", "Alış", "Tahsilat", "Ödeme"];

  Widget buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
            onTap: onTap != null ? () => onTap() : () {
              print('Not set yet');
            },
            child: child
        )
    );
  }

  Widget chartWidget() {
    final List<charts.Series> seriesList = createSampleData();
    final bool animate = true;

    return charts.BarChart(seriesList,
      animate: animate,
      barRendererDecorator: new charts.BarLabelDecorator<String>(),
      domainAxis: new charts.OrdinalAxisSpec(),
    );
  }

  static List<charts.Series<LinearSales, String>> createSampleData() {
    final data = [
      new LinearSales("2017", 5),
      new LinearSales("2018", 25),
      new LinearSales("2019", 100),
      new LinearSales("2020", 75),
    ];

    return [
      new charts.Series<LinearSales, String>(
          id: 'Sales',
          colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: data,
          labelAccessorFn: (LinearSales sales, _) =>
          '${sales.sales.toString()}'
      )
    ];
  }

  Widget dataTableWidget() {
    return LayoutBuilder(
      builder: (context, constraints) =>
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minWidth: constraints.minWidth),
                      child: DataTable(
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
                    ),
                  ),
                ),
              ],
            ),
          ),
    );
  }
}

class LinearSales {
  final String year;
  final int sales;

  LinearSales(this.year, this.sales);
}