import 'dart:async';

import 'package:keyboard_observer/src/key_event.dart';
import 'package:keyboard_observer/src/keyboard_observer/filter/event_filter.dart';
import 'package:keyboard_observer/src/keyboard_observer/keyboard_observer.dart';
import 'package:keyboard_observer/src/virtual_key_codes.dart';

import 'package:win32/win32.dart' show GetKeyState;

class ImperativeKeyboardObserver extends Stream<KeyEvent> implements IKeyboardObserver {
  ImperativeKeyboardObserver({
    Iterable<VirtualKey>? targetKeys,
    IEventFilter? filter,
    Duration tickPeriod = defaultObserverTickPeriod,
  })  : _targetKeys = targetKeys == null ? VirtualKey.values.toSet() : targetKeys.toSet(),
        _tickPeriod = tickPeriod,
        _controller = StreamController<KeyEvent>.broadcast(),
        _filter = filter {
    _init();
  }

  static const Duration defaultObserverTickPeriod = Duration(milliseconds: 125);

  final StreamController<KeyEvent> _controller;
  late final StreamSubscription<void> _periodicStreamSub;

  final Duration _tickPeriod;
  final Set<VirtualKey> _targetKeys;
  final IEventFilter? _filter;

  void _init() {
    _periodicStreamSub = Stream<void>.periodic(_tickPeriod).listen(
      _onTick,
      cancelOnError: false,
    );
  }

  bool _isPressedKey(VirtualKey key)
    => GetKeyState(key.code) != 0 && GetKeyState(key.code) != 1;

  void _onTick(void _) {
    if (_targetKeys.isEmpty) return;
    Iterable<KeyEvent> events = _targetKeys
      .map((k) => KeyEvent(key: k, pressed: _isPressedKey(k))).toList()
        ..sort();

    if(_filter != null) events = _filter!.exec(events);

    for (var event in events) {
      _controller.add(event);
    }
  }

  @override
  bool get isBroadcast => true;

  @override
  StreamSubscription<KeyEvent> listen(
          void Function(KeyEvent event)? onData,
          {Function? onError,
          void Function()? onDone,
          bool? cancelOnError}) =>
      _controller.stream.listen(
        onData,
        onError: onError,
        cancelOnError: cancelOnError,
      );

  /// Add a key to watch
  @override
  void add(VirtualKey data) => _targetKeys.add(data);

  /// Remove key from observation
  @override
  void remove(VirtualKey data) => _targetKeys.remove(data);

  @override
  void close() {
    _periodicStreamSub.cancel();
    _controller.close();
  }
}
