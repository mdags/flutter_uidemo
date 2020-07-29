import 'package:flutter/material.dart';
import 'package:flutter_uidemo/pages/settings.dart';
import 'package:flutter_uidemo/ui/helper/hexcolor.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> getSettings() async {
    final prefs = await SharedPreferences.getInstance();
    Variables.primaryColor = HexColor.fromHex(prefs.get("primary")) ?? Colors.blueAccent;
    Variables.secondaryColor = HexColor.fromHex(prefs.get("secondary")) ?? Colors.blue;
    Variables.splashUrl = prefs.get("splash") ?? "";
    Variables.logoUrl = prefs.get("logo") ?? "";
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getSettings();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Örnekleri'),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              Navigator.of(context).push(
                  new MaterialPageRoute(
                      builder: (context) => SettingsPage()
                  ));
            },
          )
        ],
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
      Entry('Login 3', '/login3onboard', Icon(Icons.navigate_next, color: Colors.red,)),
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
  Entry('Navigation', ' ', Icon(Icons.menu),
    <Entry>[
      Entry('Alt Nav 1', '/altnav1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Alt Nav 2', '/altnav2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Yan Nav 1', '/yannav1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Yan Nav 2', '/yannav2', Icon(Icons.navigate_next, color: Colors.red,)),
    ],
  ),
  Entry('Listeler', ' ', Icon(Icons.list),
    <Entry>[
      Entry('Liste 1', '/list1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Liste 2', '/list4', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Yatay Liste', '/list2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Data Table', '/list3', Icon(Icons.navigate_next, color: Colors.red,)),
    ],
  ),
  Entry('Detay Ekranlar', ' ', Icon(Icons.format_color_text),
    <Entry>[
      Entry('Detay 1', '/detay1', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Detay 2', '/detay2', Icon(Icons.navigate_next, color: Colors.red,)),
      Entry('Detay 3', '/detay3', Icon(Icons.navigate_next, color: Colors.red,)),
      //Entry('Detay 4', '/detay4', Icon(Icons.navigate_next, color: Colors.red,)),
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