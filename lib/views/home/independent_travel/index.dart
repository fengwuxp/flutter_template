
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_template/components/app_bar.dart';
import 'package:flutter_template/components/app_filter_bar.dart';
import 'package:flutter_template/components/goods_column_item.dart';

/// 自由行
const  INDEPENDENT_TRAVEL_VIEW_PATH_NAME = "independent_travel";

class IndependentTravelView extends StatefulWidget {

  @override
  _IndependentTravel createState() => _IndependentTravel();
}

//class filterDataType {
//  String label;
//}

class _IndependentTravel extends State<IndependentTravelView> {
//  var List<filterDataType> _filterData = [
//    {
//      label: '城市',
//    },
//    {
//      label: '城市',
//    }
//  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(
        title: '自由行'
      ),
      body: Container(

        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 246),
        ),
        child:  Column(
          children: <Widget>[
            AppFilterBarView(
              name: 'oooo',
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              padding: EdgeInsets.only(left: 15.0,right: 15.0),
              child: GoodsItemView(),
            ),
          ],
        ),
      ),
    );
  }

}
