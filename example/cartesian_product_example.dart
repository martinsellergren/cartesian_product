import 'package:cartesian_product/cartesian_product.dart';

void main() {
  print(cartesianProduct(
    [
      ['a', 'b', 'c'],
      ['1', '2'],
    ],
  )); // prints [[a, 1], [a, 2], [b, 1], [b, 2], [c, 1], [c, 2]]
}
