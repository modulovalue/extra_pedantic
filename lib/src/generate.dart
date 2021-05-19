import 'impl.dart';
import 'models/analysis_options.dart';

void main () {
  final rules = AnalysisOptionsRules();
  final uniqueLints = rules.all.map((a) => a.lint.lint.lint).toSet();
  final allLints = rules.all.map((a) => a.lint.lint.lint).toList();
  assert(uniqueLints.length == allLints.length, "${uniqueLints.length} == ${allLints.length}");
  final gen = AnalysisOptionsImpl(rules.all);
  print("${gen.toAnalysisOptionsString()}");
}
