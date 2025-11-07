import 'package:flutter_test/flutter_test.dart';
import 'package:sandwichshop_worksheet1/lib/repositories/pricing_repository.dart';

void main() {
  group('PricingRepository', () {
    final repo = PricingRepository();

    test('calculates price for six-inch', () {
      expect(repo.calculateTotal(quantity: 2, sandwichType: 'Six-inch'), 14);
    });

    test('calculates price for footlong', () {
      expect(repo.calculateTotal(quantity: 3, sandwichType: 'Footlong'), 33);
    });

    test('zero quantity returns zero', () {
      expect(repo.calculateTotal(quantity: 0, sandwichType: 'Six-inch'), 0);
      expect(repo.calculateTotal(quantity: 0, sandwichType: 'Footlong'), 0);
    });
  });
}
