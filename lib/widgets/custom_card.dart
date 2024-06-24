// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/screens/update_product_page.dart';

class CustomCard extends StatelessWidget {
  CustomCard({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, UpdateProductPage.id, arguments: product);
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 40,
                    spreadRadius: 0,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title.substring(0, 12),
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price.toString()}',
                            style: const TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: 70,
                top: -49,
                child: Image.network(
                  product.image,
                  height: 88,
                  width: 88,
                ))
          ],
        ),
      ),
    );
  }
}
