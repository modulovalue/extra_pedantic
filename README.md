# extra_pedantic

How to get the most, most value from Dart static analysis

This is an alternative to [pedantic](https://github.com/dart-lang/pedantic) with many additional rules.

It does contain all pedantic rules (except for curly_braces_in_flow_control_structures).

Additionally, it disables implicit casts and implicit dynamics.

To use extra_pedantic add it as a dev_dependency:

```dart
dev_dependencies:
  extra_pedantic: <newest version>
```

Then, add this line to your analysis_options.yaml` file

```dart
include: package:extra_pedantic/analysis_options.yaml
```

And you're done. 
The static analyzer might show you thousands of warnings but that's OK. 
Fix them on your own terms and you'll drastically improve your code quality and reduce the amount of bugs in your code.


extra_pedantic does not contain any dart code. If you want to use `unawaited`, you'll have to add `pedantic` as a normal dependency.