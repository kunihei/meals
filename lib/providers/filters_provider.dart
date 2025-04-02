import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutenFree,
  lactoseFree,
  vegetarian,
  vegan,
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
      : super({
          Filter.glutenFree: false,
          Filter.lactoseFree: false,
          Filter.vegetarian: false,
          Filter.vegan: false,
        });

/*************  ✨ Codeium Command ⭐  *************/
  /// Updates the state of the [filter] to [isActive].
  ///
  /// Since [StateNotifier] state must be immutable, this method creates a new
  /// map with the updated value instead of directly modifying the existing
  /// state.
/******  86f22d01-fad5-416a-bd3d-94c6cd98eb16  *******/
  void setFilter(Filter filter, bool isActive) {
    // state[filter] = isActive; // not allowed! => mutating state
    state = {
      ...state,
      filter: isActive,
    };
  }
}

final filtersProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>(
  (ref) => FiltersNotifier(),
);
