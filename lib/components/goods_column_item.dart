
import 'package:flutter/material.dart';

/// 商品item
/// 纵向排列
class GoodsItemView extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15.0,bottom: 15.0),
      child: Row(
        children: <Widget>[
          Card(
              margin: EdgeInsets.only(right: 10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(5),
              ),
              clipBehavior: Clip.antiAlias,
              borderOnForeground: false,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  Image.asset(
                    'assets/images/goods_default.png',
                    width: 90.0,
                    height: 90.0,
                  ),
                  Container(
                      width: 90.0,
                      height: 18,
                      color: Color.fromARGB(40, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            size: 10.0,
                            color: Colors.white,
                          ),
                          Text(
                            '巴黎出发',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.0,
                            ),
                          ),
                        ],
                      )
                  )
                ],
              )
          ),
          Expanded(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    '意大利罗马3日2晚跟团旅游意大利罗马3日2晚跟团旅游意大利罗马3日2晚跟团旅游',
                    maxLines: 1,
                    style: TextStyle(
                      color: Color.fromARGB(255, 51, 51, 51),
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 5.0),
                ),
                Container(
                  child: Text(
                    '【欧洲域市出发，包含单程机票】【任选酒任选酒任选酒任选酒任选酒',
                    maxLines:1,
                    style: TextStyle(
                      color: Color.fromARGB(255, 102, 102, 102),
                      fontSize: 12.0,
                    ),
                  ),
                  margin: EdgeInsets.only(bottom: 8.0),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left:5.0,right: 5.0),
                      margin: EdgeInsets.only(right: 7.0, bottom: 12.0),
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(50, 68, 140, 245),
                        border: Border.all(color:Color.fromARGB(255,68, 140, 245)),
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Text(
                        '广州送签',
                        style: TextStyle(
                          color:Color.fromARGB(255,68, 140, 245),
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left:5.0,right: 5.0),
                      margin: EdgeInsets.only(right: 7.0, bottom: 12.0),
                      decoration: new BoxDecoration(
                        color: Color.fromARGB(50, 68, 140, 245),
                        border: Border.all(color:Color.fromARGB(255,68, 140, 245)),
                        borderRadius: BorderRadius.all(Radius.circular(2)),
                      ),
                      child: Text(
                        '广州送签',
                        style: TextStyle(
                          color:Color.fromARGB(255,68, 140, 245),
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    '471人报名',
                    style: TextStyle(
                      color: Color.fromARGB(255, 153, 153, 153),
                      fontSize: 10.0,
                    ),
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

/// 商品名称
class GoodsNameComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        '意大利罗马3日2晚跟团旅游意大利罗马3日2晚跟团旅游意大利罗马3日2晚跟团旅游',
        maxLines: 1,
        style: TextStyle(
          color: Color.fromARGB(255, 51, 51, 51),
          fontSize: 15.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      margin: EdgeInsets.only(bottom: 5.0),
    );
  }
}

/// 商品描述
class GoodsDescComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Text(
        '【欧洲域市出发，包含单程机票】【任选酒任选酒任选酒任选酒任选酒',
        maxLines:1,
        style: TextStyle(
          color: Color.fromARGB(255, 102, 102, 102),
          fontSize: 12.0,
        ),
      ),
      margin: EdgeInsets.only(bottom: 8.0),
    );
  }
}

/// 商品标签
class GoodslabelComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left:5.0,right: 5.0),
          margin: EdgeInsets.only(right: 7.0, bottom: 12.0),
          decoration: new BoxDecoration(
            color: Color.fromARGB(50, 68, 140, 245),
            border: Border.all(color:Color.fromARGB(255,68, 140, 245)),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Text(
            '广州送签',
            style: TextStyle(
              color:Color.fromARGB(255,68, 140, 245),
              fontSize: 10.0,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left:5.0,right: 5.0),
          margin: EdgeInsets.only(right: 7.0, bottom: 12.0),
          decoration: new BoxDecoration(
            color: Color.fromARGB(50, 68, 140, 245),
            border: Border.all(color:Color.fromARGB(255,68, 140, 245)),
            borderRadius: BorderRadius.all(Radius.circular(2)),
          ),
          child: Text(
            '广州送签',
            style: TextStyle(
              color:Color.fromARGB(255,68, 140, 245),
              fontSize: 10.0,
            ),
          ),
        ),
      ],
    );
  }
}