# extra_pedantic

How to get the most, most value from Dart static analysis.

This is an alternative to [pedantic](https://github.com/dart-lang/pedantic) with many additional rules.

It does contain all pedantic rules and many more!

To use extra_pedantic add it as a dev_dependency:

```yaml
dev_dependencies:
  extra_pedantic: 1.1.1
```

Then, add this line to your `analysis_options.yaml` file

```yaml
include: package:extra_pedantic/analysis_options.yaml
```

or if you want to enforce `sort_child_properties_last` and disable `always_put_required_named_parameters_first`. (for Flutter modules)

```yaml
include: package:extra_pedantic/analysis_options_flutter.yaml
```

And you're done. 

The static analyzer might show you thousands of warnings but that's OK. 
Fix them on your own terms and you'll drastically improve your code quality and reduce the amount of bugs in your code.

Note: 
extra_pedantic does not contain any dart code. If you want to use `unawaited`, you'll have to add `pedantic` as a normal dependency.