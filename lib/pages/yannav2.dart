import 'package:flutter/material.dart';
import 'package:flutter_uidemo/ui/helper/variables.dart';

class YanNav2Page extends StatefulWidget {
  @override
  _YanNav2PageState createState() => _YanNav2PageState();
}

class _YanNav2PageState extends State<YanNav2Page> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.grey.shade800;
  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Yan Nav 2'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text('Yan Nav 2'),
          ),
          RaisedButton(
            child: Text('Geri'),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.orange, Colors.deepOrange])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: Variables.logoUrl==""? AssetImage('images/login1_logo.png'):NetworkImage(Variables.logoUrl),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "kullanıcı adı",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "@email.com",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Ana Menü"),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "Profilim"),
                  _buildDivider(),
                  _buildRow(Icons.message, "Mesajlar", showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Bildirimler",
                      showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Ayarlar"),
                  _buildDivider(),
                  _buildRow(Icons.email, "Bize Yazın"),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Yardım"),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: divider,
    );
  }

  Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(
        size.width, size.height - (size.height / 4), size.width - 40,
        size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}