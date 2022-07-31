import 'comment.dart';
import 'linter_all.dart';
import 'rules.dart';

String generate_readme({
  required final String analysis_options,
  required final String current_version,
}) {
  return [
    // Header
    """
# extra_pedantic

[![extra_pedantic on pub.dev](https://img.shields.io/badge/style-extra__pedantic-blue)](https://pub.dev/packages/extra_pedantic) [![Pub.dev](https://img.shields.io/pub/v/extra_pedantic.svg?style=flat-square&logo=data:image/png;base64,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)](https://pub.dartlang.org/packages/extra_pedantic) [![Github Stars](https://img.shields.io/github/stars/modulovalue/extra_pedantic?style=flat-square&logo=github)](https://github.com/modulovalue/extra_pedantic)  [![Twitter Follow](https://img.shields.io/twitter/follow/modulovalue?style=social&logo=twitter)](https://twitter.com/modulovalue) [![GitHub Follow](https://img.shields.io/github/followers/modulovalue?style=social&logo=github)](https://github.com/modulovalue)

This is an alternative to [lints](https://pub.dev/packages/lints).
""",
    // Installation instructions.
    """
To use extra_pedantic:
 * add it as a dev_dependency to your pubspec.yaml file:

```yaml
dev_dependencies:
  extra_pedantic: ${current_version}
```

 * add this line to your `analysis_options.yaml` file:

```yaml
include: package:extra_pedantic/analysis_options.yaml
```

And that's it.

---

""",
    // Overview
    """
Here is an overview of which lint rules are enabled and disabled:

Rule Name | Status | Comment | Rule Description
--- | --- | --- | ---
${<List<String>>[
      for (final x in all_judged_rules())
        () {
          final official_name = convert_ep_rule_to_analysis_options_lint_rule_id(rule: x.lint_rule);
          return <String>[
            official_name,
            () {
              final status = x.judgement.enabled;
              if (status) {
                return "✅";
              } else {
                return "❌";
              }
            }(),
            comment_description(x.judgement.comment),
            all_linter_rules_map()[official_name]!.description,
          ];
        }(),
    ].map((final a) => a.join(" | ")).join("\n")}
""",
    """

And here's the whole analysis options file:
```yaml
${analysis_options}
```""",
  ].join("\n");
}

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

List<JudgedRule> all_judged_rules() => EPRule.values
    .map(
      (final a) => JudgedRule(
        a,
        judge(a),
      ),
    )
    .toList();

Judgement judge(
  final EPRule rule,
) {
  switch (rule) {
    case EPRule.conditional_uri_does_not_exist:
      return const Judgement(no_comment, true);
    case EPRule.always_declare_return_types:
      return const Judgement(no_comment, true);
    case EPRule.annotate_overrides:
      return const Judgement(no_comment, true);
    case EPRule.avoid_null_checks_in_equality_operators:
      return const Judgement(no_comment, true);
    case EPRule.prefer_collection_literals:
      return const Judgement(no_comment, true);
    case EPRule.prefer_conditional_assignment:
      return const Judgement(no_comment, true);
    case EPRule.prefer_final_fields:
      return const Judgement(no_comment, true);
    case EPRule.prefer_for_elements_to_map_fromIterable:
      return const Judgement(no_comment, true);
    case EPRule.prefer_generic_function_type_aliases:
      return const Judgement(no_comment, true);
    case EPRule.prefer_if_null_operators:
      return const Judgement(no_comment, true);
    case EPRule.prefer_spread_collections:
      return const Judgement(no_comment, true);
    case EPRule.use_function_type_syntax_for_parameters:
      return const Judgement(no_comment, true);
    case EPRule.avoid_empty_else:
      return const Judgement(no_comment, true);
    case EPRule.avoid_init_to_null:
      return const Judgement(no_comment, true);
    case EPRule.avoid_relative_lib_imports:
      return const Judgement(no_comment, true);
    case EPRule.avoid_return_types_on_setters:
      return const Judgement(no_comment, true);
    case EPRule.avoid_shadowing_type_parameters:
      return const Judgement(no_comment, true);
    case EPRule.avoid_types_as_parameter_names:
      return const Judgement(no_comment, true);
    case EPRule.curly_braces_in_flow_control_structures:
      return const Judgement(no_comment, true);
    case EPRule.empty_catches:
      return const Judgement(no_comment, true);
    case EPRule.empty_constructor_bodies:
      return const Judgement(no_comment, true);
    case EPRule.library_names:
      return const Judgement(no_comment, true);
    case EPRule.library_prefixes:
      return const Judgement(no_comment, true);
    case EPRule.no_duplicate_case_values:
      return const Judgement(no_comment, true);
    case EPRule.null_closures:
      return const Judgement(no_comment, true);
    case EPRule.prefer_contains:
      return const Judgement(no_comment, true);
    case EPRule.prefer_equal_for_default_values:
      return const Judgement(no_comment, true);
    case EPRule.prefer_is_empty:
      return const Judgement(no_comment, true);
    case EPRule.prefer_is_not_empty:
      return const Judgement(no_comment, true);
    case EPRule.prefer_iterable_whereType:
      return const Judgement(no_comment, true);
    case EPRule.recursive_getters:
      return const Judgement(no_comment, true);
    case EPRule.slash_for_doc_comments:
      return const Judgement(no_comment, true);
    case EPRule.type_init_formals:
      return const Judgement(no_comment, true);
    case EPRule.unawaited_futures:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_const:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_new:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_null_in_if_null_operators:
      return const Judgement(no_comment, true);
    case EPRule.unrelated_type_equality_checks:
      return const Judgement(no_comment, true);
    case EPRule.use_rethrow_when_possible:
      return const Judgement(no_comment, true);
    case EPRule.valid_regexps:
      return const Judgement(no_comment, true);
    case EPRule.control_flow_in_finally:
      return const Judgement(no_comment, true);
    case EPRule.prefer_final_locals:
      return const Judgement(no_comment, true);
    case EPRule.throw_in_finally:
      return const Judgement(no_comment, true);
    case EPRule.await_only_futures:
      return const Judgement(no_comment, true);
    case EPRule.cancel_subscriptions:
      return const Judgement(no_comment, true);
    case EPRule.close_sinks:
      return const Judgement(no_comment, true);
    case EPRule.hash_and_equals:
      return const Judgement(no_comment, true);
    case EPRule.implementation_imports:
      return const Judgement(no_comment, true);
    case EPRule.package_api_docs:
      return const Judgement(no_comment, true);
    case EPRule.package_names:
      return const Judgement(no_comment, true);
    case EPRule.package_prefixed_library_names:
      return const Judgement(no_comment, true);
    case EPRule.test_types_in_equals:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_getters_setters:
      return const Judgement(no_comment, true);
    case EPRule.void_checks:
      return const Judgement(no_comment, true);
    case EPRule.type_annotate_public_apis:
      return const Judgement(no_comment, true);
    case EPRule.avoid_slow_async_io:
      return const Judgement(no_comment, true);
    case EPRule.invariant_booleans:
      return const Judgement(too_many_false_positives, false);
    case EPRule.iterable_contains_unrelated_type:
      return const Judgement(no_comment, true);
    case EPRule.list_remove_unrelated_type:
      return const Judgement(no_comment, true);
    case EPRule.literal_only_boolean_expressions:
      return const Judgement(no_comment, true);
    case EPRule.no_adjacent_strings_in_list:
      return const Judgement(no_comment, true);
    case EPRule.directives_ordering:
      return const Judgement(no_comment, true);
    case EPRule.only_throw_errors:
      return const Judgement(no_comment, true);
    case EPRule.prefer_asserts_in_initializer_lists:
      return const Judgement(no_comment, true);
    case EPRule.prefer_const_constructors:
      return const Judgement(no_comment, true);
    case EPRule.prefer_const_constructors_in_immutables:
      return const Judgement(no_comment, true);
    case EPRule.prefer_typing_uninitialized_variables:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_null_aware_assignments:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_overrides:
      return const Judgement(no_comment, true);
    case EPRule.use_string_buffers:
      return const Judgement(no_comment, true);
    case EPRule.use_full_hex_values_for_flutter_colors:
      return const Judgement(no_comment, true);
    case EPRule.prefer_inlined_adds:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_parenthesis:
      return const Judgement(no_comment, true);
    case EPRule.prefer_const_declarations:
      return const Judgement(no_comment, true);
    case EPRule.prefer_null_aware_operators:
      return const Judgement(no_comment, true);
    case EPRule.always_put_required_named_parameters_first:
      return const Judgement(no_comment, true);
    case EPRule.avoid_catching_errors:
      return const Judgement(no_comment, true);
    case EPRule.avoid_double_and_int_checks:
      return const Judgement(no_comment, true);
    case EPRule.empty_statements:
      return const Judgement(no_comment, true);
    case EPRule.avoid_implementing_value_types:
      return const Judgement(no_comment, true);
    case EPRule.avoid_js_rounded_ints:
      return const Judgement(no_comment, true);
    case EPRule.avoid_returning_null_for_future:
      return const Judgement(no_comment, true);
    case EPRule.avoid_returning_null_for_void:
      return const Judgement(no_comment, true);
    case EPRule.avoid_returning_this:
      return const Judgement(no_comment, true);
    case EPRule.avoid_single_cascade_in_expression_statements:
      return const Judgement(no_comment, true);
    case EPRule.avoid_unused_constructor_parameters:
      return const Judgement(no_comment, true);
    case EPRule.avoid_void_async:
      return const Judgement(no_comment, true);
    case EPRule.join_return_with_assignment:
      return const Judgement(no_comment, true);
    case EPRule.parameter_assignments:
      return const Judgement(no_comment, true);
    case EPRule.prefer_final_in_for_each:
      return const Judgement(no_comment, true);
    case EPRule.prefer_initializing_formals:
      return const Judgement(no_comment, true);
    case EPRule.provide_deprecation_message:
      return const Judgement(no_comment, true);
    case EPRule.sort_pub_dependencies:
      return const Judgement(no_comment, true);
    case EPRule.sort_unnamed_constructors_first:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_await_in_return:
      return const Judgement(no_comment, true);
    case EPRule.unsafe_html:
      return const Judgement(no_comment, true);
    case EPRule.file_names:
      return const Judgement(no_comment, true);
    case EPRule.cast_nullable_to_non_nullable:
      return const Judgement(no_comment, true);
    case EPRule.exhaustive_cases:
      return const Judgement(no_comment, true);
    case EPRule.prefer_relative_imports:
      return const Judgement(no_comment, true);
    case EPRule.tighten_type_of_initializing_formals:
      return const Judgement(no_comment, true);
    case EPRule.avoid_dynamic_calls:
      return const Judgement(no_comment, true);
    case EPRule.avoid_catches_without_on_clauses:
      return const Judgement(no_comment, true);
    case EPRule.avoid_type_to_string:
      return const Judgement(no_comment, true);
    case EPRule.avoid_web_libraries_in_flutter:
      return const Judgement(no_comment, true);
    case EPRule.no_default_cases:
      return const Judgement(no_comment, true);
    case EPRule.no_logic_in_create_state:
      return const Judgement(no_comment, true);
    case EPRule.overridden_fields:
      return const Judgement(no_comment, true);
    case EPRule.prefer_asserts_with_message:
      return const Judgement(no_comment, true);
    case EPRule.prefer_mixin:
      return const Judgement(no_comment, true);
    case EPRule.prefer_null_aware_method_calls:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_nullable_for_final_variable_declarations:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_statements:
      return const Judgement(no_comment, true);
    case EPRule.use_build_context_synchronously:
      return const Judgement(no_comment, true);
    case EPRule.use_is_even_rather_than_modulo:
      return const Judgement(no_comment, true);
    case EPRule.comment_references:
      return const Judgement(no_comment, true);
    case EPRule.noop_primitive_operations:
      return const Judgement(no_comment, true);
    case EPRule.prefer_final_parameters:
      return const Judgement(EPCommentCustom("This makes it easier to refactor code."), true);
    case EPRule.secure_pubspec_urls:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_constructor_name:
      return const Judgement(no_comment, true);
    case EPRule.unnecessary_late:
      return const Judgement(no_comment, true);
    case EPRule.use_colored_box:
      return const Judgement(no_comment, true);
    case EPRule.use_enums:
      return const Judgement(no_comment, true);
    case EPRule.use_super_parameters:
      return const Judgement(
        EPCommentCustom(
          "Super parameters make inheritance more convenient, but "
          "inheritance should be avoided and composition should "
          "be preferred. Even if you need inheritance, you should declare "
          "an interface and mixins, and not use super constructors.",
        ),
        false,
      );
    case EPRule.use_test_throws_matchers:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.use_decorated_box:
      return const Judgement(disturbs_flow, false);
    case EPRule.sized_box_shrink_expand:
      return const Judgement(disturbs_flow, false);
    case EPRule.sized_box_for_whitespace:
      return const Judgement(disturbs_flow, false);
    case EPRule.no_leading_underscores_for_local_identifiers:
      return const Judgement(too_pedantic, false);
    case EPRule.no_leading_underscores_for_library_prefixes:
      return const Judgement(too_pedantic, false);
    case EPRule.eol_at_end_of_file:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.depend_on_referenced_packages:
      return const Judgement(disturbs_flow, false);
    case EPRule.avoid_multiple_declarations_per_line:
      return const Judgement(EPCommentCustom("Has false positives."), false);
    case EPRule.avoid_private_typedef_functions:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_final_parameters:
      return const Judgement(no_comment, false);
    case EPRule.avoid_returning_null:
      return const Judgement(obsolete_nnbd, false);
    case EPRule.prefer_if_elements_to_conditional_expressions:
      return const Judgement(disturbs_flow, false);
    case EPRule.prefer_foreach:
      return const Judgement(disturbs_flow, false);
    case EPRule.always_require_non_null_named_parameters:
      return const Judgement(obsolete_nnbd, false);
    case EPRule.prefer_void_to_null:
      return const Judgement(obsolete_nnbd, false);
    case EPRule.camel_case_extensions:
      return const Judgement(
          EPCommentCustom(
            "Disabled because an underscore is useful to "
            "represent domains in generated code.",
          ),
          false);
    case EPRule.omit_local_variable_types:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_adjacent_string_concatenation:
      return const Judgement(no_comment, false);
    case EPRule.prefer_single_quotes:
      return const Judgement(too_pedantic, false);
    case EPRule.always_put_control_body_on_new_line:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_as:
      return const Judgement(too_pedantic, false);
    case EPRule.unnecessary_this:
      return const Judgement(EPCommentCustom("Too many false positives."), false);
    case EPRule.prefer_bool_in_asserts:
      return const Judgement(no_comment, false);
    case EPRule.use_to_and_as_if_applicable:
      return const Judgement(too_pedantic, false);
    case EPRule.sort_child_properties_last:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_function_declarations_over_variables:
      return const Judgement(
          EPCommentCustom("With variables, the return type can be omitted safely "
              "which is useful in FP-style code."),
          false);
    case EPRule.always_use_package_imports:
      return const Judgement(EPCommentCustom("Prefer relative imports"), false);
    case EPRule.avoid_annotating_with_dynamic:
      return const Judgement(EPCommentCustom("It is better to always be explicit about dynamic."), false);
    case EPRule.avoid_bool_literals_in_conditional_expressions:
      return const Judgement(
          EPCommentCustom("bool literals in conditional expressions make it " +
              "easier to reason about them. X ? Y : Z is easier " +
              "for humans than e.g. X || Z"),
          false);
    case EPRule.avoid_classes_with_only_static_members:
      return const Judgement(
          EPCommentCustom("Classes with static members don't pollute the global namespace."), false);
    case EPRule.avoid_escaping_inner_quotes:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_function_literals_in_foreach_calls:
      return const Judgement(disturbs_flow, false);
    case EPRule.avoid_equals_and_hash_code_on_mutable_classes:
      return const Judgement(EPCommentCustom("@immutable depends on meta."), false);
    case EPRule.avoid_positional_boolean_parameters:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_print:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_redundant_argument_values:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_renaming_method_parameters:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.avoid_setters_without_getters:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.avoid_types_on_closure_parameters:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_unnecessary_containers:
      return const Judgement(disturbs_flow, false);
    case EPRule.camel_case_types:
      return const Judgement(EPCommentCustom("Underscores can be useful in generated code."), false);
    case EPRule.cascade_invocations:
      return const Judgement(too_pedantic, false);
    case EPRule.constant_identifier_names:
      return const Judgement(too_pedantic, false);
    case EPRule.deprecated_consistency:
      return const Judgement(too_pedantic, false);
    case EPRule.diagnostic_describe_all_properties:
      return const Judgement(too_pedantic, false);
    case EPRule.flutter_style_todos:
      return const Judgement(too_pedantic, false);
    case EPRule.do_not_use_environment:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.leading_newlines_in_multiline_strings:
      return const Judgement(too_pedantic, false);
    case EPRule.library_private_types_in_public_api:
      return const Judgement(too_pedantic, false);
    case EPRule.lines_longer_than_80_chars:
      return const Judgement(too_pedantic, false);
    case EPRule.missing_whitespace_between_adjacent_strings:
      return const Judgement(too_pedantic, false);
    case EPRule.non_constant_identifier_names:
      return const Judgement(too_pedantic, false);
    case EPRule.no_runtimeType_toString:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.one_member_abstracts:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_const_literals_to_create_immutables:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_constructors_over_static_methods:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_double_quotes:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_expression_function_bodies:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_interpolation_to_compose_strings:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_int_literals:
      return const Judgement(too_pedantic, false);
    case EPRule.prefer_is_not_operator:
      return const Judgement(too_pedantic, false);
    case EPRule.public_member_api_docs:
      return const Judgement(too_pedantic, false);
    case EPRule.sort_constructors_first:
      return const Judgement(too_pedantic, false);
    case EPRule.super_goes_last:
      return const Judgement(EPCommentCustom("Deprecated"), false);
    case EPRule.unnecessary_brace_in_string_interps:
      return const Judgement(too_pedantic, false);
    case EPRule.unnecessary_final:
      return const Judgement(
          EPCommentCustom("final tells the reader 'This variable won't be mutated.'"), false);
    case EPRule.unnecessary_lambdas:
      return const Judgement(
          EPCommentCustom("In rare cases it is possible for this to introduce bugs."), false);
    case EPRule.unnecessary_null_checks:
      return const Judgement(too_pedantic_may_reconsider, false);
    case EPRule.unnecessary_raw_strings:
      return const Judgement(too_pedantic, false);
    case EPRule.unnecessary_string_escapes:
      return const Judgement(too_pedantic, false);
    case EPRule.unnecessary_string_interpolations:
      return const Judgement(too_pedantic, false);
    case EPRule.use_if_null_to_convert_nulls_to_bools:
      return const Judgement(too_pedantic, false);
    case EPRule.use_key_in_widget_constructors:
      return const Judgement(too_pedantic, false);
    case EPRule.use_late_for_private_fields_and_variables:
      return const Judgement(too_pedantic, false);
    case EPRule.use_named_constants:
      return const Judgement(
        EPCommentCustom("There could be multiple constants with the same value but different identifiers."),
        false,
      );
    case EPRule.use_raw_strings:
      return const Judgement(too_pedantic, false);
    case EPRule.use_setters_to_change_properties:
      return const Judgement(too_pedantic, false);
    case EPRule.null_check_on_nullable_type_parameter:
      return const Judgement(EPCommentCustom("Too many false positives."), false);
    case EPRule.require_trailing_commas:
      return const Judgement(too_pedantic, false);
    case EPRule.avoid_field_initializers_in_const_classes:
      return const Judgement(too_pedantic, false);
    case EPRule.always_specify_types:
      return const Judgement(too_pedantic, false);
  }
}

String analysis_options_string_from_rules({
  required final Iterable<JudgedRule> lints,
}) =>
    <String>[
      """
# ===============================================================
# ======= This file was generated by extra_pedantic_extra =======
# ===============================================================
analyzer:
  strong-mode:
    # https://github.com/dart-lang/language/tree/master/resources/type-system
    implicit-casts: false
    implicit-dynamic: false
  language:
    # https://github.com/dart-lang/language/tree/master/resources/type-system
    strict-inference: true
    strict-raw-types: true
    strict-casts: true 
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
          convert_ep_rule_to_analysis_options_lint_rule_id(
            rule: lint.lint_rule,
          ),
          " # ",
          comment_description(
            lint.judgement.comment,
          ),
        ].join()
    ].join("\n");

class JudgedRule {
  final EPRule lint_rule;
  final Judgement judgement;

  const JudgedRule(
    this.lint_rule,
    this.judgement,
  );
}

class Judgement {
  final EPComment comment;
  final bool enabled;

  const Judgement(
    final this.comment,
    final this.enabled,
  );
}
