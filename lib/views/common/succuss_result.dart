
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_template/components/app_bar.dart';

/// 自由行
const  SUCCESS_RESULT_VIEW_PATH_NAME = "success_result";

class SuccessResultView extends StatefulWidget {
  final String title;
  final String resultText;

  SuccessResultView({
    this.title,
    this.resultText,
  });

  @override
  _SuccessResultViewState createState() => _SuccessResultViewState();
}

class _SuccessResultViewState extends State<SuccessResultView> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarView(
          title: '提交成功',
      ),
      body: Center(
        child: Column(
//          mainAxisAlignment:MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 130.0),
            child: Icon(
              Icons.check_circle,
              size: 52.0,
              color: Color.fromARGB(255, 82, 196, 26),
            ),
          ),
          Text(
            '您的自由行报名已提交',
            style: TextStyle(
              color: Color.fromARGB(255, 102, 102, 102),
              fontSize: 15.0,
            ),
          ),

        ],
      )
      ),
    );
  }

}
