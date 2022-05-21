import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iotics/core/constant%20widgets/textwidget.dart';
import 'package:iotics/core/controller/listing_screen_controller.dart';
import 'package:iotics/theme/theme.dart';
import 'package:iotics/view/Order_details_page/order_detail_screen.dart';

class OrderListingScreen extends StatelessWidget {
  const OrderListingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final obj = Get.put(OrderController());
    obj.listing();
    return GetBuilder<OrderController>(builder: (ctrl) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const TextWidget(
            txt: "Your Orders",
            clr: black,
          ),
        ),
        body: SafeArea(
          child: ctrl.itemlist.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: ctrl.itemlist.length,
                  itemBuilder: (context, index) {
                    final _list = ctrl.itemlist[index];
                    return Card(
                      child: ListTile(
                        title: TextWidget(txt: "Order No :${_list.id}"),
                        subtitle: TextWidget(txt: _list.orderAt.toString()),
                        trailing: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => OrderDetailScreen(
                                        id: _list.id!,
                                      )));
                            },
                            child: const TextWidget(
                              txt: "View Details",
                              clr: black,
                            )),
                      ),
                    );
                  },
                ),
        ),
      );
    });
  }
}
