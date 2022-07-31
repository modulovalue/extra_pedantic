// ignore_for_file: implementation_imports

import 'package:linter/src/analyzer.dart';
import 'package:linter/src/rules.dart';

import 'generate.dart';
import 'rules.dart';

List<JudgedAndIdentified> judged_and_identified_rules() {
  return () sync* {
    final _all_sorted = all_judged_rules()
      ..sort(
        (final a, final b) => convert_ep_rule_to_analysis_options_lint_rule_id(
          rule: a.lint_rule,
        ).compareTo(
          convert_ep_rule_to_analysis_options_lint_rule_id(
            rule: b.lint_rule,
          ),
        ),
      );
    for (final rule in _all_sorted) {
      final id = convert_ep_rule_to_analysis_options_lint_rule_id(
        rule: rule.lint_rule,
      );
      final detected_lint_rule = _official_rule_index[id];
      if (detected_lint_rule == null) {
        throw Exception("Unknown rule " + id);
      } else {
        yield JudgedAndIdentified(
          rule,
          detected_lint_rule,
        );
      }
    }
  }()
      .toList();
}

/// Extracts all lint rules from the dart linter rules.dart file.
Iterable<String> all_linter_rules() => all_linter_rules_map().keys;

Map<String, LintRule> all_linter_rules_map() => _official_rule_index;

final _official_rule_index = () {
  registerLintRules();
  final map = <String, LintRule>{};
  for (final rule in Analyzer.facade.registeredRules) {
    map[rule.name] = rule;
  }
  return map;
}();

class JudgedAndIdentified {
  final JudgedRule judged_rule;
  final LintRule identified_rule;

  const JudgedAndIdentified(
    final this.judged_rule,
    final this.identified_rule,
  );
}
