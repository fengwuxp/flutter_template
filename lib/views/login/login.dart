
/// 登录
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_template/app_router.dart';

const  LOGIN_VIEW_PATH_NAME = "login";

class LoginView extends StatefulWidget {



  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool isRememberPassword = false;

  // 利用FocusNode和_focusScopeNode来控制焦点 可以通过FocusNode.of(context)来获取widget树中默认的_focusScopeNode
  FocusNode _emailFocusNode = new FocusNode();
  FocusNode _passwordFocusNode = new FocusNode();
  FocusScopeNode _focusScopeNode = new FocusScopeNode();
//  UserInfoControlModel _userInfoControlModel = new UserInfoControlModel();

  GlobalKey<FormState> _signInFormKey = new GlobalKey();
  TextEditingController _userNameEditingController =
  new TextEditingController();
  TextEditingController _passwordEditingController =
  new TextEditingController();
  @override
  Decoration _buildBorderBottom() {
    return BoxDecoration(
      border: Border(
        bottom: BorderSide(
          width: 1,
          color: Color.fromARGB(255,217,226,233),
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/ad.png',
            height: 225.0,
            width: 750.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Column(
              children: <Widget>[
                Form(
                  key: _signInFormKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 15.0, bottom:5.0),
                        decoration: _buildBorderBottom(),
                        child: TextFormField(
                          controller: _userNameEditingController,
                          //关联焦点
                          focusNode: _emailFocusNode,
                          onEditingComplete: () {
                            if (_focusScopeNode == null) {
                              _focusScopeNode = FocusScope.of(context);
                            }
                            _focusScopeNode.requestFocus(_passwordFocusNode);
                          },
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.phone_android,
                                color: Color.fromARGB(255, 153, 153, 153),
                              ),
                              suffixIcon: Icon(
                                Icons.cancel,
                                color: Color.fromARGB(255, 153, 153, 153),
                              ),
                              hintText: "用户名/手机号",
                              border: InputBorder.none
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          //验证
                          validator: (value) {
                            if (value.isEmpty) {
                              return "用户名/手机号不可为空!";
                            }
                            return null;
                          },
                          onSaved: (value) {
//                      setState(() {
//                        username = value;
//                      });
                          },
                        ),

                      ),
                      Container(
                        padding: EdgeInsets.only(top: 18.0, bottom:5.0),
                        decoration: _buildBorderBottom(),
                        child: TextFormField(
                          controller: _passwordEditingController,
                          //关联焦点
                          focusNode: _passwordFocusNode,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 153, 153, 153),
                            ),
                            hintText: "密码",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          //验证
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "密码不可为空!";
                            }
                            return null;
                          },
                          onSaved: (value) {
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap:() {
                            setState(() {
                              isRememberPassword = !isRememberPassword;
                            });
                          },
                          child: Row(
                            children: <Widget>[
                              Checkbox(
                                value: isRememberPassword,
                                onChanged: (value){
                                  print(value);
                                  setState(() {
                                    isRememberPassword = value;
                                  });
                                },
                              ),
                              Text('记住密码')
                            ],
                          ),
                        )
                      ),
                      GestureDetector(
                        onTap:(){
                          AppRouter.forgetPassword(context);
                        },
                        child: Text(
                          '忘记密码？',
                          style: TextStyle(
                            color: Color.fromARGB(255, 102, 102, 102),
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:24.0,left: 17.0, right: 17.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22)),
                                color: Color.fromARGB(255,85, 148, 255),
//                          color: Theme.of(context).primaryColor),
                              ),
                              child: Center(
                                child: Text(
                                  "登录",
                                  style: TextStyle(fontSize: 18.0, color: Colors.white, fontWeight:FontWeight.bold ),
                                ),
                              )
                          ),
                          onTap: () {
                            print('登录${_signInFormKey.currentState}');
                            // 利用key来获取widget的状态FormState,可以用过FormState对Form的子孙FromField进行统一的操作
                            if (_signInFormKey.currentState.validate()) {
                              // 如果输入都检验通过，则进行登录操作
                              // Scaffold.of(context)
                              //     .showSnackBar(new SnackBar(content: new Text("执行登录操作")));
                              //调用所有自孩子��save回调，保存表单内容
                              //          doLogin();
                            }
                          },
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:10.0,left: 47.0, right: 47.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                              height: 44.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(22)),
//                          color: Color.fromARGB(255,85, 148, 255),
//                          color: Theme.of(context).primaryColor),
                              ),
                              child: Center(
                                child: Text(
                                  "注册",
                                  style: TextStyle(fontSize: 18.0, color: Color.fromARGB(255,85, 148, 255) ),
                                ),
                              )
                          ),
                          onTap: () {
                            print('登录${_signInFormKey.currentState}');
                            // 利用key来获取widget的状态FormState,可以用过FormState对Form的子孙FromField进行统一的操作
                            if (_signInFormKey.currentState.validate()) {
                              // 如果输入都检验通过，则进行登录操作
                              // Scaffold.of(context)
                              //     .showSnackBar(new SnackBar(content: new Text("执行登录操作")));
                              //调用所有自孩子��save回调，保存表单内容
                              //          doLogin();
                            }
                          },
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            )
          ),

        ],
      ),
    );
  }
}
