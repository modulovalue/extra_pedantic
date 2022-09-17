import 'generate.dart';
import 'linter_all.dart';
import 'rules.dart';

/// Prints out information about what rules don't exist
/// anymore and what rules are new.
String build_status() {
  final linter_rules = all_linter_rules().toSet();
  final judged_rules = all_judged_rules()
      .map(
        (final a) => convert_ep_rule_to_analysis_options_lint_rule_id(
          rule: a.lint_rule,
        ),
      )
      .toSet();
  final judged_not_linter = judged_rules.difference(linter_rules);
  final linter_not_judged = linter_rules.difference(judged_rules);
  final deprecated_and_removed = judged_not_linter;
  final new_rules = linter_not_judged;
  final enabled = all_judged_rules().where((final a) => a.judgement.enabled).toList();
  final disabled = all_judged_rules().where((final a) => !a.judgement.enabled).toList();
  return <String>[
    " • Officially deprecated i.e no-longer-supported, but still judged or unknown rules: " +
        deprecated_and_removed.length.toString(),
    deprecated_and_removed.join("\n"),
    " • New rules: " + new_rules.length.toString(),
    new_rules.join("\n"),
    " • Enabled rules: " + enabled.length.toString(),
    "",
    " • Disabled rules: " + disabled.length.toString(),
  ].join("\n");
}
