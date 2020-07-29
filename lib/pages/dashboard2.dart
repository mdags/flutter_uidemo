import 'package:flutter/material.dart';
import 'package:flutter_sparkline/flutter_sparkline.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Dashboard2Page extends StatefulWidget {
  @override
  _Dashboard2PageState createState() => _Dashboard2PageState();
}

class _Dashboard2PageState extends State<Dashboard2Page> {
  final List<List<double>> charts =
  [
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4,],
    [0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4, 0.0, 0.3, 0.7, 0.6, 0.55, 0.8, 1.2, 1.3, 1.35, 0.9, 1.5, 1.7, 1.8, 1.7, 1.2, 0.8, 1.9, 2.0, 2.2, 1.9, 2.2, 2.1, 2.0, 2.3, 2.4, 2.45, 2.6, 3.6, 2.6, 2.7, 2.9, 2.8, 3.4]
  ];

  static final List<String> chartDropdownItems = [ 'Son 7 gün', 'Geçen ay', 'Geçen yıl' ];
  String actualDropdown = chartDropdownItems[0];
  int actualChart = 0;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          elevation: 2.0,
          title: Text('Dashboard 2',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30.0)
          ),
        ),
        body: StaggeredGridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: <Widget>[
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Toplam Görüntüleme', style: TextStyle(color: Colors.blueAccent)),
                          Text('265K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      Material
                        (
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center
                            (
                              child: Padding
                                (
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.timeline, color: Colors.white, size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
            ),
            _buildTile(
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Material
                        (
                          color: Colors.teal,
                          shape: CircleBorder(),
                          child: Padding
                            (
                            padding: const EdgeInsets.all(16.0),
                            child: Icon(Icons.settings_applications, color: Colors.white, size: 30.0),
                          )
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Genel', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                      Text('Resimler, Videolar', style: TextStyle(color: Colors.black45)),
                    ]
                ),
              ),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Column
                  (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Material
                        (
                          color: Colors.amber,
                          shape: CircleBorder(),
                          child: Padding
                            (
                            padding: EdgeInsets.all(16.0),
                            child: Icon(Icons.notifications, color: Colors.white, size: 30.0),
                          )
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 16.0)),
                      Text('Uyarılar', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 24.0)),
                      Text('Tümü ', style: TextStyle(color: Colors.black45)),
                    ]
                ),
              ),
            ),
            _buildTile(
              Padding
                (
                  padding: const EdgeInsets.all(24.0),
                  child: Column
                    (
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>
                    [
                      Row
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Column
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('Satış', style: TextStyle(color: Colors.green)),
                              Text('\$16K', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                            ],
                          ),
                          DropdownButton
                            (
                              isDense: true,
                              value: actualDropdown,
                              onChanged: (String value) => setState(()
                              {
                                actualDropdown = value;
                                actualChart = chartDropdownItems.indexOf(value); // Refresh the chart
                              }),
                              items: chartDropdownItems.map((String title)
                              {
                                return DropdownMenuItem
                                  (
                                  value: title,
                                  child: Text(title, style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400, fontSize: 14.0)),
                                );
                              }).toList()
                          )
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom: 4.0)),
                      Sparkline
                        (
                        data: charts[actualChart],
                        lineWidth: 5.0,
                        lineColor: Colors.greenAccent,
                      )
                    ],
                  )
              ),
            ),
            _buildTile(
              Padding
                (
                padding: const EdgeInsets.all(24.0),
                child: Row
                  (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>
                    [
                      Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          Text('Siparişler', style: TextStyle(color: Colors.redAccent)),
                          Text('173', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0))
                        ],
                      ),
                      Material
                        (
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(24.0),
                          child: Center
                            (
                              child: Padding
                                (
                                padding: EdgeInsets.all(16.0),
                                child: Icon(Icons.store, color: Colors.white, size: 30.0),
                              )
                          )
                      )
                    ]
                ),
              ),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ShopItemsPage())),
            )
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 110.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(2, 220.0),
            StaggeredTile.extent(2, 110.0),
          ],
        )
    );
  }

  Widget _buildTile(Widget child, {Function() onTap}) {
    return Material(
        elevation: 14.0,
        borderRadius: BorderRadius.circular(12.0),
        shadowColor: Color(0x802196F3),
        child: InkWell
          (
          // Do onTap() if it isn't null, otherwise do print()
            onTap: onTap != null ? () => onTap() : () { print('Not set yet'); },
            child: child
        )
    );
  }
}

class ShopItemsPage extends StatefulWidget
{
  @override
  _ShopItemsPageState createState() => _ShopItemsPageState();
}

class _ShopItemsPageState extends State<ShopItemsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
        appBar: AppBar
          (
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          leading: IconButton
            (
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
          title: Text('Shop Items (3)', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700)),
          // actions: <Widget>
          // [
          //   Container
          //   (
          //     margin: EdgeInsets.only(right: 8.0),
          //     child: Row
          //     (
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: <Widget>
          //       [
          //         Text('beclothed.com', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14.0)),
          //         Icon(Icons.arrow_drop_down, color: Colors.black54)
          //       ],
          //     ),
          //   )
          // ],
        ),
        body: ListView
          (
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>
          [
            Container
              (
                margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 54.0),
                child: Material
                  (
                  elevation: 8.0,
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(32.0),
                  child: InkWell
                    (
                    onTap: () {},
                    child: Padding
                      (
                      padding: EdgeInsets.all(12.0),
                      child: Row
                        (
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>
                        [
                          Icon(Icons.add, color: Colors.white),
                          Padding(padding: EdgeInsets.only(right: 16.0)),
                          Text('ADD A ITEM', style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                  ),
                )
            ),
            ShopItem(),
            BadShopItem(),
            NewShopItem()
          ],
        )
    );
  }
}

class ShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.white,
                        child: InkWell
                          (
                          onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => ItemReviewsPage())),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('4.6', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.black, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Text('Bought', style: TextStyle()),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text('1,361', style: TextStyle(fontWeight: FontWeight.w700)),
                                    ),
                                    Text('times for a profit of', style: TextStyle()),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Material
                                        (
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.green,
                                        child: Padding
                                          (
                                          padding: EdgeInsets.all(4.0),
                                          child: Text('\$ 13K', style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// Item image
                    Align
                      (
                      alignment: Alignment.topRight,
                      child: Padding
                        (
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize
                          (
                          size: Size.fromRadius(54.0),
                          child: Material
                            (
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset('res/shoes1.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, left: 32.0),
            child: Material
              (
              elevation: 12.0,
              color: Colors.transparent,
              borderRadius: BorderRadius.only
                (
                topLeft: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                decoration: BoxDecoration
                  (
                    gradient: LinearGradient
                      (
                        colors: [ Color(0xFF84fab0), Color(0xFF8fd3f4) ],
                        end: Alignment.topLeft,
                        begin: Alignment.bottomRight
                    )
                ),
                child: Container
                  (
                  margin: EdgeInsets.symmetric(vertical: 4.0),
                  child: ListTile
                    (
                    leading: CircleAvatar
                      (
                      backgroundColor: Colors.purple,
                      child: Text('AI'),
                    ),
                    title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                    subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle()),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BadShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Stack
        (
        children: <Widget>
        [
          /// Item card
          Align
            (
            alignment: Alignment.topCenter,
            child: SizedBox.fromSize
              (
                size: Size.fromHeight(172.0),
                child: Stack
                  (
                  fit: StackFit.expand,
                  children: <Widget>
                  [
                    /// Item description inside a material
                    Container
                      (
                      margin: EdgeInsets.only(top: 24.0),
                      child: Material
                        (
                        elevation: 14.0,
                        borderRadius: BorderRadius.circular(12.0),
                        shadowColor: Color(0x802196F3),
                        color: Colors.transparent,
                        child: Container
                          (
                          decoration: BoxDecoration
                            (
                              gradient: LinearGradient
                                (
                                  colors: [ Color(0xFFDA4453), Color(0xFF89216B) ]
                              )
                          ),
                          child: Padding
                            (
                            padding: EdgeInsets.all(24.0),
                            child: Column
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>
                              [
                                /// Title and rating
                                Column
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>
                                  [
                                    Text('Nike Jordan III', style: TextStyle(color: Colors.white)),
                                    Row
                                      (
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>
                                      [
                                        Text('1.3', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                        Icon(Icons.star, color: Colors.amber, size: 24.0),
                                      ],
                                    ),
                                  ],
                                ),
                                /// Infos
                                Row
                                  (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>
                                  [
                                    Text('Bought', style: TextStyle(color: Colors.white)),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Text('3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
                                    ),
                                    Text('times for a profit of', style: TextStyle(color: Colors.white)),
                                    Padding
                                      (
                                      padding: EdgeInsets.symmetric(horizontal: 4.0),
                                      child: Material
                                        (
                                        borderRadius: BorderRadius.circular(8.0),
                                        color: Colors.green,
                                        child: Padding
                                          (
                                          padding: EdgeInsets.all(4.0),
                                          child: Text('\$ 363', style: TextStyle(color: Colors.white)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    /// Item image
                    Align
                      (
                      alignment: Alignment.topRight,
                      child: Padding
                        (
                        padding: EdgeInsets.only(right: 16.0),
                        child: SizedBox.fromSize
                          (
                          size: Size.fromRadius(54.0),
                          child: Material
                            (
                            elevation: 20.0,
                            shadowColor: Color(0x802196F3),
                            shape: CircleBorder(),
                            child: Image.asset('res/shoes1.png'),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ),
          /// Review
          Padding
            (
            padding: EdgeInsets.only(top: 160.0, right: 32.0,),
            child: Material
              (
              elevation: 12.0,
              color: Colors.white,
              borderRadius: BorderRadius.only
                (
                topRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              child: Container
                (
                margin: EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile
                  (
                  leading: CircleAvatar
                    (
                    backgroundColor: Colors.purple,
                    child: Text('AI'),
                  ),
                  title: Text('Ivascu Adrian ★☆☆☆☆'),
                  subtitle: Text('The shoes that arrived weren\'t the same as the ones in the image...', maxLines: 2, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NewShopItem extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Padding
      (
      padding: EdgeInsets.only(bottom: 16.0),
      child: Align
        (
        alignment: Alignment.topCenter,
        child: SizedBox.fromSize
          (
            size: Size.fromHeight(172.0),
            child: Stack
              (
              fit: StackFit.expand,
              children: <Widget>
              [
                /// Item description inside a material
                Container
                  (
                  margin: EdgeInsets.only(top: 24.0),
                  child: Material
                    (
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(12.0),
                    shadowColor: Color(0x802196F3),
                    color: Colors.white,
                    child: Padding
                      (
                      padding: EdgeInsets.all(24.0),
                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>
                        [
                          /// Title and rating
                          Column
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>
                            [
                              Text('[New] Nike Jordan III', style: TextStyle(color: Colors.blueAccent)),
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Text('No reviews', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 34.0)),
                                ],
                              ),
                            ],
                          ),
                          /// Infos
                          Row
                            (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Text('Bought', style: TextStyle()),
                              Padding
                                (
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text('0', style: TextStyle(fontWeight: FontWeight.w700)),
                              ),
                              Text('times for a profit of', style: TextStyle()),
                              Padding
                                (
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                child: Material
                                  (
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.green,
                                  child: Padding
                                    (
                                    padding: EdgeInsets.all(4.0),
                                    child: Text('\$ 0', style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                /// Item image
                Align
                  (
                  alignment: Alignment.topRight,
                  child: Padding
                    (
                    padding: EdgeInsets.only(right: 16.0),
                    child: SizedBox.fromSize
                      (
                      size: Size.fromRadius(54.0),
                      child: Material
                        (
                        elevation: 20.0,
                        shadowColor: Color(0x802196F3),
                        shape: CircleBorder(),
                        child: Image.asset('res/shoes1.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}

class ItemReviewsPage extends StatefulWidget
{
  @override
  _ItemReviewsPageState createState() => _ItemReviewsPageState();
}

class _ItemReviewsPageState extends State<ItemReviewsPage>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: CustomScrollView
        (
        slivers: <Widget>
        [
          SliverAppBar
            (
            expandedHeight: 170.0,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar
              (
              title: Text('Nike Jordan Air III'),
              background: SizedBox.expand
                (
                child: Stack
                  (
                  alignment: Alignment.center,
                  children: <Widget>
                  [
                    Image.asset('res/shoes1.png'),
                    Container(color: Colors.black26)
                  ],
                ),
              ),
            ),
            elevation: 2.0,
            forceElevated: true,
            pinned: true,
          ),
          SliverList
            (
            delegate: SliverChildListDelegate
              (
                <Widget>
                [
                  /// Rating average
                  Center
                    (
                    child: Container
                      (
                      margin: EdgeInsets.only(top: 16.0),
                      child: Text
                        (
                          '4.6',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 64.0)
                      ),
                    ),
                  ),
                  /// Rating stars
                  Padding
                    (
                    padding: EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row
                      (
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>
                      [
                        Icon(Icons.star, color: Colors.amber, size: 48.0),
                        Icon(Icons.star, color: Colors.amber, size: 48.0),
                        Icon(Icons.star, color: Colors.amber, size: 48.0),
                        Icon(Icons.star, color: Colors.amber, size: 48.0),
                        Icon(Icons.star, color: Colors.black12, size: 48.0),
                      ],
                    ),
                  ),
                  /// Rating chart lines
                  Padding
                    (
                    padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                    child: Column
                      (
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>
                      [
                        /// 5 stars and progress bar
                        Padding
                          (
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row
                            (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 24.0)),
                              Expanded
                                (
                                child: Theme
                                  (
                                  data: ThemeData(accentColor: Colors.green),
                                  child: LinearProgressIndicator
                                    (
                                    value: 0.9,
                                    backgroundColor: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding
                          (
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row
                            (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 24.0)),
                              Expanded
                                (
                                child: Theme
                                  (
                                  data: ThemeData(accentColor: Colors.lightGreen),
                                  child: LinearProgressIndicator
                                    (
                                    value: 0.7,
                                    backgroundColor: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding
                          (
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row
                            (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 24.0)),
                              Expanded
                                (
                                child: Theme
                                  (
                                  data: ThemeData(accentColor: Colors.yellow),
                                  child: LinearProgressIndicator
                                    (
                                    value: 0.25,
                                    backgroundColor: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding
                          (
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row
                            (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 24.0)),
                              Expanded
                                (
                                child: Theme
                                  (
                                  data: ThemeData(accentColor: Colors.orange),
                                  child: LinearProgressIndicator
                                    (
                                    value: 0.07,
                                    backgroundColor: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding
                          (
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: Row
                            (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>
                            [
                              Row
                                (
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>
                                [
                                  Icon(Icons.star, color: Colors.black54, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                  Icon(Icons.star, color: Colors.black12, size: 16.0),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(right: 24.0)),
                              Expanded
                                (
                                child: Theme
                                  (
                                  data: ThemeData(accentColor: Colors.red),
                                  child: LinearProgressIndicator
                                    (
                                    value: 0.12,
                                    backgroundColor: Colors.black12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Container
                        (
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: Container
                          (
                          child: ListTile
                            (
                            leading: CircleAvatar
                              (
                              backgroundColor: Colors.purple,
                              child: Text('AI'),
                            ),
                            title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                            subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking.', style: TextStyle()),
                          ),
                        ),
                      ),
                    ),
                  ),
                  /// Review reply
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Row
                      (
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Material
                          (
                          elevation: 12.0,
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only
                            (
                            topLeft: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                          child: Container
                            (
                            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
                            child: Text('Happy to hear that!', style: Theme.of(context).textTheme.subhead),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Container
                        (
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: Column
                          (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>
                          [
                            Container
                              (
                              child: ListTile
                                (
                                leading: CircleAvatar
                                  (
                                  backgroundColor: Colors.purple,
                                  child: Text('AI'),
                                ),
                                title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                                subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', style: TextStyle()),
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 4.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.reply, color: Colors.blueAccent),
                                  label: Text('Reply', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 16.0))
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  /// Review
                  Padding
                    (
                    padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
                    child: Material
                      (
                      elevation: 12.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.only
                        (
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0),
                      ),
                      child: Container
                        (
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                        child: Column
                          (
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>
                          [
                            Container
                              (
                              child: ListTile
                                (
                                leading: CircleAvatar
                                  (
                                  backgroundColor: Colors.purple,
                                  child: Text('AI'),
                                ),
                                title: Text('Ivascu Adrian ★★★★★', style: TextStyle()),
                                subtitle: Text('The shoes were shipped one day before the shipping date, but this wasn\'t at all a problem :). The shoes are very comfortable and good looking', style: TextStyle()),
                              ),
                            ),
                            Padding
                              (
                              padding: EdgeInsets.only(top: 4.0, right: 10.0),
                              child: FlatButton.icon
                                (
                                  onPressed: () {},
                                  icon: Icon(Icons.reply, color: Colors.blueAccent),
                                  label: Text('Reply', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w700, fontSize: 16.0))
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ],
      ),
    );
  }
}