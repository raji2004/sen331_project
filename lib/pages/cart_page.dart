import 'package:flutter/material.dart';
import '../widget/widget.dart';
import '../utils/utils.dart';
import './checkout_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  Future<bool> removeFromCart(String cartOption) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? currentItems = prefs.getStringList('cart');
    currentItems ??= [];

    // Remove the cartOption string from the current items list
    currentItems.remove(cartOption);
    debugPrint(currentItems.toString());

    await prefs.setStringList('cart', currentItems);
    debugPrint("true");
    return true;
  }

  Future<bool> addToCart(String cartOption) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    List<String>? currentItems = prefs.getStringList('cart');
    currentItems ??= [];

    // Add the cartOption string to the current items list
    currentItems.add(cartOption);
    debugPrint(currentItems.toString());

    await prefs.setStringList('cart', currentItems);
    // Trigger a rebuild of the widget
    setState(() {});
    debugPrint("true");
    return true;
  }

  Future<List<String>> getCartItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? currentItems = prefs.getStringList('cart') ?? [];

    // Convert each string item to a Map<String, dynamic>

    return currentItems;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: MyText(
          'Cart',
          fontSize: 25,
        )),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            FutureBuilder<List<String>>(
              key: UniqueKey(),
              future: getCartItems(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  List<String> cartItems = snapshot.data ?? [];
                  return Column(
                    children: [
                      Center(
                        child: MyText(
                            'You have ${cartItems.length} products in your Cart'),
                      ),
                      const SizedBox(height: 20),
                      for (var cartItem in cartItems)
                        CartOptions(
                          img: cartItem, // Replace with the actual key
                          price: 79.9, // Replace with the actual key
                          name:
                              "CLAUDETTE CORSET SHIRT DRESS IN WHITE", 
                          onPressed: () {
                            setState(() {
                              
                            removeFromCart(cartItem);
                            });
                          },
                          // Replace with the actual key
                        ),
                      const SizedBox(height: 20),
                    ],
                  );
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(children: [
                const Row(children: [
                  SizedBox(width: 30),
                  Text('Total:', style: TextStyle(fontSize: 25)),
                  SizedBox(width: 175),
                  Text('119.00\$', style: TextStyle(fontSize: 25)),
                ]),
                const Row(children: [
                  SizedBox(width: 30),
                  Text('Saving Applied',
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                  SizedBox(width: 150),
                  Text('14.95\$',
                      style: TextStyle(color: Colors.grey, fontSize: 18)),
                ]),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Primary.black),
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 90)),
                  ),
                  icon: const Icon(
                    Icons.shopping_cart_checkout,
                    color: Primary.white,
                  ),
                  label: const Text(
                    'Checkout',
                    style: TextStyle(color: Primary.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Checkout()),
                    );
                  },
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
