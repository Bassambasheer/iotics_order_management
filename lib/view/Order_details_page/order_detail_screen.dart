import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iotics/core/constant%20widgets/buttonwidget.dart';
import 'package:iotics/core/constant%20widgets/textwidget.dart';
import 'package:iotics/core/controller/detail_screen_controller.dart';
import 'package:iotics/view/Order_details_page/widgets/tile.dart';

class OrderDetailScreen extends StatelessWidget {
  OrderDetailScreen({required this.id, Key? key}) : super(key: key);
  int id;
  RxBool status = false.obs;
  @override
  Widget build(BuildContext context) {
    status.value = false;
    final obj = Get.put(DetailsController());
    obj.datas = null;
    obj.getDetails(id);
    return GetBuilder<DetailsController>(builder: (ctrl) {
      return Scaffold(
          body: ctrl.datas != null
              ? SafeArea(
                  child: Column(
                    children: [
                      const TextWidget(
                        txt: "Customer details",
                        size: 20,
                      ),
                      Tile(
                        title: "Name",
                        value: ctrl.datas!.customer!.name.toString(),
                      ),
                      Tile(
                        title: "Mobile",
                        value: ctrl.datas!.customer!.mobile.toString(),
                      ),
                      Tile(
                        title: "Email",
                        value: ctrl.datas!.customer!.email.toString(),
                      ),
                      Tile(
                        title: "Payment Method",
                        value: ctrl.datas!.paymentMethod.toString(),
                      ),
                      Tile(
                        title: "Total Items",
                        value: ctrl.datas!.totalItems.toString(),
                      ),
                      const Divider(),
                      const TextWidget(
                        txt: "Item details",
                        size: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                            itemBuilder: ((context, index) {
                              final _list = ctrl.datas!.items![index];
                              return Column(
                                children: [
                                  const Divider(thickness: 2),
                                  Tile(
                                      title: "Item",
                                      value: _list.menuName.toString()),
                                  Tile(
                                      title: "Quantity",
                                      value: _list.quantity.toString()),
                                  const Divider(thickness: 2),
                                ],
                              );
                            }),
                            itemCount: ctrl.datas!.items!.length),
                      ),
                      const Divider(),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            children: [
                              Tile(
                                title: "Delivery Fee",
                                value: ctrl.datas!.deliveryFee.toString(),
                              ),
                              Tile(
                                title: "Total with tax",
                                value: ctrl.datas!.totalWithTax.toString(),
                              ),
                              Tile(
                                title: "Discount Amount",
                                value: ctrl.datas!.discount!.amount.toString(),
                              ),
                              Tile(
                                title: "Final Amount",
                                value: ctrl.datas!.finalAmount.toString(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Obx(() {
                        return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ctrl.datas!.status.toString() == "placed" &&
                                    status.value == false
                                ? ButtonWidget(
                                    txt: "Accept Order",
                                    ontap: () async {
                                      final confirm =
                                          await ctrl.orderConfirm(id);
                                      if (confirm == true) {
                                        status.value = true;
                                      }
                                      ctrl.getDetails(id);
                                    })
                                : status.value == true
                                    ? const TextWidget(txt: "Order Accepted")
                                    :const TextWidget(txt: "Order Accepted"));
                      })
                    ],
                  ),
                )
              : const Center(child: CircularProgressIndicator()));
    });
  }
}
