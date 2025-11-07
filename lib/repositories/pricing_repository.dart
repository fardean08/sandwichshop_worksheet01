class PricingRepository {
  final int sixInchPrice;
  final int footlongPrice;

  PricingRepository({this.sixInchPrice = 7, this.footlongPrice = 11});

  int calculateTotal({required int quantity, required String sandwichType}) {
    if (sandwichType == 'Six-inch') {
      return quantity * sixInchPrice;
    } else {
      return quantity * footlongPrice;
    }
  }
}
