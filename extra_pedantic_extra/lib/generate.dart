import 'model/generate.dart';

/// This is used to generate analysis options
/// files that were updated.
// TODO generate a readme alongside the analysis options file.
// TODO   * static header
// TODO   * static description
// TODO   * dynamic installation instructions with up-to-date version
// TODO   * dynamic table with all enabled and disabled rules.
// TODO then remove all overview images from the repo.
void main() {
  print(generate_analysis_options());
}
