//utils/toast_util.dart文件
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shop_flutter/config/index.dart';

//Toast提示组件显示工具
class ToastUtil {
  static showToast(String message) {
    Fluttertoast.showToast(
        //提示消息
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        //居中
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        //背景色
        backgroundColor: KColor.toastBgColor,
        //文本颜色
        textColor: KColor.toastTextColor,
        fontSize: ScreenUtil().setSp(28.0));
  }
}
