
/// 忘记密码
import 'package:flutter/material.dart';
import 'package:flutter_template/components/app_bar.dart';

const  FORGET_PASSWORD_VIEW_PATH_NAME = "forget_password";

class ForgetPasswordView extends StatefulWidget {

  @override
  _ForgetPasswordViewState createState() => _ForgetPasswordViewState();
}


 BorderView() {
  return Row(
    children: <Widget>[
      Expanded(
        child: Container(
          height: 1,
          width: 100.0,
          color: Color.fromARGB(255, 230, 230, 230),
        ),
       ),
    ],
  );
}

CommonPrimaryBtnView() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Expanded(
        child: GestureDetector(
          child: Container(
              height: 44.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromARGB(255,85, 148, 255),
//                          color: Theme.of(context).primaryColor),
              ),
              child: Center(
                child: Text(
                  "确认修改",
                  style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight:FontWeight.bold ),
                ),
              )
          ),
          onTap: () {
          },
        ),
      ),

    ],
  );
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarView(
        title: '忘记密码',
      ),
      body: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
                decoration:InputDecoration(
                  hintText: "请输入手机号",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 20.0,bottom: 20.0, left: 15.0, right: 15.0)
                )
            ),
            BorderView(),
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                        decoration:InputDecoration(
                          hintText: "请输入验证码",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 20.0,bottom: 20.0, left: 15.0, right: 15.0),
                        )
                    ),

                  ),
                  GestureDetector(
                    child: RaisedButton(
                      child: Container(
                          height: 44.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Color.fromARGB(255,85, 148, 255),
                          ),
                          child: Center(
                            child: Text(
                              "获取验证码",
                              style: TextStyle(fontSize: 14.0, color: Colors.white),
                            ),
                          )
                      ),
                    ),
                  ),
//                  Text('重新获取（54s）', style: TextStyle(
//                    color: Color.fromARGB(255, 204, 204, 204),
//                    fontSize: 14.0,
//                  ),)

                ],
              ),
            ),
            BorderView(),
            TextFormField(
                decoration:InputDecoration(
                    hintText: "设置新密码",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 20.0,bottom: 20.0, left: 15.0, right: 15.0)
                )
            ),
            BorderView(),
            Padding(
              padding: EdgeInsets.only(top: 30.0, right: 15.0, bottom: 30.0, left: 15.0),
              child: CommonPrimaryBtnView(),
            )
          ],
        )
      ),
    );
  }
}
