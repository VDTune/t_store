//import '../../features/shop/models/cart_model.dart';

class TPricingCalculator {

  /// -- Tính giá dựa trên thuế và phí vận chuyển
  static double calculateTotalPrice(double productPrice, String location) {
  double taxRate = getTaxRateForLocation(location);
  double taxAmount = productPrice * taxRate;

  double shippingCost = getShippingCost(location);

  double totalPrice = productPrice + taxAmount + shippingCost;
  return totalPrice;
  }

  /// -- Tính phí vận chuyển
  static String calculateShippingCost(double productPrice, String location) {
  double shippingCost = getShippingCost(location);
  return shippingCost.toStringAsFixed(2);
  }
  /// -- Tính thuế
  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
  return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    // Tra cứu thuế suất cho địa điểm nhất định từ cơ sở dữ liệu thuế suất hoặc API.
    // Trả về thuế suất thích hợp.
  return 0.10; // Vd thuế là 10%
  }

  static double getShippingCost(String location) {
    // Tra cứu chi phí vận chuyển cho địa điểm nhất định bằng API phí vận chuyển.
    // Tính chi phí vận chuyển dựa trên nhiều yếu tố khác nhau như khoảng cách, trọng lượng, v.v.
  return 5.00; // Vd phí vận chuyển là 5$
  }

  /// -- Tính tổng các mặt hàng trong giỏ hàng vào đưa ra tốngr tiền
  // static double calculateCartTotal(CartModel cart) {
  //   return cart.items.map((e) => e.price).fold(0, (previousPrice, currentPrice) => previousPrice + (currentPrice ?? 0));
  // }
}
