import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Örnekleri'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) =>
            EntryItem(data[index], context),
        itemCount: data.length,
      ),
    );
  }
}

class Entry {
  Entry(this.title, this.route, this.icon, [this.children = const <Entry>[]]);

  final String title;
  final String route;
  final Icon icon;
  final List<Entry> children;
}

final List<Entry> data = <Entry>[
  Entry('Oturum Açma', ' ', Icon(Icons.lock),
    <Entry>[
      Entry('Login 1', '/login1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Login 2', '/login2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Login 3', '/login3', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Login 4', '/login4', Icon(Icons.navigate_next, color: Colors.red,)),
    ],
  ),
  Entry('Dashboard', ' ', Icon(Icons.dashboard),
    <Entry>[
      Entry('Dashboard 1', '/dashboard1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Dashboard 2', '/dashboard2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Dashboard 3', '/dashboard3', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Dashboard 4', '/dashboard4', Icon(Icons.navigate_next, color: Colors.red,)),
    ],
  ),
  Entry('Listeler', ' ', Icon(Icons.list),
    <Entry>[
      Entry('Liste 1', '/list1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Liste 2', '/list2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Liste 3', '/list3', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Liste 4', '/list4', Icon(Icons.navigate_next, color: Colors.red,)),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry, this.context);

  final Entry entry;
  final BuildContext context;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(
      trailing: root.icon,
      title: Text(root.title),
      onTap: () {
        Navigator.pushNamed(context, root.route);
      },
    );
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      leading: root.icon,
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}