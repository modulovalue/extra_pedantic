import 'models/analysis_options_lint.dart';

class AnalysisOptionsRules {
  static const noComment = "No comment.";
  static const tooPedantic = "Too pedantic.";
  static const tooPedanticMayReconsider = "Too pedantic.";
  static const obsoleteNNBD = "Obsolete because of NNBD.";

  AnalysisOptionsRules();

  late final Iterable<CommentedLint> enabled = [
    CommentedLintImpl("always_declare_return_types", noComment),
    CommentedLintImpl("annotate_overrides", noComment),
    CommentedLintImpl("avoid_null_checks_in_equality_operators", noComment),
    CommentedLintImpl("prefer_collection_literals", noComment),
    CommentedLintImpl("prefer_conditional_assignment", noComment),
    CommentedLintImpl("prefer_final_fields", noComment),
    CommentedLintImpl("prefer_for_elements_to_map_fromIterable", noComment),
    CommentedLintImpl("prefer_generic_function_type_aliases", noComment),
    CommentedLintImpl("prefer_if_null_operators", noComment),
    CommentedLintImpl("prefer_spread_collections", noComment),
    CommentedLintImpl("use_function_type_syntax_for_parameters", noComment),
    CommentedLintImpl("avoid_empty_else", noComment),
    CommentedLintImpl("avoid_init_to_null", noComment),
    CommentedLintImpl("avoid_relative_lib_imports", noComment),
    CommentedLintImpl("avoid_return_types_on_setters", noComment),
    CommentedLintImpl("avoid_shadowing_type_parameters", noComment),
    CommentedLintImpl("avoid_types_as_parameter_names", noComment),
    CommentedLintImpl("curly_braces_in_flow_control_structures", noComment),
    CommentedLintImpl("empty_catches", noComment),
    CommentedLintImpl("empty_constructor_bodies", noComment),
    CommentedLintImpl("library_names", noComment),
    CommentedLintImpl("library_prefixes", noComment),
    CommentedLintImpl("no_duplicate_case_values", noComment),
    CommentedLintImpl("null_closures", noComment),
    CommentedLintImpl("prefer_contains", noComment),
    CommentedLintImpl("prefer_equal_for_default_values", noComment),
    CommentedLintImpl("prefer_is_empty", noComment),
    CommentedLintImpl("prefer_is_not_empty", noComment),
    CommentedLintImpl("prefer_iterable_whereType", noComment),
    CommentedLintImpl("recursive_getters", noComment),
    CommentedLintImpl("slash_for_doc_comments", noComment),
    CommentedLintImpl("type_init_formals", noComment),
    CommentedLintImpl("unawaited_futures", noComment),
    CommentedLintImpl("unnecessary_const", noComment),
    CommentedLintImpl("unnecessary_new", noComment),
    CommentedLintImpl("unnecessary_null_in_if_null_operators", noComment),
    CommentedLintImpl("unrelated_type_equality_checks", noComment),
    CommentedLintImpl("use_rethrow_when_possible", noComment),
    CommentedLintImpl("valid_regexps", noComment),
    CommentedLintImpl("control_flow_in_finally", noComment),
    CommentedLintImpl("empty_statements", noComment),
    CommentedLintImpl("prefer_final_locals", noComment),
    CommentedLintImpl("throw_in_finally", noComment),
    CommentedLintImpl("await_only_futures", noComment),
    CommentedLintImpl("cancel_subscriptions", noComment),
    CommentedLintImpl("close_sinks", noComment),
    CommentedLintImpl("hash_and_equals", noComment),
    CommentedLintImpl("implementation_imports", noComment),
    CommentedLintImpl("package_api_docs", noComment),
    CommentedLintImpl("package_names", noComment),
    CommentedLintImpl("package_prefixed_library_names", noComment),
    CommentedLintImpl("test_types_in_equals", noComment),
    CommentedLintImpl("unnecessary_getters_setters", noComment),
    CommentedLintImpl("void_checks", noComment),
    CommentedLintImpl("type_annotate_public_apis", noComment),
    CommentedLintImpl("avoid_slow_async_io", noComment),
    CommentedLintImpl("invariant_booleans", noComment),
    CommentedLintImpl("iterable_contains_unrelated_type", noComment),
    CommentedLintImpl("list_remove_unrelated_type", noComment),
    CommentedLintImpl("literal_only_boolean_expressions", noComment),
    CommentedLintImpl("no_adjacent_strings_in_list", noComment),
    CommentedLintImpl("directives_ordering", noComment),
    CommentedLintImpl("only_throw_errors", noComment),
    CommentedLintImpl("prefer_asserts_in_initializer_lists", noComment),
    CommentedLintImpl("prefer_const_constructors", noComment),
    CommentedLintImpl("prefer_const_constructors_in_immutables", noComment),
    CommentedLintImpl("prefer_typing_uninitialized_variables", noComment),
    CommentedLintImpl("unnecessary_null_aware_assignments", noComment),
    CommentedLintImpl("unnecessary_overrides", noComment),
    CommentedLintImpl("use_string_buffers", noComment),
    CommentedLintImpl("use_full_hex_values_for_flutter_colors", noComment),
    CommentedLintImpl("prefer_inlined_adds", noComment),
    CommentedLintImpl(
      "prefer_if_elements_to_conditional_expressions",
      noComment,
    ),
    CommentedLintImpl("unnecessary_parenthesis", noComment),
    CommentedLintImpl("prefer_const_declarations", noComment),
    CommentedLintImpl("prefer_null_aware_operators", noComment),
    CommentedLintImpl(
      "always_put_required_named_parameters_first",
      noComment,
    ),
    CommentedLintImpl("avoid_catching_errors", noComment),
    CommentedLintImpl("avoid_double_and_int_checks", noComment),
    CommentedLintImpl("avoid_implementing_value_types", noComment),
    CommentedLintImpl("avoid_js_rounded_ints", noComment),
    CommentedLintImpl("avoid_private_typedef_functions", noComment),
    CommentedLintImpl("avoid_returning_null", noComment),
    CommentedLintImpl("avoid_returning_null_for_future", noComment),
    CommentedLintImpl("avoid_returning_null_for_void", noComment),
    CommentedLintImpl("avoid_returning_this", noComment),
    CommentedLintImpl(
      "avoid_single_cascade_in_expression_statements",
      noComment,
    ),
    CommentedLintImpl("avoid_unused_constructor_parameters", noComment),
    CommentedLintImpl("avoid_void_async", noComment),
    CommentedLintImpl("join_return_with_assignment", noComment),
    CommentedLintImpl("parameter_assignments", noComment),
    CommentedLintImpl("prefer_final_in_for_each", noComment),
    CommentedLintImpl("prefer_foreach", noComment),
    CommentedLintImpl("prefer_initializing_formals", noComment),
    CommentedLintImpl("provide_deprecation_message", noComment),
    CommentedLintImpl("sort_pub_dependencies", noComment),
    CommentedLintImpl("sort_unnamed_constructors_first", noComment),
    CommentedLintImpl("unnecessary_await_in_return", noComment),
    CommentedLintImpl("unsafe_html", noComment),
    CommentedLintImpl("file_names", noComment),
    CommentedLintImpl("cast_nullable_to_non_nullable", noComment),
    CommentedLintImpl("exhaustive_cases", noComment),
    CommentedLintImpl(
      "prefer_relative_imports",
      "With imports don't have to depend on the package name.",
    ),
    CommentedLintImpl("tighten_type_of_initializing_formals", noComment),
    CommentedLintImpl("avoid_dynamic_calls", noComment),
    CommentedLintImpl("avoid_catches_without_on_clauses", noComment),
    CommentedLintImpl("avoid_field_initializers_in_const_classes",
        "Getter type inference isn't as powerful as the type inference of fields. This ads some overhead. I'm keeping it enabled for now."),
    CommentedLintImpl("avoid_type_to_string", noComment),
    CommentedLintImpl("avoid_web_libraries_in_flutter", noComment),
    CommentedLintImpl("no_default_cases", noComment),
    CommentedLintImpl("no_logic_in_create_state", noComment),
    CommentedLintImpl("overridden_fields", noComment),
    CommentedLintImpl("prefer_asserts_with_message", noComment),
    CommentedLintImpl("prefer_mixin", noComment),
    CommentedLintImpl("prefer_null_aware_method_calls", noComment),
    CommentedLintImpl("sized_box_for_whitespace", noComment),
    CommentedLintImpl(
      "unnecessary_nullable_for_final_variable_declarations",
      noComment,
    ),
    CommentedLintImpl("unnecessary_statements", noComment),
    CommentedLintImpl("use_build_context_synchronously", noComment),
    CommentedLintImpl("use_is_even_rather_than_modulo", noComment),
  ];
  late final Iterable<CommentedLint> disabled = [
    CommentedLintImpl(
      "always_require_non_null_named_parameters",
      obsoleteNNBD,
    ),
    CommentedLintImpl(
      "prefer_void_to_null",
      obsoleteNNBD,
    ),
    CommentedLintImpl(
      "camel_case_extensions",
      "Disabled because an underscore is useful to "
          "represent domain separation in generated code.",
    ),
    CommentedLintImpl(
      "omit_local_variable_types",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_adjacent_string_concatenation",
      "Being explicit with string concatenation " + "is better.",
    ),
    CommentedLintImpl(
      "prefer_single_quotes",
      tooPedantic,
    ),
    CommentedLintImpl(
      "always_put_control_body_on_new_line",
      tooPedantic,
    ),
    CommentedLintImpl(
      "always_specify_types",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_as",
      tooPedantic,
    ),
    CommentedLintImpl(
      "unnecessary_this",
      "There are cases related to type inference "
          "where this lint is counterproductive.",
    ),
    CommentedLintImpl(
      "prefer_bool_in_asserts",
      noComment,
    ),
    CommentedLintImpl(
      "use_to_and_as_if_applicable",
      tooPedantic,
    ),
    CommentedLintImpl(
      "sort_child_properties_last",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_function_declarations_over_variables",
      "With variables, the return type can be omitted safely "
          "which is useful in FP-style code.",
    ),
    CommentedLintImpl(
      "always_use_package_imports",
      "Prefer relative imports",
    ),
    CommentedLintImpl(
      "avoid_annotating_with_dynamic",
      "It is better to always be explicit about dynamic.",
    ),
    CommentedLintImpl(
      "avoid_bool_literals_in_conditional_expressions",
      "bool literals in conditional expressions make it " +
          "easier to reason about them. X ? Y : Z is easier " +
          "for humans than e.g. X || Z",
    ),
    CommentedLintImpl(
      "avoid_classes_with_only_static_members",
      "Classis with static members don't pollute the global namespace less.",
    ),
    CommentedLintImpl(
      "avoid_escaping_inner_quotes",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_function_literals_in_foreach_calls",
      "Great lint, but if you worry about the memory overhead "
          "of closures you should probably switch to Rust.",
    ),
    CommentedLintImpl(
      "avoid_multiple_declarations_per_line",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_equals_and_hash_code_on_mutable_classes",
      "@immutable needs a dependency on meta.",
    ),
    CommentedLintImpl(
      "avoid_positional_boolean_parameters",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_print",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_redundant_argument_values",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_renaming_method_parameters",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "avoid_setters_without_getters",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "avoid_types_on_closure_parameters",
      tooPedantic,
    ),
    CommentedLintImpl(
      "avoid_unnecessary_containers",
      "Containers make it easy to iterate on designs.",
    ),
    CommentedLintImpl(
      "camel_case_types",
      "Underscores can be useful in generated code.",
    ),
    CommentedLintImpl(
      "cascade_invocations",
      tooPedantic,
    ),
    CommentedLintImpl(
      "comment_references",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "constant_identifier_names",
      tooPedantic,
    ),
    CommentedLintImpl(
      "deprecated_consistency",
      tooPedantic,
    ),
    CommentedLintImpl(
      "diagnostic_describe_all_properties",
      tooPedantic,
    ),
    CommentedLintImpl(
      "flutter_style_todos",
      tooPedantic,
    ),
    CommentedLintImpl(
      "do_not_use_environment",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "leading_newlines_in_multiline_strings",
      tooPedantic,
    ),
    CommentedLintImpl(
      "library_private_types_in_public_api",
      tooPedantic,
    ),
    CommentedLintImpl(
      "lines_longer_than_80_chars",
      tooPedantic,
    ),
    CommentedLintImpl(
      "missing_whitespace_between_adjacent_strings",
      tooPedantic,
    ),
    CommentedLintImpl(
      "non_constant_identifier_names",
      tooPedantic,
    ),
    CommentedLintImpl(
      "no_runtimeType_toString",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "one_member_abstracts",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_const_literals_to_create_immutables",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_constructors_over_static_methods",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_double_quotes",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_expression_function_bodies",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_interpolation_to_compose_strings",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_int_literals",
      tooPedantic,
    ),
    CommentedLintImpl(
      "prefer_is_not_operator",
      tooPedantic,
    ),
    CommentedLintImpl(
      "public_member_api_docs",
      tooPedantic,
    ),
    CommentedLintImpl(
      "sort_constructors_first",
      tooPedantic,
    ),
    CommentedLintImpl(
      "super_goes_last",
      "Deprecated",
    ),
    CommentedLintImpl(
      "unnecessary_brace_in_string_interps",
      tooPedantic,
    ),
    CommentedLintImpl(
      "unnecessary_final",
      "final tells the reader 'This variable won't be mutated.'",
    ),
    CommentedLintImpl(
      "unnecessary_lambdas",
      "In rare cases it is possible for this to introduce bugs.",
    ),
    CommentedLintImpl(
      "unnecessary_null_checks",
      tooPedanticMayReconsider,
    ),
    CommentedLintImpl(
      "unnecessary_raw_strings",
      tooPedantic,
    ),
    CommentedLintImpl(
      "unnecessary_string_escapes",
      tooPedantic,
    ),
    CommentedLintImpl(
      "unnecessary_string_interpolations",
      tooPedantic,
    ),
    CommentedLintImpl(
      "use_if_null_to_convert_nulls_to_bools",
      tooPedantic,
    ),
    CommentedLintImpl(
      "use_key_in_widget_constructors",
      tooPedantic,
    ),
    CommentedLintImpl(
      "use_late_for_private_fields_and_variables",
      tooPedantic,
    ),
    CommentedLintImpl(
      "use_named_constants",
      "There could be multiple constants with the "
          "same value but different identifiers.",
    ),
    CommentedLintImpl(
      "use_raw_strings",
      tooPedantic,
    ),
    CommentedLintImpl(
      "use_setters_to_change_properties",
      tooPedantic,
    ),
    CommentedLintImpl(
      "null_check_on_nullable_type_parameter",
      "Too many false positives.",
    ),
    CommentedLintImpl(
      "require_trailing_commas",
      "Too many nonsensical cases especially in tests.",
    ),
  ];

  late final all = [
    ...enabled.map((_) => AnalysisOptionLintImpl(true, _)),
    ...disabled.map((_) => AnalysisOptionLintImpl(false, _)),
  ];
}
