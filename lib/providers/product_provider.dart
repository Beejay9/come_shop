import 'package:come_shop/notifiers/product_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productProvider = ChangeNotifierProvider<ProductRepository>((ref) {
  return ProductRepository();
});