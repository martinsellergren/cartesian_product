library;

/// Input is a list of "bags".
/// Pick 1 item from each bag, in all possible ways.
/// [
///    [a,b,c],
///    [1,2]
/// ]
/// returns
/// [
///    [a,1],
///    [a,2],
///    [b,1],
///    [b,2],
///    [c,1],
///    [c,2]
/// ]
List<List<T>> cartesianProduct<T>(Iterable<List<T>> elems) {
  List<List<T>> perms = [];
  _step<T>(elems.toList(), perms, 0, []);
  return perms.length == 1 && perms.first.isEmpty ? [] : perms;
}

void _step<T>(
    List<List<T>> lists, List<List<T>> result, int depth, List<T> current) {
  if (depth == lists.length) {
    result.add(current);
    return;
  }

  for (int i = 0; i < lists[depth].length; i++) {
    _step<T>(lists, result, depth + 1, [...current, lists[depth][i]]);
  }
}
