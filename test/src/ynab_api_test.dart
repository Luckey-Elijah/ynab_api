import 'package:test/test.dart';
import 'package:ynab_api/ynab_api.dart';

void main() {
  group('YnabApi', () {
    test('can be instantiated', () {
      // ignore: prefer_const_constructors
      expect(YnabApi(), isNotNull);
    });
  });
}
