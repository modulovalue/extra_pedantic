abstract class LintModel {
  String get lint;
}

class LintModelImpl implements LintModel {
  @override
  final String lint;

  const LintModelImpl(this.lint);
}
