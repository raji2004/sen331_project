import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';

class Catalog extends StatelessWidget {
  Catalog({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: MyText('Catalog')),
        backgroundColor: Primary.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Primary.black,
          ),
        ],
        shadowColor: Primary.white,
      ),
    );
  }
}
