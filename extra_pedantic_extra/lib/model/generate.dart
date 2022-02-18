import 'comment.dart';
import 'rules.dart';

String generate_analysis_options() {
  final analysis_options = analysis_options_string_from_rules(
    lints: all_judged_rules()
      ..sort(
        (final a, final b) => (() {
          if (a.judgement.enabled) {
            return 0;
          } else {
            return 1;
          }
        }())
            .compareTo(
          () {
            if (b.judgement.enabled) {
              return 0;
            } else {
              return 1;
            }
          }(),
        ),
      ),
  );
  return analysis_options;
}

List<JudgedRule> all_judged_rules() => Rule.values
    .map(
      (final a) => JudgedRule(
        a,
        judge(a),
      ),
    )
    .toList();

Judgement judge(
  final Rule rule,
) {
  switch (rule) {
    //
    // Enabled rules
    //
    case Rule.conditional_uri_does_not_exist:
      return const Judgement(no_comment, true);
    case Rule.always_declare_return_types:
      return const Judgement(no_comment, true);
    case Rule.annotate_overrides:
      return const Judgement(no_comment, true);
    case Rule.avoid_null_checks_in_equality_operators:
      return const Judgement(no_comment, true);
    case Rule.prefer_collection_literals:
      return const Judgement(no_comment, true);
    case Rule.prefer_conditional_assignment:
      return const Judgement(no_comment, true);
    case Rule.prefer_final_fields:
      return const Judgement(no_comment, true);
    case Rule.prefer_for_elements_to_map_fromIterable:
      return const Judgement(no_comment, true);
    case Rule.prefer_generic_function_type_aliases:
      return const Judgement(no_comment, true);
    case Rule.prefer_if_null_operators:
      return const Judgement(no_comment, true);
    case Rule.prefer_spread_collections:
      return const Judgement(no_comment, true);
    case Rule.use_function_type_syntax_for_parameters:
      return const Judgement(no_comment, true);
    case Rule.avoid_empty_else:
      return const Judgement(no_comment, true);
    case Rule.avoid_init_to_null:
      return const Judgement(no_comment, true);
    case Rule.avoid_relative_lib_imports:
      return const Judgement(no_comment, true);
    case Rule.avoid_return_types_on_setters:
      return const Judgement(no_comment, true);
    case Rule.avoid_shadowing_type_parameters:
      return const Judgement(no_comment, true);
    case Rule.avoid_types_as_parameter_names:
      return const Judgement(no_comment, true);
    case Rule.curly_braces_in_flow_control_structures:
      return const Judgement(no_comment, true);
    case Rule.empty_catches:
      return const Judgement(no_comment, true);
    case Rule.empty_constructor_bodies:
      return const Judgement(no_comment, true);
    case Rule.library_names:
      return const Judgement(no_comment, true);
    case Rule.library_prefixes:
      return const Judgement(no_comment, true);
    case Rule.no_duplicate_case_values:
      return const Judgement(no_comment, true);
    case Rule.null_closures:
      return const Judgement(no_comment, true);
    case Rule.prefer_contains:
      return const Judgement(no_comment, true);
    case Rule.prefer_equal_for_default_values:
      return const Judgement(no_comment, true);
    case Rule.prefer_is_empty:
      return const Judgement(no_comment, true);
    case Rule.prefer_is_not_empty:
      return const Judgement(no_comment, true);
    case Rule.prefer_iterable_whereType:
      return const Judgement(no_comment, true);
    case Rule.recursive_getters:
      return const Judgement(no_comment, true);
    case Rule.slash_for_doc_comments:
      return const Judgement(no_comment, true);
    case Rule.type_init_formals:
      return const Judgement(no_comment, true);
    case Rule.unawaited_futures:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_const:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_new:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_null_in_if_null_operators:
      return const Judgement(no_comment, true);
    case Rule.unrelated_type_equality_checks:
      return const Judgement(no_comment, true);
    case Rule.use_rethrow_when_possible:
      return const Judgement(no_comment, true);
    case Rule.valid_regexps:
      return const Judgement(no_comment, true);
    case Rule.control_flow_in_finally:
      return const Judgement(no_comment, true);
    case Rule.prefer_final_locals:
      return const Judgement(no_comment, true);
    case Rule.throw_in_finally:
      return const Judgement(no_comment, true);
    case Rule.await_only_futures:
      return const Judgement(no_comment, true);
    case Rule.cancel_subscriptions:
      return const Judgement(no_comment, true);
    case Rule.close_sinks:
      return const Judgement(no_comment, true);
    case Rule.hash_and_equals:
      return const Judgement(no_comment, true);
    case Rule.implementation_imports:
      return const Judgement(no_comment, true);
    case Rule.package_api_docs:
      return const Judgement(no_comment, true);
    case Rule.package_names:
      return const Judgement(no_comment, true);
    case Rule.package_prefixed_library_names:
      return const Judgement(no_comment, true);
    case Rule.test_types_in_equals:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_getters_setters:
      return const Judgement(no_comment, true);
    case Rule.void_checks:
      return const Judgement(no_comment, true);
    case Rule.type_annotate_public_apis:
      return const Judgement(no_comment, true);
    case Rule.avoid_slow_async_io:
      return const Judgement(no_comment, true);
    case Rule.invariant_booleans:
      return const Judgement(no_comment, true);
    case Rule.iterable_contains_unrelated_type:
      return const Judgement(no_comment, true);
    case Rule.list_remove_unrelated_type:
      return const Judgement(no_comment, true);
    case Rule.literal_only_boolean_expressions:
      return const Judgement(no_comment, true);
    case Rule.no_adjacent_strings_in_list:
      return const Judgement(no_comment, true);
    case Rule.directives_ordering:
      return const Judgement(no_comment, true);
    case Rule.only_throw_errors:
      return const Judgement(no_comment, true);
    case Rule.prefer_asserts_in_initializer_lists:
      return const Judgement(no_comment, true);
    case Rule.prefer_const_constructors:
      return const Judgement(no_comment, true);
    case Rule.prefer_const_constructors_in_immutables:
      return const Judgement(no_comment, true);
    case Rule.prefer_typing_uninitialized_variables:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_null_aware_assignments:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_overrides:
      return const Judgement(no_comment, true);
    case Rule.use_string_buffers:
      return const Judgement(no_comment, true);
    case Rule.use_full_hex_values_for_flutter_colors:
      return const Judgement(no_comment, true);
    case Rule.prefer_inlined_adds:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_parenthesis:
      return const Judgement(no_comment, true);
    case Rule.prefer_const_declarations:
      return const Judgement(no_comment, true);
    case Rule.prefer_null_aware_operators:
      return const Judgement(no_comment, true);
    case Rule.always_put_required_named_parameters_first:
      return const Judgement(no_comment, true);
    case Rule.avoid_catching_errors:
      return const Judgement(no_comment, true);
    case Rule.avoid_double_and_int_checks:
      return const Judgement(no_comment, true);
    case Rule.empty_statements:
      return const Judgement(no_comment, true);
    case Rule.avoid_implementing_value_types:
      return const Judgement(no_comment, true);
    case Rule.avoid_js_rounded_ints:
      return const Judgement(no_comment, true);
    case Rule.avoid_returning_null_for_future:
      return const Judgement(no_comment, true);
    case Rule.avoid_returning_null_for_void:
      return const Judgement(no_comment, true);
    case Rule.avoid_returning_this:
      return const Judgement(no_comment, true);
    case Rule.avoid_single_cascade_in_expression_statements:
      return const Judgement(no_comment, true);
    case Rule.avoid_unused_constructor_parameters:
      return const Judgement(no_comment, true);
    case Rule.avoid_void_async:
      return const Judgement(no_comment, true);
    case Rule.join_return_with_assignment:
      return const Judgement(no_comment, true);
    case Rule.parameter_assignments:
      return const Judgement(no_comment, true);
    case Rule.prefer_final_in_for_each:
      return const Judgement(no_comment, true);
    case Rule.prefer_initializing_formals:
      return const Judgement(no_comment, true);
    case Rule.provide_deprecation_message:
      return const Judgement(no_comment, true);
    case Rule.sort_pub_dependencies:
      return const Judgement(no_comment, true);
    case Rule.sort_unnamed_constructors_first:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_await_in_return:
      return const Judgement(no_comment, true);
    case Rule.unsafe_html:
      return const Judgement(no_comment, true);
    case Rule.file_names:
      return const Judgement(no_comment, true);
    case Rule.cast_nullable_to_non_nullable:
      return const Judgement(no_comment, true);
    case Rule.exhaustive_cases:
      return const Judgement(no_comment, true);
    case Rule.prefer_relative_imports:
      return const Judgement(no_comment, true);
    case Rule.tighten_type_of_initializing_formals:
      return const Judgement(no_comment, true);
    case Rule.avoid_dynamic_calls:
      return const Judgement(no_comment, true);
    case Rule.avoid_catches_without_on_clauses:
      return const Judgement(no_comment, true);
    case Rule.avoid_type_to_string:
      return const Judgement(no_comment, true);
    case Rule.avoid_web_libraries_in_flutter:
      return const Judgement(no_comment, true);
    case Rule.no_default_cases:
      return const Judgement(no_comment, true);
    case Rule.no_logic_in_create_state:
      return const Judgement(no_comment, true);
    case Rule.overridden_fields:
      return const Judgement(no_comment, true);
    case Rule.prefer_asserts_with_message:
      return const Judgement(no_comment, true);
    case Rule.prefer_mixin:
      return const Judgement(no_comment, true);
    case Rule.prefer_null_aware_method_calls:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_nullable_for_final_variable_declarations:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_statements:
      return const Judgement(no_comment, true);
    case Rule.use_build_context_synchronously:
      return const Judgement(no_comment, true);
    case Rule.use_is_even_rather_than_modulo:
      return const Judgement(no_comment, true);
    case Rule.comment_references:
      return const Judgement(no_comment, true);
    case Rule.noop_primitive_operations:
      return const Judgement(no_comment, true);
    case Rule.prefer_final_parameters:
      return const Judgement(CommentCustom("This makes it easier to refactor code."), true);
    case Rule.secure_pubspec_urls:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_constructor_name:
      return const Judgement(no_comment, true);
    case Rule.unnecessary_late:
      return const Judgement(no_comment, true);
    //
    // Disabled rules
    //
    case Rule.use_test_throws_matchers:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.use_decorated_box:
      return const Judgement(disturbs_flow, false);
    case Rule.sized_box_shrink_expand:
      return const Judgement(disturbs_flow, false);
    case Rule.sized_box_for_whitespace:
      return const Judgement(disturbs_flow, false);
    case Rule.no_leading_underscores_for_local_identifiers:
      return const Judgement(too_pedantic, false);
    case Rule.no_leading_underscores_for_library_prefixes:
      return const Judgement(too_pedantic, false);
    case Rule.eol_at_end_of_file:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.depend_on_referenced_packages:
      return const Judgement(disturbs_flow, false);
    case Rule.avoid_multiple_declarations_per_line:
      return const Judgement(CommentCustom("Has false positives."), false);
    case Rule.avoid_private_typedef_functions:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_final_parameters:
      return const Judgement(no_comment, false);
    case Rule.avoid_returning_null:
      return const Judgement(obsolete_nnbd, false);
    case Rule.prefer_if_elements_to_conditional_expressions:
      return const Judgement(disturbs_flow, false);
    case Rule.prefer_foreach:
      return const Judgement(disturbs_flow, false);
    case Rule.always_require_non_null_named_parameters:
      return const Judgement(obsolete_nnbd, false);
    case Rule.prefer_void_to_null:
      return const Judgement(obsolete_nnbd, false);
    case Rule.camel_case_extensions:
      return const Judgement(
          CommentCustom(
            "Disabled because an underscore is useful to "
            "represent domains in generated code.",
          ),
          false);
    case Rule.omit_local_variable_types:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_adjacent_string_concatenation:
      return const Judgement(no_comment, false);
    case Rule.prefer_single_quotes:
      return const Judgement(too_pedantic, false);
    case Rule.always_put_control_body_on_new_line:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_as:
      return const Judgement(too_pedantic, false);
    case Rule.unnecessary_this:
      return const Judgement(CommentCustom("Too many false positives."), false);
    case Rule.prefer_bool_in_asserts:
      return const Judgement(no_comment, false);
    case Rule.use_to_and_as_if_applicable:
      return const Judgement(too_pedantic, false);
    case Rule.sort_child_properties_last:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_function_declarations_over_variables:
      return const Judgement(
          CommentCustom("With variables, the return type can be omitted safely "
              "which is useful in FP-style code."),
          false);
    case Rule.always_use_package_imports:
      return const Judgement(CommentCustom("Prefer relative imports"), false);
    case Rule.avoid_annotating_with_dynamic:
      return const Judgement(CommentCustom("It is better to always be explicit about dynamic."), false);
    case Rule.avoid_bool_literals_in_conditional_expressions:
      return const Judgement(
          CommentCustom("bool literals in conditional expressions make it " +
              "easier to reason about them. X ? Y : Z is easier " +
              "for humans than e.g. X || Z"),
          false);
    case Rule.avoid_classes_with_only_static_members:
      return const Judgement(
          CommentCustom("Classes with static members don't pollute the global namespace."), false);
    case Rule.avoid_escaping_inner_quotes:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_function_literals_in_foreach_calls:
      return const Judgement(disturbs_flow, false);
    case Rule.avoid_equals_and_hash_code_on_mutable_classes:
      return const Judgement(CommentCustom("@immutable depends on meta."), false);
    case Rule.avoid_positional_boolean_parameters:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_print:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_redundant_argument_values:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_renaming_method_parameters:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.avoid_setters_without_getters:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.avoid_types_on_closure_parameters:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_unnecessary_containers:
      return const Judgement(disturbs_flow, false);
    case Rule.camel_case_types:
      return const Judgement(CommentCustom("Underscores can be useful in generated code."), false);
    case Rule.cascade_invocations:
      return const Judgement(too_pedantic, false);
    case Rule.constant_identifier_names:
      return const Judgement(too_pedantic, false);
    case Rule.deprecated_consistency:
      return const Judgement(too_pedantic, false);
    case Rule.diagnostic_describe_all_properties:
      return const Judgement(too_pedantic, false);
    case Rule.flutter_style_todos:
      return const Judgement(too_pedantic, false);
    case Rule.do_not_use_environment:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.leading_newlines_in_multiline_strings:
      return const Judgement(too_pedantic, false);
    case Rule.library_private_types_in_public_api:
      return const Judgement(too_pedantic, false);
    case Rule.lines_longer_than_80_chars:
      return const Judgement(too_pedantic, false);
    case Rule.missing_whitespace_between_adjacent_strings:
      return const Judgement(too_pedantic, false);
    case Rule.non_constant_identifier_names:
      return const Judgement(too_pedantic, false);
    case Rule.no_runtimeType_toString:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.one_member_abstracts:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_const_literals_to_create_immutables:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_constructors_over_static_methods:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_double_quotes:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_expression_function_bodies:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_interpolation_to_compose_strings:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_int_literals:
      return const Judgement(too_pedantic, false);
    case Rule.prefer_is_not_operator:
      return const Judgement(too_pedantic, false);
    case Rule.public_member_api_docs:
      return const Judgement(too_pedantic, false);
    case Rule.sort_constructors_first:
      return const Judgement(too_pedantic, false);
    case Rule.super_goes_last:
      return const Judgement(CommentCustom("Deprecated"), false);
    case Rule.unnecessary_brace_in_string_interps:
      return const Judgement(too_pedantic, false);
    case Rule.unnecessary_final:
      return const Judgement(
          CommentCustom("final tells the reader 'This variable won't be mutated.'"), false);
    case Rule.unnecessary_lambdas:
      return const Judgement(
          CommentCustom("In rare cases it is possible for this to introduce bugs."), false);
    case Rule.unnecessary_null_checks:
      return const Judgement(too_pedantic_may_reconsider, false);
    case Rule.unnecessary_raw_strings:
      return const Judgement(too_pedantic, false);
    case Rule.unnecessary_string_escapes:
      return const Judgement(too_pedantic, false);
    case Rule.unnecessary_string_interpolations:
      return const Judgement(too_pedantic, false);
    case Rule.use_if_null_to_convert_nulls_to_bools:
      return const Judgement(too_pedantic, false);
    case Rule.use_key_in_widget_constructors:
      return const Judgement(too_pedantic, false);
    case Rule.use_late_for_private_fields_and_variables:
      return const Judgement(too_pedantic, false);
    case Rule.use_named_constants:
      return const Judgement(
        CommentCustom("There could be multiple constants with the same value but different identifiers."),
        false,
      );
    case Rule.use_raw_strings:
      return const Judgement(too_pedantic, false);
    case Rule.use_setters_to_change_properties:
      return const Judgement(too_pedantic, false);
    case Rule.null_check_on_nullable_type_parameter:
      return const Judgement(CommentCustom("Too many false positives."), false);
    case Rule.require_trailing_commas:
      return const Judgement(too_pedantic, false);
    case Rule.avoid_field_initializers_in_const_classes:
      return const Judgement(too_pedantic, false);
    case Rule.always_specify_types:
      return const Judgement(too_pedantic, false);
  }
}

String analysis_options_string_from_rules({
  required final Iterable<JudgedRule> lints,
}) =>
    <String>[
      """
# ========================================
# ======= This file was generated. =======
# ========================================
analyzer:
  strong-mode:
    # https://github.com/dart-lang/language/tree/master/resources/type-system
    implicit-casts: false
    implicit-dynamic: false
  language:
    # https://github.com/dart-lang/language/tree/master/resources/type-system
    strict-inference: true
    strict-raw-types: true
    # TODO enable once 2.16.0 isn't new anymore
    # strict-casts: true 
  # enable-experiment:
    # https://github.com/dart-lang/sdk/blob/main/tools/experimental_features.yaml

linter:
  # All rules: https://github.com/dart-lang/linter/blob/master/lib/src/rules.dart
  rules:""",
      for (final lint in lints) //
        <String>[
          "    ",
          (() {
            if (lint.judgement.enabled) {
              return "";
            } else {
              return "# ";
            }
          }()),
          "- ",
          rule_to_analysis_options_lint_rule_id(
            rule: lint.lint_rule,
          ),
          " # ",
          comment_description(
            lint.judgement.comment,
          ),
        ].join()
    ].join("\n");

class JudgedRule {
  final Rule lint_rule;
  final Judgement judgement;

  const JudgedRule(
    this.lint_rule,
    this.judgement,
  );
}

class Judgement {
  final Comment comment;
  final bool enabled;

  const Judgement(
    final this.comment,
    final this.enabled,
  );
}
