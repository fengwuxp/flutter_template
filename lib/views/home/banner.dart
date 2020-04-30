import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeBanner extends StatelessWidget {
  final List<String> bannerList;

  HomeBanner({this.bannerList});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Swiper(
        itemCount: bannerList.length,
        itemBuilder: (BuildContext context, int index) => Image.network(
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
            )),
        controller: SwiperController(),
        scrollDirection: Axis.horizontal,
        autoplay: true,
        onTap: (index) => print(MediaQuery.of(context).size),
      ),
    );
  }
}
