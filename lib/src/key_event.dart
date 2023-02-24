//@immutable
import 'package:keyboard_observer/src/virtual_key_codes.dart';

class KeyEvent implements Comparable<KeyEvent>, MapEntry<VirtualKey, bool> {
  /// Virtual key code
  @override
  final VirtualKey key;

  /// Pressed state
  ///   true  - pressed
  ///   false - released
  final bool pressed;

  /// Для перегрузки мап этити
  @override
  bool get value => pressed;

  bool isPressedKey(VirtualKey key) => pressed && key == this.key;

  bool isReleasedKey(VirtualKey key) => !pressed && key == this.key;

  //@literal
  const KeyEvent({
    required this.key,
    required this.pressed,
  });

  @override
  String toString() =>
      '<Virtual key code $key is ${pressed ? 'pressed' : 'released'}>';

  @override
  bool operator ==(covariant KeyEvent other) =>
      identical(this, other) ||
      (other.key == key && other.pressed == pressed);

  @override
  int get hashCode => Object.hash(key, pressed);

  @override
  int compareTo(KeyEvent other) =>
      key.code.compareTo(other.key.code) * 2 +
      (pressed == other.pressed ? 0 : (pressed && !other.pressed ? 1 : 0));
}
