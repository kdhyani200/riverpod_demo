import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shopping_app/product.dart';

part 'cart_provider.g.dart';

@riverpod
class CartNotifier extends _$CartNotifier {
  @override
  Set<Product> build() {
    return {};
  }

  void addToCart(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void deleteProduct(Product product) {
    if (state.contains(product)) {
      state = state.where((p) => p.id != product.id).toSet();
    }
  }
}

@riverpod
int cartTotal(ref) {
  final cartItems = ref.watch(cartProvider);

  int total = 0;

  for (Product product in cartItems) {
    total += product.price;
  }

  return total;
}
