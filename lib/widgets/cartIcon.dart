import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_app/providers/cart_provider.dart';
import '../screens/cartScreen.dart';

class CartIcon extends ConsumerWidget {
  const CartIcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the provider directly to get the list of items
    final cartItems = ref.watch(cartProvider);

    return Stack(
      children: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CartScreen()),
            );
          },
          icon: const Icon(Icons.shopping_cart),
        ),
        if (cartItems.isNotEmpty) // Only show the badge if there are items
          Positioned(
            top: 5,
            left: 5,
            child: Container(
              width: 18, // Slightly larger to fit numbers comfortably
              height: 18,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              child: Text(
                '${cartItems.length}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],
    );
  }
}