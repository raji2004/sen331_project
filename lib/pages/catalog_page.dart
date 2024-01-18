import 'package:flutter/material.dart';
import '../utils/utils.dart';
import '../widget/widget.dart';
import './dresses_page.dart';

class Catalog extends StatelessWidget {
  const Catalog({Key? key}) : super(key: key);
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Wrap(
            spacing: 10,
            runSpacing: 20,
            children: [
              CatalogOptions(
                text: "Dresses",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Dresses()),
                  );
                },
              ),
              CatalogOptions(
                text: "Jackets and Blazers",
                imgPath: 'assets/img/catalog2.png',
                onPressed: () {},
              ),
              CatalogOptions(
                text: "Coats",
                imgPath: 'assets/img/catalog3.png',
                onPressed: () {},
              ),
              CatalogOptions(
                text: "Shirts",
                imgPath: 'assets/img/catalog4.png',
                onPressed: () {},
              ),
              CatalogOptions(
                text: "Collections",
                imgPath: 'assets/img/catalog5.png',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
