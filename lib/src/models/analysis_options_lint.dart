import 'lint.dart';

abstract class AnalysisOptionsLint {
  bool get enabled;

  CommentedLint get lint;
}

abstract class CommentedLint {
  String get comment;

  LintModel get lint;
}

class CommentedLintImpl implements CommentedLint {
  final String lintString;
  @override
  final String comment;

  @override
  LintModel get lint => LintModelImpl(lintString);

  const CommentedLintImpl(this.lintString, this.comment);
}

class AnalysisOptionLintImpl implements AnalysisOptionsLint {
  @override
  final bool enabled;
  @override
  final CommentedLint lint;

  const AnalysisOptionLintImpl(this.enabled, this.lint);
}
