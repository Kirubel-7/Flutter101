Future<String> fetchProductName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Smartphone';
}

Future<double> fetchProductPrice() async {
  await Future.delayed(Duration(seconds: 1));
  return 999.9;
}

String formatTime(DateTime time) {
  return '${time.hour.toString().padLeft(2, '0')}:'
      '${time.minute.toString().padLeft(2, '0')}:'
      '${time.second.toString().padLeft(2, '0')}';
}

void main() async {
  DateTime Start = DateTime.now();
  print('Fetching product info...');
  String product = await fetchProductName();
  print('Product: $product');
  double price = await fetchProductPrice();
  print('Price: $price');
  print('Fetch complete!');
  DateTime End = DateTime.now();
  print('Fetch started at: ${formatTime(Start)}');
  print('Fetch completed at: ${formatTime(End)}');
  Duration duration = End.difference(Start);
  print('Total time taken to Fetch: ${duration.inSeconds} seconds');
}
