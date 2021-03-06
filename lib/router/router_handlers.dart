//router/router_handlers.dart文件
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:shop_flutter/page/goods/goods_category_page.dart';
import 'package:shop_flutter/page/goods/goods_detail_page.dart';
import 'package:shop_flutter/page/home/index_page.dart';
import 'package:shop_flutter/page/loading/loading_page.dart';
import 'package:shop_flutter/page/login/login_page.dart';
import 'package:shop_flutter/page/login/register_page.dart';
import 'package:shop_flutter/page/mine/about_us_page.dart';
import 'package:shop_flutter/page/mine/address_edit_page.dart';
import 'package:shop_flutter/page/mine/address_page.dart';
import 'package:shop_flutter/page/mine/collect_page.dart';
import 'package:shop_flutter/page/order/fill_in_order_page.dart';
import 'package:shop_flutter/page/order/order_detail_page.dart';
import 'package:shop_flutter/page/order/order_page.dart';
import 'package:shop_flutter/utils/fluro_convert_util.dart';
import 'package:shop_flutter/widgets/webview_widget.dart';

//首页
var homeHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return IndexPage();
});

//加载页
var loadingHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return LoadingPage();
});
//
//商品列表
var categoryGoodsListHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<Object>> parameters) {
  //分类名称
  // Object? categoryNameStr = parameters["categoryName"]?.first;
  // var cateforyName? = StringUtil.decode(categoryNameStr).toString();
  // print("cateforyName" + cateforyName);
  //
  // String? addressIdStr = parameters["addressId"]?.first;
  // print("categoryId" + parameters["categoryId"].first);
  // //分类Id
  // var categoryId = int.parse(parameters["categoryId"].first);
  // return GoodsCategoryPage(categoryName: cateforyName, categoryId: categoryId
  return GoodsCategoryPage(
    categoryName: "cateforyName",
    categoryId: 22,
    key: Key(""),
  );
});

//注册
var registerHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return RegisterPage();
});

//登录
var loginHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return LoginPage();
});

//商品详情
var goodsDetailsHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  //商品Id
  String? goodsIdStr = parameters["goodsId"]?.first;
  var goodsId = int.parse(goodsIdStr!);
  return GoodsDetailPage(goodsId: goodsId);
});

//填写订单
var fillInOrderHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  //购物车Id
  String? cartIdStr = parameters["cartId"]?.first;
  var cartId = int.parse(cartIdStr!);
  return FillInOrderPage(cartId);
});

//地址
var addressHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return AddressPage();
});

//地址修改
var addressEditHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  //地址Id
  String? addressIdStr = parameters["addressId"]?.first;
  var addressId = int.parse(addressIdStr!);
  return AddressEditPage(addressId);
});

//收藏
var collectHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return CollectPage();
});

//关于我们
var aboutHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return AboutUsPage();
});

//订单
var orderHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  return OrderPage();
});

//订单详情
var orderDetailHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  //订单Id
  String? orderStr = parameters["orderId"]?.first;
  int orderId = int.parse(orderStr!);
  //token值
  String? token = parameters["token"]?.first;
  return OrderDetailPage(orderId, token);
});

//网页加载
var webViewHandler = Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) {
  //标题
  String? titleStr = parameters["title"]?.first;
  var title = FluroConvertUtil.fluroCnParamsDecode(titleStr!);
  //路径
  String? urlStr = parameters["url"]?.first;
  var url = FluroConvertUtil.fluroCnParamsDecode(urlStr!);
  return WebViewWidget(url, title);
});
