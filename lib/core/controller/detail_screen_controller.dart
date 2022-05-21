import 'dart:developer';

import 'package:get/get.dart';
import 'package:iotics/core/Api/Models/order_detail_model/order_detail.dart';
import 'package:iotics/core/Api/data.dart';

class DetailsController extends GetxController {
  OrderDetail? datas;
  bool confirmed = false;
  getDetails(int id) async {
    final data = await TasteDb().orderDetail(id);
    datas = data!.orderDetail;
    update();
    return datas;
  }

  Future<bool?> orderConfirm(int id, String statusid) async {
    final confirm = await TasteDb().statusChange(id, statusid);
    log(confirm.toString());
    confirmed = confirm!;
    update();
    return confirmed;
  }
}
