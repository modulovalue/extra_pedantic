import 'analysis_options_lint.dart';

abstract class AnalysisOptions {
  Iterable<AnalysisOptionsLint> get lints;

  String toAnalysisOptionsString();
}

class AnalysisOptionsImpl implements AnalysisOptions {
  @override
  final Iterable<AnalysisOptionsLint> lints;

  const AnalysisOptionsImpl(this.lints);

  @override
  String toAnalysisOptionsString() => [
        """
# ========================================
# ======= This file was generated. =======
# ========================================
analyzer:
  strong-mode:
    implicit-casts: false
    implicit-dynamic: false
  language:
    strict-inference: true
    strict-raw-types: true
  enable-experiment:
    - nonfunction-type-aliases
    - variance
    
# All rules: https://github.com/dart-lang/linter/blob/master/example/all.yaml
linter:
  rules:""",
        for (final lint in lints) //
          "    " + (lint.enabled ? "" : "# ") + "- " + lint.lint.lint.lint + " # " + lint.lint.comment,
      ].join("\n");
}
