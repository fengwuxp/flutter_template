
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// 头部导航

class AppBarBottomView extends StatelessWidget{

  final String title;
  final onClick;

  AppBarBottomView(
      {
        Key key,
        @required this.title='开始预定' ,
        this.onClick
      }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child:  MaterialButton(
                  onPressed: () {
                    print('点击');
                    this.onClick('测试');
                  },
                  textColor: Colors.white,
                  height: 56.0,
                  color: Color.fromARGB(255, 68, 140, 245),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              )
            ],
          )
      ),
    );
  }
}

