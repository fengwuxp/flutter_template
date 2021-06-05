/// 商品列表项模块

import 'package:flutter/material.dart';

class GoodsRowItem extends StatelessWidget {
  final data;

  GoodsRowItem({
    this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 7.5, top: 10, right: 7.5, bottom: 10),
      child: Column(
        children: <Widget>[
          Image.network(
            data.imgUrl,
            fit: BoxFit.fill,
          ),
          Container(
            margin: const EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                data.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color.fromRGBO(51, 51, 51, 1),
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 5),
              width: double.maxFinite,
              child: Text(
                '¥' + data.price.toStringAsFixed(2),
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(254, 0, 0, 1),
                  fontSize: 12,
                ),
              )),
        ],
      ),
    );
  }
}
