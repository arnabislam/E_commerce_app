class rPricingCalculator{
  /// -- calculate price based on tax and shipping

  static double calculateTotalPrice(double productPrice, String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice + taxRate;
    double shippingCost=getShippingCost(location);

    double totalPrice=productPrice + taxAmount + shippingCost;
    return totalPrice;
  }
  ///calculate shipping cost

  static String calCulateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  ///calculate tax

static String calculateTax(double productPrice, String location){
    double taxRate =getTaxRateForLocation(location);
    double taxAmount=productPrice+taxRate;
    return taxAmount.toStringAsFixed(2);

}

  static double getShippingCost(String location) {
    //look up the tax rate for the given location from a tax rate database pr api
//calculate the shipping cost based on various factors like distance weight etc
    return 0.10;
  }

  static double getTaxRateForLocation(String location) {

    //look up the tax rate for the given location from a tax rate database pr api
    //return the appropriates tax rate
    return 5.00;
  }
}

