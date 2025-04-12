Stream<int> numStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Stream<int> countStream([int maxCount = 10]) async* {
  final delay = const Duration(seconds: 1);
  var count = 0;
  while (true) {
    if (count == maxCount) {
      break;
    }
    await Future.delayed(delay);
    yield ++count;
  }
}

Stream<String> streamData() async* {
  yield 'A';
  yield 'B';
  yield 'C';
}

void main() async {
  final stopwatch = Stopwatch()..start();
  print('Loading numbers...\n');

  // await for (var number in numStream()) {
  //   print('✅ $number');
  // }
  await for (var c in countStream(7)) {
    print('✅ $c');
  }

  final sub = streamData().listen(
    (value) => print('Got: $value'),
    onDone: () => print('Done!'),
    onError: (e) => print('Whoops Error! $e'),
    cancelOnError: false,
  );

  print(sub);

  print('\nDone!');
  stopwatch.stop();
  print('Time taken: ${stopwatch.elapsed.inSeconds} seconds');
}
