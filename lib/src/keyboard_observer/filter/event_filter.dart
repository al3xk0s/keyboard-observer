import 'package:keyboard_observer/src/key_event.dart';
import 'package:keyboard_observer/src/keyboard_observer/filter/filter_actual_behavior.dart';
import 'package:keyboard_observer/src/virtual_key_codes.dart';

abstract class IEventFilter {
  Iterable<KeyEvent> exec(Iterable<KeyEvent> tickEvents);
}

/// Фильтрует ивенты, посылая только те, что действительно изменились, 
/// например, кнопка была нажата или была отпущена
class ActualEventFilter implements IEventFilter {
  ActualEventFilter(
    Iterable<VirtualKey> keys, {
    FilterActualBehavior actualBehavior = FilterActualBehavior.changed
  }) : _actualBehavior = actualBehavior {
    _map = { for (var k in keys) k : false };
  }

  @override
  Iterable<KeyEvent> exec(Iterable<KeyEvent> tickEvents) sync* {
    _removeOldestEvents(tickEvents.map(((ev) => ev.key)));
    final newEvents = _getNewLocalEvents(tickEvents);
    yield* newEvents;

    yield* _actualBehavior.getActual(_map, tickEvents);

    _correctMapAtCurrentEvents(tickEvents);
  }

  Iterable<KeyEvent> _getNewLocalEvents(Iterable<KeyEvent> actual) {
    return actual.where((ev) => !_map.containsKey(ev.key));
  }

  void _removeOldestEvents(Iterable<VirtualKey> actual) {
    _map.removeWhere((key, value) => !actual.contains(key));
  }
  
  void _correctMapAtCurrentEvents(Iterable<KeyEvent> events) {
    for (var ev in events) {
      _map[ev.key] = ev.pressed;
    }
  }

  late final Map<VirtualKey, bool> _map;
  final FilterActualBehavior _actualBehavior;
}