
///头部筛选导航
import 'package:flutter/material.dart';



class AppFilterBarView extends StatefulWidget {

  final String name;
  final List<dynamic> filterData;

  const AppFilterBarView({
    this.name,
    this.filterData,
  });

  @override
  _AppFilterBarViewState createState() => _AppFilterBarViewState();
}

class _AppFilterBarViewState extends State<AppFilterBarView> {

  @override
  Widget build(BuildContext context) {
    print('打印：${widget.name}');
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Center(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '城市',
                        style: TextStyle(
                          color: Color.fromARGB(255, 68, 140, 245),
                          fontSize: 14.0,
                        )
                    ),
                    Icon(Icons.expand_more,color: Color.fromARGB(255, 68, 140, 245),)
                  ],
                )
            ),
          ),
          Expanded(
            child: Center(
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                        '天數/日期',
                        style: TextStyle(
                          color: Color.fromARGB(255, 68, 140, 245),
                          fontSize: 14.0,
                        )
                    ),
                    Icon(Icons.expand_more,color: Color.fromARGB(255, 68, 140, 245),)
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}