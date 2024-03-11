import 'package:flutter/material.dart';

import 'model.dart';

class ProductDetailPage extends StatefulWidget {
  final Product product;
  const ProductDetailPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.product.name),
      ),
      body: Column(
        children: [
          Text(widget.product.name),
          Text("${widget.product.id}"),
          Text("Price: ${widget.product.price}"),
          Expanded(
            child: ListView.builder(
              itemCount: widget.product.images.length,
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                  widget.product.images[index].imagePath,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
