import 'package:get/get.dart';
import 'package:iotics/core/Api/Models/order_detail_model/order_detail.dart';
import 'package:iotics/core/Api/data.dart';

class DetailsController extends GetxController {
  bool status = false;
  OrderDetail? datas;
  bool confirmed = false;
  getDetails(int id) async {
    final data = await TasteDb().orderDetail(id);
    datas = data!.orderDetail;
    update();
    return datas;
  }

  Future<bool?> orderConfirm(
    int id,
  ) async {
    final confirm = await TasteDb().statusChange(id);
    confirmed = confirm!;
    update();
    return confirmed;
  }
}
