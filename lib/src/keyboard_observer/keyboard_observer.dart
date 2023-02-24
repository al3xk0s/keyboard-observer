import 'package:keyboard_observer/src/key_event.dart';
import 'package:keyboard_observer/src/virtual_key_codes.dart';

abstract class IKeyboardObserver implements Stream<KeyEvent>, Sink<VirtualKey> {
  void remove(VirtualKey data);
}