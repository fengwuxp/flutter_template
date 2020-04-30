import 'package:flutter/material.dart';

class HomeBlockData {
  String title;
  String icon;
  Function onTap;

  HomeBlockData({
    this.title,
    this.icon,
    this.onTap,
  });
}

class HomeBlocks extends StatelessWidget {
  final List<HomeBlockData> blockList;
  final int countPerLine;

  HomeBlocks({
    this.blockList,
    this.countPerLine = 4,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> blockWidgetList = [];
    List<List<Widget>> rowWidgetList = [];
    if (blockList != null && blockList.length > 0) {
      for (int i = 0, l = blockList.length; i < l; i++) {
        int curLine = ((i + 1) / countPerLine).ceil();
        int curIndex = curLine - 1;
        HomeBlockData data = blockList[i];
        if (rowWidgetList.length < curLine) {
          rowWidgetList.insert(curIndex, []);
        }
        rowWidgetList[curIndex].add(
          Expanded(
            flex: 1,
            child: _HomeBlockItem(
              title: data.title,
              icon: data.icon,
              onTap: data.onTap,
            ),
          ),
        );
      }
      for (int i = 0, l = blockWidgetList.length % countPerLine; i < l; i++) {
        rowWidgetList.last.add(
          Expanded(
            flex: 1,
            child: Container(),
          ),
        );
      }
      for (int i = 0, l = rowWidgetList.length; i < l; i++) {
        blockWidgetList.add(
          Container(
            margin: const EdgeInsets.only(top: 7.5, bottom: 7.5),
            child: Row(
              textDirection: TextDirection.ltr,
              children: rowWidgetList[i],
            ),
          ),
        );
      }
    }
    return Container(
      padding: const EdgeInsets.only(top: 7.5, bottom: 7.5),
      color: Colors.white,
      child: Column(
        textDirection: TextDirection.ltr,
        children: blockWidgetList,
      ),
    );
  }
}

class _HomeBlockItem extends StatelessWidget {
  final String title;
  final String icon;
  final Function onTap;
  final double width;
  final double height;

  _HomeBlockItem({
    this.title,
    this.icon,
    this.width = 48.5,
    this.height = 48.5,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget item = Column(
      children: <Widget>[
        Image.asset(
          icon,
          width: width,
          height: height,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            title,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Color.fromRGBO(102, 102, 102, 1),
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
    return GestureDetector(onTap: onTap, child: item);
  }
}
