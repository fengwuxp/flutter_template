
/// 注册
import 'package:flutter/material.dart';
import 'package:flutter_template/components/app_bar.dart';

import 'forget_password.dart';

const  REGISTER_VIEW_PATH_NAME = "register";

class RegisterView extends StatefulWidget {

  @override
  _RegisterViewState createState() => _RegisterViewState();
}
_CommonPrimaryBtnView() {
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
                  "注册",
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
class _RegisterViewState extends State<RegisterView> {
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBarView(
        title: '系统注册',
      ),
      body: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "请输入手机号",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 15.0, right: 15.0)
                  )
              ),
              BorderView(),
              TextFormField(
                  decoration: InputDecoration(
                    hintText: "请输入密码",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        top: 20.0, bottom: 20.0, left: 15.0, right: 15.0),
                  )
              ),
              Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "请输入验证码",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(top: 20.0,
                                bottom: 20.0,
                                left: 15.0,
                                right: 15.0),
                          )
                      ),

                    ),
                    GestureDetector(
                      child: RaisedButton(
                        child: Container(
                            height: 44.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(
                                  5)),
                              color: Color.fromARGB(255, 85, 148, 255),
                            ),
                            child: Center(
                              child: Text(
                                "获取验证码",
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.white),
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
                  decoration: InputDecoration(
                      hintText: "请输入邀请码",
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          top: 20.0, bottom: 20.0, left: 15.0, right: 15.0)
                  )
              ),
              BorderView(),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isAgree = !isAgree;
                  });
                },
                child: Row(
                  children: <Widget>[
                    Checkbox(
                      value: isAgree,
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          isAgree = value;
                        });
                      },
                    ),
                    Text('我已阅读并同意'),
                    Text('《用户协议》', style: TextStyle(
                        color: Color.fromARGB(255, 85, 148, 255))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 30.0, right: 15.0, bottom: 30.0, left: 15.0),
                child: _CommonPrimaryBtnView(),
              )
            ],
          )
      ),
    );
  }
}
