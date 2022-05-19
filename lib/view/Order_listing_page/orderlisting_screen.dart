import 'package:flutter/material.dart';
import 'package:iotics/view/Order_listing_page/item_card.dart';

class OrderListingScreen extends StatelessWidget {
  const OrderListingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [ItemCard(), ItemCard()],
        ),
      ),
    );
  }
}
