// 登录Container
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:loan_disposal_app/pages/login/login.viewmodel.dart';

class VerifyScreen extends ViewModelWidget<LoginViewModel> {
  @override
  Widget build(BuildContext context, LoginViewModel model) {
    return Container(
      child: Column(
        children: <Widget>[
          headerSection(model),
          formSection(model),
        ],
      ),
    );
  }

  Widget headerSection(LoginViewModel model) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            children: <Widget>[
              GestureDetector(
                onTap: () => model.onBack(),
                child: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.keyboard_arrow_left,
                    size: 30,
                  ),
                ),
              ),
              Text("获取登录验证码",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Text(
            "输入验证码",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10,
            left: 30,
          ),
          child: Text("验证码已发送至 ${model.phoneController.text}"),
        )
      ],
    );
  }

  Widget formSection(LoginViewModel model) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 30,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              bottom: 15,
            ),
            child: TextField(
              maxLength: 6,
              autofocus: true,
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black,
              ),
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: '',
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black.withOpacity(0.5)),
                ),
              ),
              onChanged: (value) {
                if (value.length == 6) {
                  model.onSubmit(value);
                }
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: GestureDetector(
              onTap: model.onSendVerifyCode,
              child: Text(
                "重新发送验证码" + (model.countDown > 0 ? '(${model.countDown})' : ''),
                style: TextStyle(
                  color: model.countDown > 0 ? Colors.grey : Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
