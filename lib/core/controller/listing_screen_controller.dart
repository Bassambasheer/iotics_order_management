import 'package:get/get.dart';
import 'package:iotics/core/Api/data.dart';

import '../Api/Models/live_orders_model/datum.dart';

class OrderController extends GetxController {
  @override
  void onInit() {
    TasteDb().getLiveOrders();
  }

  final List<Datum> itemlist = [];
  listing() async {
    final _list = await TasteDb().getLiveOrders();
    itemlist.clear();
    itemlist.addAll(_list);
    update();
  }
}
