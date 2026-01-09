## 5.0.0 (2026-01-09)
- updated to Dart 3.5.0
- added new rules: annotate_redeclares, avoid_unstable_final_fields, deprecated_member_use_from_same_package, invalid_runtime_check_with_js_interop_types, no_literal_bool_comparisons, no_self_assignments, no_wildcard_variable_uses, type_literal_in_constant_pattern, unnecessary_breaks, unnecessary_library_name
- disabled use_colored_box (disturbs flow)
- disabled use_string_buffers (too pedantic)
- disabled prefer_collection_literals (too pedantic)
- disabled avoid_init_to_null (too pedantic)
- disabled comment_references (too pedantic)

## 4.0.0 (2023-07-01)
- removed deprecated analyses
- updated to linter 1.30.0 & Dart 2.19.0

## 3.0.0 (2022-07-31)
- disabled invariant_booleans (too many false positives)
- enabled strict casts checks.
- enabled some new flutter related rules.

## 2.0.0 (2022-02-18)

This release comes with a gigantic overview image
(See: github repo > overview_detailed_2.0.0.png)

Some of the changes:
- removed prefer_if_elements_to_conditional_expressions, breaks flow.
- removed prefer_foreach, breaks flow.
- removed avoid_returning_null, obsolete.
- removed avoid_private_typedef_functions.
- added noop_primitive_operations
- added prefer_final_parameters
  Note: this will take some getting used to, but I believe that it is worth it.
  Consider use your IDEs capabilities to add them automatically.

## 1.5.0 (2021-05-28)

- added comment_references.
- removed avoid_field_initializers_in_const_classes.
- added an empty analysis_options file.

## 1.4.0 (2021-05-20)

- Added many new lints.
- All available lints should now either be enabled or commented out.

## 1.3.0 (2021-02-14)

- Removed use_to_and_as_if_applicable and prefer_void_to_null.
- Added more rules.
- Removed flutter analysis_options.

## 1.2.1-nullsafety.0 (2021-01-15)

- Bump up package version.
- Bump up environment SDK constraints.
- Updated package description.

## 1.2.0 (2020-03-21)

- Enabled strict inference.
- Enabled strict raw types.

## 1.1.1+3 (2019-11-3)

- Readme updated.

## 1.1.1+2 (2019-10-25)

- Badges added.

## 1.1.1+1 (2019-10-22)

- Longer description.

## 1.1.1 (2019-10-19)

- Removed diagnostic_describe_all_properties.

## 1.1.0 (2019-10-09)

- Separated into flutter and non flutter analysis_options.yaml.
- Made rules fully compatible with pedantic.

## 1.0.0 (2019-08-16)

- Initial version.
