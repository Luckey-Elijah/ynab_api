import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:ynab_api/ynab.models.swagger.dart';

void main() async {
  stdout.write('Personal Access Token: ');
  final token = stdin.readLineSync()!;
  final response = await get(
    Uri.parse('https://api.ynab.com/v1/budgets'),
    headers: {'Authorization': 'Bearer $token'},
  );

  final json = jsonDecode(response.body) as Map<String, dynamic>;

  final budgets = BudgetSummaryResponse.fromJson(json).data.budgets;

  for (final BudgetSummary(:name) in budgets) {
    // print the names of all your budgets
    stdout.writeln(name);
  }
}
