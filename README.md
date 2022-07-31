# extra_pedantic

[![extra_pedantic on pub.dev](https://img.shields.io/badge/style-extra__pedantic-blue)](https://pub.dev/packages/extra_pedantic) [![Pub.dev](https://img.shields.io/pub/v/extra_pedantic.svg?style=flat-square&logo=data:image/png;base64,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)](https://pub.dartlang.org/packages/extra_pedantic) [![Github Stars](https://img.shields.io/github/stars/modulovalue/extra_pedantic?style=flat-square&logo=github)](https://github.com/modulovalue/extra_pedantic)  [![Twitter Follow](https://img.shields.io/twitter/follow/modulovalue?style=social&logo=twitter)](https://twitter.com/modulovalue) [![GitHub Follow](https://img.shields.io/github/followers/modulovalue?style=social&logo=github)](https://github.com/modulovalue)

This is an alternative to [lints](https://pub.dev/packages/lints).

To use extra_pedantic:
 * add it as a dev_dependency to your pubspec.yaml file:

```yaml
dev_dependencies:
  extra_pedantic: 3.0.0
```

 * add this line to your `analysis_options.yaml` file:

```yaml
include: package:extra_pedantic/analysis_options.yaml
```

And that's it.

---


Here is an overview of which lint rules are enabled and disabled:


Rule Name | Status | Comment | Rule Description
--- | --- | --- | ---
always_declare_return_types | ✅ | No comment. | Declare method return types.
annotate_overrides | ✅ | No comment. | Annotate overridden members.
avoid_null_checks_in_equality_operators | ✅ | No comment. | Don't check for null in custom == operators.
prefer_collection_literals | ✅ | No comment. | Use collection literals when possible.
prefer_conditional_assignment | ✅ | No comment. | Prefer using `??=` over testing for null.
prefer_final_fields | ✅ | No comment. | Private field could be final.
prefer_for_elements_to_map_fromIterable | ✅ | No comment. | Prefer 'for' elements when building maps from iterables.
prefer_generic_function_type_aliases | ✅ | No comment. | Prefer generic function type aliases.
prefer_if_null_operators | ✅ | No comment. | Prefer using if null operators.
prefer_spread_collections | ✅ | No comment. | Use spread collections when possible.
use_function_type_syntax_for_parameters | ✅ | No comment. | Use generic function type syntax for parameters.
avoid_empty_else | ✅ | No comment. | Avoid empty else statements.
avoid_init_to_null | ✅ | No comment. | Don't explicitly initialize variables to null.
avoid_relative_lib_imports | ✅ | No comment. | Avoid relative imports for files in `lib/`.
avoid_return_types_on_setters | ✅ | No comment. | Avoid return types on setters.
avoid_shadowing_type_parameters | ✅ | No comment. | Avoid shadowing type parameters.
avoid_types_as_parameter_names | ✅ | No comment. | Avoid types as parameter names.
curly_braces_in_flow_control_structures | ✅ | No comment. | DO use curly braces for all flow control structures.
empty_catches | ✅ | No comment. | Avoid empty catch blocks.
empty_constructor_bodies | ✅ | No comment. | Use `;` instead of `{}` for empty constructor bodies.
library_names | ✅ | No comment. | Name libraries using `lowercase_with_underscores`.
library_prefixes | ✅ | No comment. | Use `lowercase_with_underscores` when specifying a library prefix.
no_duplicate_case_values | ✅ | No comment. | Don't use more than one case with same value.
null_closures | ✅ | No comment. | Do not pass `null` as an argument where a closure is expected.
prefer_contains | ✅ | No comment. | Use contains for `List` and `String` instances.
prefer_equal_for_default_values | ✅ | No comment. | Use `=` to separate a named parameter from its default value.
prefer_is_empty | ✅ | No comment. | Use `isEmpty` for Iterables and Maps.
prefer_is_not_empty | ✅ | No comment. | Use `isNotEmpty` for Iterables and Maps.
prefer_iterable_whereType | ✅ | No comment. | Prefer to use whereType on iterable.
recursive_getters | ✅ | No comment. | Property getter recursively returns itself.
slash_for_doc_comments | ✅ | No comment. | Prefer using /// for doc comments.
type_init_formals | ✅ | No comment. | Don't type annotate initializing formals.
unawaited_futures | ✅ | No comment. | `Future` results in `async` function bodies must be `await`ed or marked `unawaited` using `dart:async`.
unnecessary_const | ✅ | No comment. | Avoid const keyword.
unnecessary_new | ✅ | No comment. | Unnecessary new keyword.
unnecessary_null_in_if_null_operators | ✅ | No comment. | Avoid using `null` in `if null` operators.
unrelated_type_equality_checks | ✅ | No comment. | Equality operator `==` invocation with references of unrelated types.
use_rethrow_when_possible | ✅ | No comment. | Use rethrow to rethrow a caught exception.
valid_regexps | ✅ | No comment. | Use valid regular expression syntax.
control_flow_in_finally | ✅ | No comment. | Avoid control flow in finally blocks.
empty_statements | ✅ | No comment. | Avoid empty statements.
prefer_final_locals | ✅ | No comment. | Prefer final for variable declarations if they are not reassigned.
throw_in_finally | ✅ | No comment. | Avoid `throw` in finally block.
await_only_futures | ✅ | No comment. | Await only futures.
cancel_subscriptions | ✅ | No comment. | Cancel instances of dart.async.StreamSubscription.
close_sinks | ✅ | No comment. | Close instances of `dart.core.Sink`.
hash_and_equals | ✅ | No comment. | Always override `hashCode` if overriding `==`.
implementation_imports | ✅ | No comment. | Don't import implementation files from another package.
package_api_docs | ✅ | No comment. | Provide doc comments for all public APIs.
package_names | ✅ | No comment. | Use `lowercase_with_underscores` for package names.
package_prefixed_library_names | ✅ | No comment. | Prefix library names with the package name and a dot-separated path.
test_types_in_equals | ✅ | No comment. | Test type arguments in operator ==(Object other).
unnecessary_getters_setters | ✅ | No comment. | Avoid wrapping fields in getters and setters just to be "safe".
void_checks | ✅ | No comment. | Don't assign to void.
type_annotate_public_apis | ✅ | No comment. | Type annotate public APIs.
avoid_slow_async_io | ✅ | No comment. | Avoid slow async `dart:io` methods.
invariant_booleans | ❌ | Too many false positives. | Conditions should not unconditionally evaluate to `true` or to `false`.
iterable_contains_unrelated_type | ✅ | No comment. | Invocation of Iterable<E>.contains with references of unrelated types.
list_remove_unrelated_type | ✅ | No comment. | Invocation of `remove` with references of unrelated types.
literal_only_boolean_expressions | ✅ | No comment. | Boolean expression composed only with literals.
no_adjacent_strings_in_list | ✅ | No comment. | Don't use adjacent strings in list.
directives_ordering | ✅ | No comment. | Adhere to Effective Dart Guide directives sorting conventions.
only_throw_errors | ✅ | No comment. | Only throw instances of classes extending either Exception or Error.
prefer_asserts_in_initializer_lists | ✅ | No comment. | Prefer putting asserts in initializer lists.
prefer_const_constructors | ✅ | No comment. | Prefer const with constant constructors.
prefer_const_constructors_in_immutables | ✅ | No comment. | Prefer declaring const constructors on `@immutable` classes.
prefer_typing_uninitialized_variables | ✅ | No comment. | Prefer typing uninitialized variables and fields.
unnecessary_null_aware_assignments | ✅ | No comment. | Avoid null in null-aware assignment.
unnecessary_overrides | ✅ | No comment. | Don't override a method to do a super method invocation with the same parameters.
use_string_buffers | ✅ | No comment. | Use string buffers to compose strings.
use_full_hex_values_for_flutter_colors | ✅ | No comment. | Prefer an 8-digit hexadecimal integer(0xFFFFFFFF) to instantiate Color.
prefer_inlined_adds | ✅ | No comment. | Inline list item declarations where possible.
unnecessary_parenthesis | ✅ | No comment. | Unnecessary parenthesis can be removed.
prefer_const_declarations | ✅ | No comment. | Prefer const over final for declarations.
prefer_null_aware_operators | ✅ | No comment. | Prefer using null aware operators.
always_put_required_named_parameters_first | ✅ | No comment. | Put required named parameters first.
avoid_catching_errors | ✅ | No comment. | Don't explicitly catch Error or types that implement it.
avoid_double_and_int_checks | ✅ | No comment. | Avoid double and int checks.
avoid_implementing_value_types | ✅ | No comment. | Don't implement classes that override `==`.
avoid_js_rounded_ints | ✅ | No comment. | Avoid JavaScript rounded ints.
avoid_returning_null_for_future | ✅ | No comment. | Avoid returning null for Future.
avoid_returning_null_for_void | ✅ | No comment. | Avoid returning null for void.
avoid_returning_this | ✅ | No comment. | Avoid returning this from methods just to enable a fluent interface.
avoid_single_cascade_in_expression_statements | ✅ | No comment. | Avoid single cascade in expression statements.
avoid_unused_constructor_parameters | ✅ | No comment. | Avoid defining unused parameters in constructors.
avoid_void_async | ✅ | No comment. | Avoid async functions that return void.
join_return_with_assignment | ✅ | No comment. | Join return statement with assignment when possible.
parameter_assignments | ✅ | No comment. | Don't reassign references to parameters of functions or methods.
prefer_final_in_for_each | ✅ | No comment. | Prefer final in for-each loop variable if reference is not reassigned.
prefer_initializing_formals | ✅ | No comment. | Use initializing formals when possible.
provide_deprecation_message | ✅ | No comment. | Provide a deprecation message, via @Deprecated("message").
sort_pub_dependencies | ✅ | No comment. | Sort pub dependencies.
sort_unnamed_constructors_first | ✅ | No comment. | Sort unnamed constructor declarations first.
unnecessary_await_in_return | ✅ | No comment. | Unnecessary await keyword in return.
unsafe_html | ✅ | No comment. | Avoid unsafe HTML APIs.
file_names | ✅ | No comment. | Name source files using `lowercase_with_underscores`.
cast_nullable_to_non_nullable | ✅ | No comment. | Don't cast a nullable value to a non nullable type.
exhaustive_cases | ✅ | No comment. | Define case clauses for all constants in enum-like classes.
prefer_relative_imports | ✅ | No comment. | Prefer relative imports for files in `lib/`.
tighten_type_of_initializing_formals | ✅ | No comment. | Tighten type of initializing formal.
avoid_dynamic_calls | ✅ | No comment. | Avoid method calls or property accesses on a "dynamic" target.
avoid_catches_without_on_clauses | ✅ | No comment. | Avoid catches without on clauses.
avoid_type_to_string | ✅ | No comment. | Avoid <Type>.toString() in production code since results may be minified.
avoid_web_libraries_in_flutter | ✅ | No comment. | Avoid using web-only libraries outside Flutter web plugin packages.
no_default_cases | ✅ | No comment. | No default cases.
no_logic_in_create_state | ✅ | No comment. | Don't put any logic in createState.
overridden_fields | ✅ | No comment. | Don't override fields.
prefer_asserts_with_message | ✅ | No comment. | Prefer asserts with message.
prefer_mixin | ✅ | No comment. | Prefer using mixins.
prefer_null_aware_method_calls | ✅ | No comment. | Prefer null aware method calls.
sized_box_for_whitespace | ❌ | Disabled because this rule decreases productivity by disturbing flow. | SizedBox for whitespace.
unnecessary_nullable_for_final_variable_declarations | ✅ | No comment. | Use a non-nullable type for a final variable initialized with a non-nullable value.
unnecessary_statements | ✅ | No comment. | Avoid using unnecessary statements.
use_build_context_synchronously | ✅ | No comment. | Do not use BuildContexts across async gaps.
use_is_even_rather_than_modulo | ✅ | No comment. | Prefer intValue.isOdd/isEven instead of checking the result of % 2.
comment_references | ✅ | No comment. | Only reference in scope identifiers in doc comments.
noop_primitive_operations | ✅ | No comment. | Noop primitive operations.
prefer_final_parameters | ✅ | This makes it easier to refactor code. | Prefer final for parameter declarations if they are not reassigned.
avoid_multiple_declarations_per_line | ❌ | Has false positives. | Don't declare multiple variables on a single line.
avoid_private_typedef_functions | ❌ | Too pedantic. | Avoid private typedef functions.
avoid_final_parameters | ❌ | No comment. | Avoid final for parameter declarations
avoid_returning_null | ❌ | Obsolete because of NNBD. | Avoid returning null from members whose return type is bool, double, int, or num.
prefer_if_elements_to_conditional_expressions | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Prefer if elements to conditional expressions where possible.
prefer_foreach | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Use `forEach` to only apply a function to all the elements.
always_require_non_null_named_parameters | ❌ | Obsolete because of NNBD. | Specify `@required` on named parameters without defaults.
prefer_void_to_null | ❌ | Obsolete because of NNBD. | Don't use the Null type, unless you are positive that you don't want void.
camel_case_extensions | ❌ | Disabled because an underscore is useful to represent domains in generated code. | Name extensions using UpperCamelCase.
omit_local_variable_types | ❌ | Too pedantic. | Omit type annotations for local variables.
prefer_adjacent_string_concatenation | ❌ | No comment. | Use adjacent strings to concatenate string literals.
prefer_single_quotes | ❌ | Too pedantic. | Only use double quotes for strings containing single quotes.
always_put_control_body_on_new_line | ❌ | Too pedantic. | Separate the control structure expression from its statement.
always_specify_types | ❌ | Too pedantic. | Specify type annotations.
avoid_as | ❌ | Too pedantic. | Avoid using `as`.
unnecessary_this | ❌ | Too many false positives. | Don't access members with `this` unless avoiding shadowing.
prefer_bool_in_asserts | ❌ | No comment. | Prefer using a boolean as the assert condition.
use_to_and_as_if_applicable | ❌ | Too pedantic. | Start the name of the method with to/_to or as/_as if applicable.
sort_child_properties_last | ❌ | Too pedantic. | Sort child properties last in widget instance creations.
prefer_function_declarations_over_variables | ❌ | With variables, the return type can be omitted safely which is useful in FP-style code. | Use a function declaration to bind a function to a name.
always_use_package_imports | ❌ | Prefer relative imports | Avoid relative imports for files in `lib/`.
avoid_annotating_with_dynamic | ❌ | It is better to always be explicit about dynamic. | Avoid annotating with dynamic when not required.
avoid_bool_literals_in_conditional_expressions | ❌ | bool literals in conditional expressions make it easier to reason about them. X ? Y : Z is easier for humans than e.g. X || Z | Avoid bool literals in conditional expressions.
avoid_classes_with_only_static_members | ❌ | Classes with static members don't pollute the global namespace. | Avoid defining a class that contains only static members.
avoid_escaping_inner_quotes | ❌ | Too pedantic. | Avoid escaping inner quotes by converting surrounding quotes.
avoid_function_literals_in_foreach_calls | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Avoid using `forEach` with a function literal.
avoid_equals_and_hash_code_on_mutable_classes | ❌ | @immutable depends on meta. | Avoid overloading operator == and hashCode on classes not marked `@immutable`.
avoid_positional_boolean_parameters | ❌ | Too pedantic. | Avoid positional boolean parameters.
avoid_print | ❌ | Too pedantic. | Avoid `print` calls in production code.
avoid_redundant_argument_values | ❌ | Too pedantic. | Avoid redundant argument values.
avoid_renaming_method_parameters | ❌ | Too pedantic. | Don't rename parameters of overridden methods.
avoid_setters_without_getters | ❌ | Too pedantic. | Avoid setters without getters.
avoid_types_on_closure_parameters | ❌ | Too pedantic. | Avoid annotating types for function expression parameters.
avoid_unnecessary_containers | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Avoid unnecessary containers.
camel_case_types | ❌ | Underscores can be useful in generated code. | Name types using UpperCamelCase.
cascade_invocations | ❌ | Too pedantic. | Cascade consecutive method invocations on the same reference.
constant_identifier_names | ❌ | Too pedantic. | Prefer using lowerCamelCase for constant names.
deprecated_consistency | ❌ | Too pedantic. | Missing deprecated annotation.
diagnostic_describe_all_properties | ❌ | Too pedantic. | DO reference all public properties in debug methods.
flutter_style_todos | ❌ | Too pedantic. | Use Flutter TODO format: // TODO(username): message, https://URL-to-issue.
do_not_use_environment | ❌ | Too pedantic. | Do not use environment declared variables.
leading_newlines_in_multiline_strings | ❌ | Too pedantic. | Start multiline strings with a newline.
library_private_types_in_public_api | ❌ | Too pedantic. | Avoid using private types in public APIs.
lines_longer_than_80_chars | ❌ | Too pedantic. | Avoid lines longer than 80 characters.
missing_whitespace_between_adjacent_strings | ❌ | Too pedantic. | Missing whitespace between adjacent strings.
non_constant_identifier_names | ❌ | Too pedantic. | Name non-constant identifiers using lowerCamelCase.
no_runtimeType_toString | ❌ | Too pedantic. | Avoid calling toString() on runtimeType.
one_member_abstracts | ❌ | Too pedantic. | Avoid defining a one-member abstract class when a simple function will do.
prefer_const_literals_to_create_immutables | ❌ | Too pedantic. | Prefer const literals as parameters of constructors on @immutable classes.
prefer_constructors_over_static_methods | ❌ | Too pedantic. | Prefer defining constructors instead of static methods to create instances.
prefer_double_quotes | ❌ | Too pedantic. | Prefer double quotes where they won't require escape sequences.
prefer_expression_function_bodies | ❌ | Too pedantic. | Use => for short members whose body is a single return statement.
prefer_interpolation_to_compose_strings | ❌ | Too pedantic. | Use interpolation to compose strings and values.
prefer_int_literals | ❌ | Too pedantic. | Prefer int literals over double literals.
prefer_is_not_operator | ❌ | Too pedantic. | Prefer is! operator.
public_member_api_docs | ❌ | Too pedantic. | Document all public members.
sort_constructors_first | ❌ | Too pedantic. | Sort constructor declarations before other members.
super_goes_last | ❌ | Deprecated | Place the `super` call last in a constructor initialization list.
unnecessary_brace_in_string_interps | ❌ | Too pedantic. | Avoid using braces in interpolation when not needed.
unnecessary_final | ❌ | final tells the reader 'This variable won't be mutated.' | Don't use `final` for local variables.
unnecessary_lambdas | ❌ | In rare cases it is possible for this to introduce bugs. | Don't create a lambda when a tear-off will do.
unnecessary_null_checks | ❌ | Too pedantic. | Unnecessary null checks.
unnecessary_raw_strings | ❌ | Too pedantic. | Unnecessary raw string.
unnecessary_string_escapes | ❌ | Too pedantic. | Remove unnecessary backslashes in strings.
unnecessary_string_interpolations | ❌ | Too pedantic. | Unnecessary string interpolation.
use_if_null_to_convert_nulls_to_bools | ❌ | Too pedantic. | Use if-null operators to convert nulls to bools.
use_key_in_widget_constructors | ❌ | Too pedantic. | Use key in widget constructors.
use_late_for_private_fields_and_variables | ❌ | Too pedantic. | Use late for private members with a non-nullable type.
use_named_constants | ❌ | There could be multiple constants with the same value but different identifiers. | Use predefined named constants.
use_raw_strings | ❌ | Too pedantic. | Use raw string to avoid escapes.
use_setters_to_change_properties | ❌ | Too pedantic. | Use a setter for operations that conceptually change a property.
null_check_on_nullable_type_parameter | ❌ | Too many false positives. | Don't use null check on a potentially nullable type parameter.
require_trailing_commas | ❌ | Too pedantic. | Use trailing commas for all function calls and declarations.
avoid_field_initializers_in_const_classes | ❌ | Too pedantic. | Avoid field initializers in const classes.
conditional_uri_does_not_exist | ✅ | No comment. | Missing conditional import.
depend_on_referenced_packages | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Depend on referenced packages.
eol_at_end_of_file | ❌ | Too pedantic. | Put a single newline at end of file.
no_leading_underscores_for_library_prefixes | ❌ | Too pedantic. | Avoid leading underscores for library prefixes.
no_leading_underscores_for_local_identifiers | ❌ | Too pedantic. | Avoid leading underscores for local identifiers.
secure_pubspec_urls | ✅ | No comment. | Use secure urls in `pubspec.yaml`.
sized_box_shrink_expand | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Use SizedBox shrink and expand named constructors.
unnecessary_constructor_name | ✅ | No comment. | Unnecessary `.new` constructor name.
unnecessary_late | ✅ | No comment. | Don't specify the `late` modifier when it is not needed.
use_decorated_box | ❌ | Disabled because this rule decreases productivity by disturbing flow. | Use `DecoratedBox`.
use_test_throws_matchers | ❌ | Too pedantic. | Use throwsA matcher instead of fail().
use_colored_box | ✅ | No comment. | Use `ColoredBox`.
use_enums | ✅ | No comment. | Use enums rather than classes that behave like enums.
use_super_parameters | ❌ | Super parameters make inheritance more convenient, but inheritance should be avoided and composition should be preferred. Even if you need inheritance, you should declare an interface and mixins, and not use super constructors. | Use super-initializer parameters where possible.


And here's the whole analysis options file:
```yaml
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
  rules:
    - unnecessary_overrides # No comment.
    - annotate_overrides # No comment.
    - avoid_null_checks_in_equality_operators # No comment.
    - prefer_collection_literals # No comment.
    - prefer_conditional_assignment # No comment.
    - prefer_final_fields # No comment.
    - prefer_for_elements_to_map_fromIterable # No comment.
    - prefer_generic_function_type_aliases # No comment.
    - prefer_if_null_operators # No comment.
    - prefer_spread_collections # No comment.
    - use_function_type_syntax_for_parameters # No comment.
    - avoid_empty_else # No comment.
    - avoid_init_to_null # No comment.
    - avoid_relative_lib_imports # No comment.
    - avoid_return_types_on_setters # No comment.
    - avoid_shadowing_type_parameters # No comment.
    - avoid_types_as_parameter_names # No comment.
    - curly_braces_in_flow_control_structures # No comment.
    - empty_catches # No comment.
    - empty_constructor_bodies # No comment.
    - library_names # No comment.
    - library_prefixes # No comment.
    - no_duplicate_case_values # No comment.
    - null_closures # No comment.
    - prefer_contains # No comment.
    - prefer_equal_for_default_values # No comment.
    - prefer_is_empty # No comment.
    - prefer_is_not_empty # No comment.
    - prefer_iterable_whereType # No comment.
    - recursive_getters # No comment.
    - slash_for_doc_comments # No comment.
    - type_init_formals # No comment.
    - unawaited_futures # No comment.
    - unnecessary_const # No comment.
    - unnecessary_new # No comment.
    - unnecessary_null_in_if_null_operators # No comment.
    - unrelated_type_equality_checks # No comment.
    - use_rethrow_when_possible # No comment.
    - valid_regexps # No comment.
    - control_flow_in_finally # No comment.
    - empty_statements # No comment.
    - prefer_final_locals # No comment.
    - throw_in_finally # No comment.
    - await_only_futures # No comment.
    - cancel_subscriptions # No comment.
    - close_sinks # No comment.
    - hash_and_equals # No comment.
    - implementation_imports # No comment.
    - package_api_docs # No comment.
    - package_names # No comment.
    - package_prefixed_library_names # No comment.
    - test_types_in_equals # No comment.
    - unnecessary_getters_setters # No comment.
    - void_checks # No comment.
    - type_annotate_public_apis # No comment.
    - avoid_slow_async_io # No comment.
    - iterable_contains_unrelated_type # No comment.
    - list_remove_unrelated_type # No comment.
    - literal_only_boolean_expressions # No comment.
    - no_adjacent_strings_in_list # No comment.
    - directives_ordering # No comment.
    - only_throw_errors # No comment.
    - prefer_asserts_in_initializer_lists # No comment.
    - prefer_const_constructors # No comment.
    - prefer_const_constructors_in_immutables # No comment.
    - prefer_typing_uninitialized_variables # No comment.
    - unnecessary_null_aware_assignments # No comment.
    - always_declare_return_types # No comment.
    - use_string_buffers # No comment.
    - use_full_hex_values_for_flutter_colors # No comment.
    - prefer_inlined_adds # No comment.
    - unnecessary_parenthesis # No comment.
    - prefer_const_declarations # No comment.
    - prefer_null_aware_operators # No comment.
    - always_put_required_named_parameters_first # No comment.
    - avoid_catching_errors # No comment.
    - avoid_double_and_int_checks # No comment.
    - avoid_implementing_value_types # No comment.
    - avoid_js_rounded_ints # No comment.
    - avoid_returning_null_for_future # No comment.
    - avoid_returning_null_for_void # No comment.
    - avoid_returning_this # No comment.
    - avoid_single_cascade_in_expression_statements # No comment.
    - avoid_unused_constructor_parameters # No comment.
    - avoid_void_async # No comment.
    - join_return_with_assignment # No comment.
    - parameter_assignments # No comment.
    - prefer_final_in_for_each # No comment.
    - prefer_initializing_formals # No comment.
    - provide_deprecation_message # No comment.
    - sort_pub_dependencies # No comment.
    - sort_unnamed_constructors_first # No comment.
    - unnecessary_await_in_return # No comment.
    - unsafe_html # No comment.
    - file_names # No comment.
    - cast_nullable_to_non_nullable # No comment.
    - exhaustive_cases # No comment.
    - prefer_relative_imports # No comment.
    - tighten_type_of_initializing_formals # No comment.
    - avoid_dynamic_calls # No comment.
    - avoid_catches_without_on_clauses # No comment.
    - avoid_type_to_string # No comment.
    - avoid_web_libraries_in_flutter # No comment.
    - no_default_cases # No comment.
    - no_logic_in_create_state # No comment.
    - overridden_fields # No comment.
    - prefer_asserts_with_message # No comment.
    - prefer_mixin # No comment.
    - prefer_null_aware_method_calls # No comment.
    - unnecessary_nullable_for_final_variable_declarations # No comment.
    - unnecessary_statements # No comment.
    - use_build_context_synchronously # No comment.
    - use_is_even_rather_than_modulo # No comment.
    - comment_references # No comment.
    - noop_primitive_operations # No comment.
    - prefer_final_parameters # This makes it easier to refactor code.
    - use_colored_box # No comment.
    - use_enums # No comment.
    - unnecessary_late # No comment.
    - unnecessary_constructor_name # No comment.
    - secure_pubspec_urls # No comment.
    - conditional_uri_does_not_exist # No comment.
    # - prefer_if_elements_to_conditional_expressions # Disabled because this rule decreases productivity by disturbing flow.
    # - prefer_foreach # Disabled because this rule decreases productivity by disturbing flow.
    # - always_require_non_null_named_parameters # Obsolete because of NNBD.
    # - prefer_void_to_null # Obsolete because of NNBD.
    # - camel_case_extensions # Disabled because an underscore is useful to represent domains in generated code.
    # - omit_local_variable_types # Too pedantic.
    # - prefer_adjacent_string_concatenation # No comment.
    # - prefer_single_quotes # Too pedantic.
    # - always_put_control_body_on_new_line # Too pedantic.
    # - always_specify_types # Too pedantic.
    # - avoid_as # Too pedantic.
    # - unnecessary_this # Too many false positives.
    # - prefer_bool_in_asserts # No comment.
    # - use_to_and_as_if_applicable # Too pedantic.
    # - use_super_parameters # Super parameters make inheritance more convenient, but inheritance should be avoided and composition should be preferred. Even if you need inheritance, you should declare an interface and mixins, and not use super constructors.
    # - prefer_function_declarations_over_variables # With variables, the return type can be omitted safely which is useful in FP-style code.
    # - always_use_package_imports # Prefer relative imports
    # - avoid_annotating_with_dynamic # It is better to always be explicit about dynamic.
    # - avoid_bool_literals_in_conditional_expressions # bool literals in conditional expressions make it easier to reason about them. X ? Y : Z is easier for humans than e.g. X || Z
    # - avoid_classes_with_only_static_members # Classes with static members don't pollute the global namespace.
    # - avoid_escaping_inner_quotes # Too pedantic.
    # - avoid_function_literals_in_foreach_calls # Disabled because this rule decreases productivity by disturbing flow.
    # - avoid_equals_and_hash_code_on_mutable_classes # @immutable depends on meta.
    # - avoid_positional_boolean_parameters # Too pedantic.
    # - avoid_print # Too pedantic.
    # - avoid_redundant_argument_values # Too pedantic.
    # - avoid_renaming_method_parameters # Too pedantic.
    # - avoid_setters_without_getters # Too pedantic.
    # - avoid_types_on_closure_parameters # Too pedantic.
    # - avoid_unnecessary_containers # Disabled because this rule decreases productivity by disturbing flow.
    # - camel_case_types # Underscores can be useful in generated code.
    # - cascade_invocations # Too pedantic.
    # - constant_identifier_names # Too pedantic.
    # - deprecated_consistency # Too pedantic.
    # - diagnostic_describe_all_properties # Too pedantic.
    # - flutter_style_todos # Too pedantic.
    # - do_not_use_environment # Too pedantic.
    # - leading_newlines_in_multiline_strings # Too pedantic.
    # - library_private_types_in_public_api # Too pedantic.
    # - lines_longer_than_80_chars # Too pedantic.
    # - missing_whitespace_between_adjacent_strings # Too pedantic.
    # - non_constant_identifier_names # Too pedantic.
    # - no_runtimeType_toString # Too pedantic.
    # - one_member_abstracts # Too pedantic.
    # - prefer_const_literals_to_create_immutables # Too pedantic.
    # - prefer_constructors_over_static_methods # Too pedantic.
    # - prefer_double_quotes # Too pedantic.
    # - prefer_expression_function_bodies # Too pedantic.
    # - prefer_interpolation_to_compose_strings # Too pedantic.
    # - prefer_int_literals # Too pedantic.
    # - prefer_is_not_operator # Too pedantic.
    # - public_member_api_docs # Too pedantic.
    # - sort_constructors_first # Too pedantic.
    # - super_goes_last # Deprecated
    # - unnecessary_brace_in_string_interps # Too pedantic.
    # - unnecessary_final # final tells the reader 'This variable won't be mutated.'
    # - unnecessary_lambdas # In rare cases it is possible for this to introduce bugs.
    # - unnecessary_null_checks # Too pedantic.
    # - unnecessary_raw_strings # Too pedantic.
    # - unnecessary_string_escapes # Too pedantic.
    # - unnecessary_string_interpolations # Too pedantic.
    # - use_if_null_to_convert_nulls_to_bools # Too pedantic.
    # - use_key_in_widget_constructors # Too pedantic.
    # - use_late_for_private_fields_and_variables # Too pedantic.
    # - use_named_constants # There could be multiple constants with the same value but different identifiers.
    # - use_raw_strings # Too pedantic.
    # - use_setters_to_change_properties # Too pedantic.
    # - null_check_on_nullable_type_parameter # Too many false positives.
    # - require_trailing_commas # Too pedantic.
    # - avoid_field_initializers_in_const_classes # Too pedantic.
    # - avoid_returning_null # Obsolete because of NNBD.
    # - depend_on_referenced_packages # Disabled because this rule decreases productivity by disturbing flow.
    # - eol_at_end_of_file # Too pedantic.
    # - no_leading_underscores_for_library_prefixes # Too pedantic.
    # - no_leading_underscores_for_local_identifiers # Too pedantic.
    # - avoid_final_parameters # No comment.
    # - sized_box_shrink_expand # Disabled because this rule decreases productivity by disturbing flow.
    # - avoid_private_typedef_functions # Too pedantic.
    # - avoid_multiple_declarations_per_line # Has false positives.
    # - use_decorated_box # Disabled because this rule decreases productivity by disturbing flow.
    # - use_test_throws_matchers # Too pedantic.
    # - sized_box_for_whitespace # Disabled because this rule decreases productivity by disturbing flow.
    # - invariant_booleans # Too many false positives.
    # - sort_child_properties_last # Too pedantic.
```
