// ignore_for_file: implementation_imports

import 'package:analyzer/src/analysis_rule/analysis_rule.dart';

import 'generate.dart';
import 'linter_all.dart';
import 'rules.dart';

/// Prints out information about judged rules that are no longer
/// supported and about new rules that have not been judged yet.
String build_status() {
  final official = all_linter_rules_map();
  final judged = all_judged_rules();
  // Rule names are matched case-insensitively by the analyzer.
  final judged_ids = {
    for (final a in judged) _id(a).toLowerCase(),
  };
  final unknown = <String>[];
  final unsupported = <String>[];
  final not_stable = <String>[];
  final renamed = <String>[];
  for (final a in judged) {
    final id = _id(a);
    final rule = official[id.toLowerCase()];
    if (rule == null) {
      unknown.add(id);
    } else {
      final state = rule.state;
      if (state.isRemoved || state.isDeprecated || state.isInternal) {
        unsupported.add(_describe(a, rule));
      } else if (state.label != "stable") {
        not_stable.add(_describe(a, rule));
      }
      if (rule.name != id) {
        renamed.add(id + " is now " + rule.name);
      }
    }
  }
  final new_rules = <String>[
    for (final rule in official.values)
      if (!judged_ids.contains(rule.name.toLowerCase()) &&
          !rule.state.isRemoved &&
          !rule.state.isDeprecated &&
          !rule.state.isInternal)
        rule.name + " (" + rule.state.label + "): " + rule.description.replaceAll(RegExp(r'\s+'), ' '),
  ]..sort();
  final enabled = judged.where((final a) => _is_enabled(a)).length;
  return <String>[
    " • Judged rules that the linter does not know: " + unknown.length.toString(),
    ...unknown,
    " • Judged rules that are removed, deprecated or internal (remove them): " + unsupported.length.toString(),
    ...unsupported,
    " • Judged rules whose official name has a different case (rename them): " + renamed.length.toString(),
    ...renamed,
    " • Judged rules that are experimental or in testing: " + not_stable.length.toString(),
    ...not_stable,
    " • New rules: " + new_rules.length.toString(),
    ...new_rules,
    " • Enabled rules: " + enabled.toString(),
    " • Disabled rules: " + (judged.length - enabled).toString(),
  ].join("\n");
}

String _id(
  final JudgedRule a,
) =>
    convert_ep_rule_to_analysis_options_lint_rule_id(
      rule: a.lint_rule,
    );

bool _is_enabled(
  final JudgedRule a,
) =>
    a.judgement.enabled.match(
      disabled: (final a) => false,
      enabled: (final a) => true,
    );

String _describe(
  final JudgedRule a,
  final AbstractAnalysisRule rule,
) =>
    (_is_enabled(a) ? "ON  " : "off ") + _id(a) + " (" + rule.state.label + ")";
