import 'model/generate.dart';

/// This is used to generate analysis options
/// files that were updated.
void main() {
  final analysis_options_file = generate_analysis_options();
  print(
    analysis_options_file,
  );
  print(
    "\n" * 10,
  );
  print(
    generate_readme(
      analysis_options: analysis_options_file,
      current_version: "4.0.0",
    ),
  );
}
