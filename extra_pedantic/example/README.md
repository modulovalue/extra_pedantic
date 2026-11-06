# extra_pedantic example

Add extra_pedantic as a dev dependency in `pubspec.yaml`:

```yaml
dev_dependencies:
  extra_pedantic: ^6.0.1
```

Include it in `analysis_options.yaml`:

```yaml
include: package:extra_pedantic/analysis_options.yaml
```

Then run `dart analyze`. For example, extra_pedantic reports these:

```dart
Future<int> load(Future<int> value) async {
  // async_return_with_no_await: return await value instead.
  return value;
}

void describe(dynamic value) {
  // no_dynamic_casts: write `value as int` to make the cast visible.
  final int number = value;
  // no_raw_types: write List<int> instead of List.
  final List numbers = <int>[number];
  // use_truncating_division: use ~/ instead of / followed by toInt().
  print((numbers.length / 2).toInt());
}
```

To keep your own rules on top, add them below the include:

```yaml
include: package:extra_pedantic/analysis_options.yaml

linter:
  rules:
    avoid_print: true
```
