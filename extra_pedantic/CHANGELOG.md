## 6.0.0 (2026-11-06)
- requires Dart 3.13.0
- updated the generator to the Dart 3.13.7 linter
- added new rules: async_return_with_no_await, no_dynamic_casts, no_raw_types, remove_deprecations_in_breaking_versions, simple_directive_paths, strict_top_level_inference, switch_on_type, use_truncating_division
- replaced the strict-casts and strict-raw-types analyzer options with the no_dynamic_casts and no_raw_types rules
- judged and disabled new rules: avoid_futureor_void, empty_container_bodies, initialize_in_field_declaration, migrate_design_widgets, omit_obvious_local_variable_types, omit_obvious_property_types, simplify_variable_pattern, specify_nonobvious_local_variable_types, specify_nonobvious_property_types, unnecessary_async, unnecessary_const_in_enum_constructor, unnecessary_ignore, unnecessary_primary_constructor_body, unnecessary_type_name_in_constructor, unnecessary_unawaited, unnecessary_underscores, unsafe_variance, use_declaring_parameters, use_null_aware_elements, use_primary_constructors, var_with_no_type_annotation
- removed rules that were removed from the linter: avoid_returning_null_for_future, avoid_unstable_final_fields, iterable_contains_unrelated_type, list_remove_unrelated_type (covered by collection_methods_unrelated_type), package_api_docs, prefer_equal_for_default_values, unsafe_html
- removed deprecated rules: avoid_null_checks_in_equality_operators, prefer_final_parameters (final parameters are a compile error since Dart 3.13), unnecessary_await_in_return
- dropped disabled entries that are removed, deprecated or internal: always_require_non_null_named_parameters, avoid_as, avoid_private_typedef_functions, avoid_returning_null, enable_null_safety, erase_dart_type_extension_types, invariant_booleans, one_member_abstracts, prefer_bool_in_asserts, super_goes_last, use_if_null_to_convert_nulls_to_bools
- renamed to the official lowercase names: no_runtimetype_tostring, prefer_for_elements_to_map_fromiterable, prefer_iterable_wheretype
- disabled directives_ordering (adds churn without catching bugs)
- the generated file now lists rules in a deterministic order
- the generator now writes the options files, both READMEs and the pubspec version itself

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
