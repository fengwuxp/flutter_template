
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 头部导航

class AppBarView extends StatelessWidget  implements  PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new AppBar(
//      elevation:0, /// 陰影
      brightness: Brightness.light,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      title: new Text(this.title, style: TextStyle(color: Color.fromARGB(255, 51, 51, 51), fontSize: 18.0, fontWeight: FontWeight.w500)),
      centerTitle: true,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color:Color.fromARGB(255, 51, 51, 51)),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,color:Color.fromARGB(255, 51, 51, 51),size: 18.0),
        onPressed: (){
          print('menu');
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.local_phone ,color:Color.fromARGB(255, 51, 51, 51),size: 18.0),
          onPressed: (){
            print('menu');
          },
        ),
      ],
    );
  }

  final String title;

  AppBarView({Key key, @required this.title}) :super(key: key);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => getSize();


  Size getSize() {
    return new Size(100.0, 44.0);
  }
//  _AppBarViewState createState() => _AppBarViewState();
}

//class _AppBarViewState extends State<AppBarView> {
//  @override
//  Widget build(BuildContext context) {
//    return AppBar(
//      title: Text(widget.title),
//
//    );
//  }
//}

