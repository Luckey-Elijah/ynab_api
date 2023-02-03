# YNAB Api

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason][mason_badge]][mason_link]
[![License:BSD 3][license_badge]][license_link]

A Very Good Project created by Very Good CLI.

## Installation 💻

**❗ In order to start using YNAB Api you must have the [Dart SDK][dart_install_link] installed on your machine and a [YNAB Account][ynab_app_link] created**

1. Go to your YNAB ["Developer Settings" page][ynab_dev_settings].
2. Under the "Personal Access Tokens" section, click "New Token", enter your password and click "Generate" to get an access token.
3. Run `curl -H "Authorization: Bearer <ACCESS_TOKEN>" https://api.youneedabudget.com/v1/budgets` to verify that you access token is valid.
---

## Continuous Integration 🤖

Ynab Api comes with a built-in [GitHub Actions workflow][github_actions_link] powered by [Very Good Workflows][very_good_workflows_link] but you can also add your preferred CI/CD solution.

Out of the box, on each pull request and push, the CI `formats`, `lints`, and `tests` the code. This ensures the code remains consistent and behaves correctly as you add functionality or make changes. The project uses [Very Good Analysis][very_good_analysis_link] for a strict set of analysis options used by our team. Code coverage is enforced using the [Very Good Workflows][very_good_coverage_link].

---

## Running Tests 🧪

To run all unit tests:

```sh
dart pub global activate coverage 1.2.0
dart test --coverage=coverage
dart pub global run coverage:format_coverage --lcov --in=coverage --out=coverage/lcov.info
```

To view the generated coverage report you can use [lcov](https://github.com/linux-test-project/lcov).

```sh
# Generate Coverage Report
genhtml coverage/lcov.info -o coverage/

# Open Coverage Report
open coverage/index.html
```

[dart_install_link]: https://dart.dev/get-dart
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-BSD-3
[license_link]: https://choosealicense.com/licenses/bsd-3-clause/
[mason_link]: https://github.com/felangel/mason
[mason_badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
[ynab_app_link]: https://app.youneedabudget.com/
[ynab_dev_settings]: https://app.youneedabudget.com/settings/developer
