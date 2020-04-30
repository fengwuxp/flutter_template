

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'dart:math';

import 'package:flutter_template/components/app_bar.dart';
import 'package:flutter_template/components/app_bar_bottom.dart';
import 'package:flutter_template/components/goods_column_item.dart';

/// 自由行详情
const  INDEPENT_TRAVEL_DETAIL_VIEW_PATH_NAME = "independent_travel_detail";

class IndependentTravelDetailView extends StatefulWidget {
  final String title;
  final String resultText;

  IndependentTravelDetailView({
    this.title,
    this.resultText,
  });

  @override
  _IndependentTravelDetailViewState createState() => _IndependentTravelDetailViewState();
}

class _IndependentTravelDetailViewState extends State<IndependentTravelDetailView> {
  List<String> bannerList = [
    'assets/images/goods_default.png',
    'assets/images/goods_default.png',
    'assets/images/goods_default.png',
  ];
  final  TextStyle  _textStyle = TextStyle(
    color: Color.fromARGB(255, 153, 153, 153),
  );

  /// 开始预定
  void _handleReserve(params) {
    print('参数：$params');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(
        title: '自由行',
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 246, 246, 246),
        ),
        child: Container(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 180.0,
                child: Swiper(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) => Image.asset(
                    bannerList[index],
                    fit: BoxFit.fill,
                  ),
                  pagination: SwiperPagination(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black54,
                      activeColor: Colors.white,
                      space: 4,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0,right: 15.0, bottom: 10.0,left: 15.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children:<Widget>[
                      Container(
                        padding: EdgeInsets.only(bottom: 5.0),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(255,230,230,230),
                          )),
                        ),
                        child: Column(
                          children: <Widget>[
                            GoodsNameComponents(),
                            GoodsDescComponents(),
                            GoodslabelComponents(),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.check_circle,
                              size:12.0,
                              color: Color.fromARGB(255, 68, 140, 245),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: Text(
                                '319人已报名',
                                style: TextStyle(
                                  color: Color.fromARGB(255, 102, 102, 102),
                                  fontSize: 12.0,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin:EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(top: 14.0),
                decoration: BoxDecoration(
                  color:Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('一 ', style: _textStyle),
                        Text('详情', style: _textStyle),
                        Text(' 一', style: _textStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
      ),
      bottomNavigationBar:AppBarBottomView(onClick:(params) => _handleReserve(params))
    );
  }

}
