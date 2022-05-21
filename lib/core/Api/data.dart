import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:iotics/core/Api/Models/live_orders_model/datum.dart';
import 'package:iotics/core/Api/Models/sign_up_model/sign_up_model.dart';
import 'package:iotics/core/Api/url.dart';
import 'Models/live_orders_model/live_orders_model.dart';
import 'Models/order_detail_model/order_detail_model.dart';

abstract class Api {
  Future<bool?> signIn(SignUpModel value);
  Future<List<Datum>> getLiveOrders();
  pushDeviceKey();
  Future<OrderDetailModel?> orderDetail(int id);
  Future<bool?> statusChange(int id, String statusid);
}

class TasteDb extends Api {
  final url = Url();
  final token =
      "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiODQwODE4YjQ2Y2VmNTcxYmViODY1MDBjMTM3Y2ViNTdkNmU1MzQ1ZTg3M2MxZjM1NWFkODIxN2RhNGZjOTljNmJkNzMzNjMwMWI1YzczOWQiLCJpYXQiOjE2NTMwNTQzMzcsIm5iZiI6MTY1MzA1NDMzNywiZXhwIjoxNjg0NTkwMzM3LCJzdWIiOiIxMSIsInNjb3BlcyI6W119.Y3YBQuhVKhodR2tf4ZH7JNMtbwbyF8J_YAlfPANR6xryqU2kES95yiXsJpTYWQKGn0u_sWSaOVJDdpX4TNXB3st1NBBqYuaDcgE6IvuDtttZa0b7wGFbkIlPRVnKOgvJPjM_DFw9SfNeWwaM4K04GyOh5tc8HP10mScn1Nf9sd2Sg6Ly2voIv2TYadrTNZHqje5zg4d5ZfFUq41ssFcTAJqel_6nDoPTrW7Xgbr_g5jqHAH5MNwYhJ67YFsLJ-IAGGGu_7GWgBoFfeJNFsi6dxW9vWJxs8IqkkAVzUfmlj6QNIz17sn5WYU9ZWjYoL5BVw_zZAgJplAIesoyXAX2QqgR0Ki_WtqbyAI1bEDN3nk1qc8x-EBK-_p10hMN14upKLepY04EUZWxI2bRU13gbSCgO3OdNhgefAYtyN3E4Zzzl0yR_RDdlvfKLZ8W8Xpm2n6jDEoyfoK88R4FNBnMXlwEuVRMUaYnqcUXd-mryNLYa0CZ90ZeNnP5pXdrbQ3mgBKGZKJtPCn68vz6WDP3UfNH6l92c1U2m_jtc0kXZeNQxRsgQZTIFgY9aZBuezkeLzq0Vpl_-C17ffiQDHHay92KZaXffZszLL7Ygk1-N6r9Ix_oNRenj8PpmV2SBFApFMHicLgBEH4HgcDRvJGdP16Z3Y9vdxabS1yk9z0-qy4";
  @override
  Future<bool?> signIn(SignUpModel value) async {
    final response = await http.post(Uri.parse(url.baseUrl + url.login),
        body: value.toJson());
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }

  @override
  Future<List<Datum>> getLiveOrders() async {
    final response =
        await http.get(Uri.parse(url.baseUrl + url.liveOreders), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': token
    });
    if (response.body != null) {
      final _resultasJson = jsonDecode(response.body);
      final item = LiveOrdersModel.fromJson(_resultasJson);
      return item.data!;
    } else {
      return [];
    }
  }

  @override
  pushDeviceKey() async {
    final response = await http.post(Uri.parse(url.baseUrl + url.pushKey),
        body: json.encode(
            {"token": token, "user_id": 1, "restaurant_id": 1, "outlet_id": 1}),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': "ExponentPushToken[btdZZKNYVCn7P5bAnSO8U-]"
        });
    if (response.statusCode == 200) {
      log("authorized");
    } else {
      log("unauthorized");
    }
  }

  @override
  Future<OrderDetailModel?> orderDetail(int id) async {
    final response = await http.get(
        Uri.parse(
            "https://dashboard-api-staging.eatroot.io/api/orders/detail/$id"),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        });
    final resultAsJson = jsonDecode(response.body);
    // log(resultAsJson.toString());
    final data = OrderDetailModel.fromJson(resultAsJson);
    return data;
  }

  @override
  Future<bool?> statusChange(int id, String statusid) async {
    final response = await http.post(
        Uri.parse(
            "https://dashboard-api-staging.eatroot.io/api/orders/change-status"),
        body: json.encode({"order_id": "${id}", "status_id": statusid}),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': token
        });
    log(response.statusCode.toString());
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
