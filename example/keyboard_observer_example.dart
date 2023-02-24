import 'dart:async';
import 'dart:io';

import 'package:keyboard_observer/keyboard_observer.dart';

void main(List<String> arguments) => runZonedGuarded(_body, _onError);

Future<void> _body() async {
  print('BEGIN');
  try {
    // Один из способов задать кнопки
    final keys = 'wasdq'.keyCodes;

    final observer = ImperativeKeyboardObserver(
      filter: ActualEventFilter(
        keys, 
        actualBehavior: FilterActualBehavior.changedEndPressed,
      ),
      targetKeys: keys,
    );
    observer.listen((event) {
      if(event.isPressedKey(VirtualKey.q)) observer.close();
      print(event);
    });
  } on TimeoutException {
    print('END with TimeoutException');
    exit(2);
  }
  print('END');
}

void _onError(Object error, StackTrace stack) => print(' * ERROR: $error');
