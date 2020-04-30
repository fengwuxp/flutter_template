import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_template/components/goods_row_item.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int activeProductTypeIndex = 0;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _tapProductType(int index) {
    setState(() {
      activeProductTypeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> productTypeList = [
      '品牌报价',
      '全球购',
      '挂团报名',
      '自由行报名',
      '签证代办',
      '自由行报名',
      '签证代办',
    ];
    List<ProductData> productList = [];
    for (int i = 0, l = Random().nextInt(3); i < l; i++) {
      productList.add(
        ProductData(
          title: 'GIVENCHY 纪梵希 口红 小羊皮唇膏小羊皮唇膏小羊皮唇膏 (粗管) 莹润持久 3.4g…',
          imgUrl:
              'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2594792439,969125047&fm=26&gp=0.jpg',
          price: 999.99,
        ),
      );
    }

    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          ProductType(
            titleList: productTypeList,
            activeIndex: activeProductTypeIndex,
            onTap: _tapProductType,
          ),
//          GoodsRowItem(
//            productList: productList,
//          ),
          ProductList(
            productList: productList,
          ),
        ],
      ),
    );
  }
}

class ProductType extends StatelessWidget {
  final List<String> titleList;
  final int activeIndex;
  final Function onTap;

  ProductType({
    this.titleList,
    this.activeIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> typeWidgetList = [];
    if (titleList != null && titleList.length > 0) {
      for (int i = 0, l = titleList.length; i < l; i++) {
        typeWidgetList.add(_ProductTypeItem(
          active: i == activeIndex,
          title: titleList[i],
          onTap: () => onTap(i),
        ));
      }
    }
    return Container(
      height: 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: typeWidgetList,
      ),
    );
  }
}

class _ProductTypeItem extends StatelessWidget {
  final bool active;
  final String title;
  final Function onTap;

  static const Color activeColor = Color.fromRGBO(68, 140, 245, 1);
  static const Color color = Color.fromRGBO(153, 153, 153, 1);
  static const TextStyle activeTextStyle = TextStyle(
    color: activeColor,
    fontSize: 14,
  );
  static const TextStyle textStyle = TextStyle(
    color: color,
    fontSize: 14,
  );

  _ProductTypeItem({
    this.active,
    this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget item = Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Center(
            child: Text(
              title,
              style: TextStyle(
                color: active ? activeColor : color,
                fontSize: active ? 16 : 14,
              ),
              textDirection: TextDirection.ltr,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 3.5,
            ),
            width: active ? 30 : 0,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(2.5)),
              color: activeColor,
            ),
          ),
        ],
      ),
    );

    return GestureDetector(onTap: onTap, child: item);
  }
}

class ProductData {
  String title;
  String imgUrl;
  double price;

  ProductData({
    this.title,
    this.imgUrl,
    this.price,
  });
}

class ProductList extends StatelessWidget {
  final List<ProductData> productList;
  final int countPerLine;

  ProductList({
    this.productList,
    this.countPerLine = 2,
  }) : assert(countPerLine > 0 && countPerLine < 4);

  @override
  Widget build(BuildContext context) {
    List<Widget> productWidgetList = [];
    List<List<Widget>> rowWidgetList = [];
    if (productList != null && productList.length > 0) {
      for (int i = 0, l = productList.length; i < l; i++) {
        int curLine = ((i + 1) / countPerLine).ceil();
        int curIndex = curLine - 1;
        ProductData data = productList[i];
        if (rowWidgetList.length < curLine) {
          rowWidgetList.insert(curIndex, []);
        }
        rowWidgetList[curIndex].add(
          Expanded(
            flex: 1,
            child: GoodsRowItem(
              data:data,
            ),
          ),
        );
      }
      for (int i = 0, l = productList.length % countPerLine; i < l; i++) {
        rowWidgetList.last.add(
          Expanded(
            flex: 1,
            child: Container(),
          ),
        );
      }
      for (int i = 0, l = rowWidgetList.length; i < l; i++) {
        productWidgetList.add(
          Container(
            child: Row(
              textDirection: TextDirection.ltr,
              children: rowWidgetList[i],
            ),
          ),
        );
      }
    }
    return Container(
      padding: const EdgeInsets.only(left: 7.5, right: 7.5),
      color: Colors.white,
      child: Column(
        textDirection: TextDirection.ltr,
        children: productWidgetList,
      ),
    );
  }
}

class _ProductItem extends StatelessWidget {
  final ProductData data;

  _ProductItem({
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
