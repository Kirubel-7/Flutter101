//Exercise: Simulate Order Processing System
class ItemNotAvailableexception implements Exception {
  @override
  String toString() {
    return 'Item not available!';
  }
}

Future<String> checkInventory(String item) async {
  print('Checking inventory...');
  await Future.delayed(Duration(seconds: 1));
  if (item == 'Phone') {
    return 'In stock';
  } else {
    throw ItemNotAvailableexception();
  }
}

Future<String> processPayment(String item) async {
  print('Processing payment...');
  await Future.delayed(Duration(seconds: 2));
  return 'payment succcessful for $item';
}

Future<String> shipOrder(String item) async {
  print('Shipping order...');
  await Future.delayed(Duration(seconds: 1));
  return 'Order shipped $item';
}

Future<void> placeOrder(String item) async {
  print('Placing order for: $item');
  final stopwatch = Stopwatch()..start();
  try {
    String inventoryStatus = await checkInventory(item);
    print('Inventory check: ${inventoryStatus}');

    String paymentResult = await processPayment(item);
    print(paymentResult);

    String shippingResult = await shipOrder(item);
    print(shippingResult);

    print('Order completed!');
  } on ItemNotAvailableexception catch (ex) {
    print(ex);
  }
  ;
  stopwatch.stop();
  print('Time taken: ${stopwatch.elapsed.inSeconds} seconds');
}

void main() async {
  List<String> Item = ['Phone', 'Laptop'];
  await placeOrder(Item[0]);
  print('\n-----\n');
  await placeOrder(Item[1]);
}
