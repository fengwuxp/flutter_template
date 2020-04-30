import 'package:flutter/material.dart';
import 'package:flutter_template/app_router.dart';
import 'banner.dart';
import 'block.dart';
import 'product.dart';
import 'package:fenguwxp_fluro/fluro.dart';
//import '../../components/list_refresh.dart';

class Home extends StatelessWidget {
  final router = new Router();
  Future<Null> _onRefresh() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<String> bannerList = [];
    bannerList.add(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2594792439,969125047&fm=26&gp=0.jpg');
    bannerList.add(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2594792439,969125047&fm=26&gp=0.jpg');
    bannerList.add(
        'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2594792439,969125047&fm=26&gp=0.jpg');

    List<HomeBlockData> blockList = [];
    blockList.add(
        HomeBlockData(
            title: '自由行报名',
            icon: 'assets/images/icons/icon_independent_travel.png',
            onTap: (){
              AppRouter.independentTravel(context);
            },
        ));
    blockList
        .add(
        HomeBlockData(
            title: '挂团报名',
            icon: 'assets/images/icons/icon_2.png',
            onTap: (){
              AppRouter.independentTravelDetail(context);
            },
        )
    );
    blockList
        .add(
        HomeBlockData(
            title: '接送机',
            icon: 'assets/images/icons/icon_3.png',
            onTap: (){
              AppRouter.login(context);
            },
        )
    );
    blockList
        .add(HomeBlockData(title: '机票预订', icon: 'assets/images/icons/icon_4.png'));
    blockList
        .add(HomeBlockData(title: '酒店预订', icon: 'assets/images/icons/icon_5.png'));
    blockList
        .add(HomeBlockData(title: '欧铁预订', icon: 'assets/images/icons/icon_6.png'));
    blockList
        .add(HomeBlockData(title: '签证代办', icon: 'assets/images/icons/icon_7.png'));
    blockList
        .add(HomeBlockData(title: '我的税单1', icon: 'assets/images/icons/icon_8.png'));

    return Column(
      children: <Widget>[
        HomeBanner(
          bannerList: bannerList,
        ),
        HomeBlocks(
          blockList: blockList,
        ),
        HomeProduct(),
//       new Expanded(
//           child: RefreshIndicator(
//             onRefresh: _onRefresh,
//             child: ListView(
//               children: <Widget>[
//                HomeBanner(
//                  bannerList: bannerList,
//                ),
//                HomeBlocks(
//                  blockList: blockList,
//                ),
//                HomeProduct(),
//               ],
//              )
//          )
//       )
      ],
    );
  }
}
