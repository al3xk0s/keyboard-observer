import 'package:keyboard_observer/keyboard_observer.dart';
import 'package:keyboard_observer/src/key_event.dart';

abstract class FilterActualBehavior {
  Iterable<KeyEvent> getActual(Map<VirtualKey, bool> previousKeyPressedMap, Iterable<KeyEvent> tickEvents);

  // Возвращает на поток ивенты в случае если кнопка поменяла свое состояние
  static const FilterActualBehavior changed = _FilterActualBehaviorOnlyChanged();

  // Возвращает на поток ивенты в случае если кнопка была нажата или зажата
  static const FilterActualBehavior pressed = _FilterActualBehaviorPressed();

  // Возвращает на поток ивенты в случае [changed], а также если клавиша зажата
  static const FilterActualBehavior changedEndPressed = FilterActualBehaviorUnion([changed, pressed]);
}

class _FilterActualBehaviorOnlyChanged implements FilterActualBehavior {
  const _FilterActualBehaviorOnlyChanged();
  
  @override
  Iterable<KeyEvent> getActual(Map<VirtualKey, bool> previousKeyPressedMap, Iterable<KeyEvent> tickEvents) {
    return tickEvents.where((ev) => previousKeyPressedMap[ev.key] != ev.pressed);
  }
}

class _FilterActualBehaviorPressed implements FilterActualBehavior {
  const _FilterActualBehaviorPressed();

  @override
  Iterable<KeyEvent> getActual(Map<VirtualKey, bool> previousKeyPressedMap, Iterable<KeyEvent> tickEvents) {
    return tickEvents.where((ev) => ev.pressed);
  }
}

/// Объединяет несколько фильтров возвращая множество значений, являющихся объединением значений фильтров
class FilterActualBehaviorUnion implements FilterActualBehavior {
  const FilterActualBehaviorUnion(Iterable<FilterActualBehavior> filters) : _filters = filters;

  final Iterable<FilterActualBehavior> _filters;

  @override
  Iterable<KeyEvent> getActual(Map<VirtualKey, bool> previousKeyPressedMap, Iterable<KeyEvent> tickEvents) {
    return { for(final filter in _filters) ...filter.getActual(previousKeyPressedMap, tickEvents) };
  }
}
