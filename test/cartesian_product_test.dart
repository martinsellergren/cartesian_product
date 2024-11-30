import 'package:cartesian_product/cartesian_product.dart';
import 'package:test/test.dart';

void main() {
  test('description', () {
    expect(
        cartesianProduct([
          ['a', 'b', 'c'],
          ['1', '2'],
        ]),
        [
          ['a', '1'],
          ['a', '2'],
          ['b', '1'],
          ['b', '2'],
          ['c', '1'],
          ['c', '2'],
        ]);

    expect(
        cartesianProduct([
          [1]
        ]),
        [
          [1]
        ]);

    expect(
      cartesianProduct([
        [1, 2]
      ]),
      [
        [1],
        [2]
      ],
    );

    expect(
      cartesianProduct([
        [1, 2],
        [3],
      ]),
      [
        [1, 3],
        [2, 3]
      ],
    );
    expect(cartesianProduct([]), []);
  });
}
