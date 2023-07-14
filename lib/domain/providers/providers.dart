import 'package:FoodExploer/domain/basket.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartProvider = Provider<Cart>((ref) => Cart());