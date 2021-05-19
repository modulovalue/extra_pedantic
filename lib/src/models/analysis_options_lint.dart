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
  @override
  final String comment;
  @override
  final LintModel lint;

  CommentedLintImpl(String lint, this.comment) : lint = LintModelImpl(lint);
}

class AnalysisOptionLintImpl implements AnalysisOptionsLint {
  @override
  final bool enabled;
  @override
  final CommentedLint lint;

  const AnalysisOptionLintImpl(this.enabled, this.lint);
}
