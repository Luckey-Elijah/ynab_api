# YNAB Api

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason][mason_badge]][mason_link]
[![License:BSD 3][license_badge]][license_link]

Dart tooling for interacting with [YNAB's API][ynab_api].

## Setup 💻

1. Go to your YNAB ["Developer Settings" page][ynab_dev_settings].
2. Under the "Personal Access Tokens" section, click "New Token", enter your password and click "Generate" to get an access token.
3. Run `curl -H "Authorization: Bearer <ACCESS_TOKEN>" https://api.ynab.com/v1/budgets` to verify that you access token is valid.

---

[license_badge]: https://img.shields.io/badge/license-BSD-3
[license_link]: https://choosealicense.com/licenses/bsd-3-clause/
[mason_link]: https://github.com/felangel/mason
[mason_badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[ynab_dev_settings]: https://app.ynab.com/settings/developer
[ynab_api]: https://api.ynab.com/
