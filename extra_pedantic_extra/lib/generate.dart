import 'dart:io';

import 'model/generate.dart';

/// The version of extra_pedantic that is being generated.
const current_version = "6.0.1";

/// The version whose analysis options file is generated. Only bump
/// this when the rules change, patch releases reuse the file.
const options_version = "6.0.0";

/// Generates the analysis options file of the options version,
/// points the default analysis options file at it, writes both
/// READMEs and the example, and sets the version in the pubspec
/// of extra_pedantic.
void main() {
  final repo = Directory.fromUri(Platform.script.resolve("../../"));
  final package = Directory.fromUri(repo.uri.resolve("extra_pedantic/"));
  final analysis_options_file = generate_analysis_options(
    only_essential: false,
  );
  final readme = generate_readme(
    analysis_options: analysis_options_file,
    current_version: current_version,
  );
  final versioned_name = "analysis_options." + options_version + ".yaml";
  _write(
    package.uri.resolve("lib/" + versioned_name),
    analysis_options_file + "\n",
  );
  _write(
    package.uri.resolve("lib/analysis_options.yaml"),
    "include: " + versioned_name + "\n",
  );
  _write(
    package.uri.resolve("README.md"),
    readme + "\n",
  );
  _write(
    repo.uri.resolve("README.md"),
    readme + "\n",
  );
  _write(
    package.uri.resolve("example/README.md"),
    generate_example(
      current_version: current_version,
    ),
  );
  final pubspec = package.uri.resolve("pubspec.yaml");
  final pubspec_contents = File.fromUri(pubspec).readAsStringSync();
  final version_line = RegExp(r"^version: .*$", multiLine: true);
  if (!version_line.hasMatch(pubspec_contents)) {
    throw Exception("No version line in " + pubspec.toFilePath());
  } else {
    _write(
      pubspec,
      pubspec_contents.replaceFirst(version_line, "version: " + current_version),
    );
  }
}

void _write(
  final Uri uri,
  final String contents,
) {
  File.fromUri(uri)
    ..parent.createSync(recursive: true)
    ..writeAsStringSync(contents);
  print("Wrote " + uri.toFilePath());
}
