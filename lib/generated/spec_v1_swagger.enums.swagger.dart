import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum AccountType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('checking')
  checking('checking'),
  @JsonValue('savings')
  savings('savings'),
  @JsonValue('cash')
  cash('cash'),
  @JsonValue('creditCard')
  creditcard('creditCard'),
  @JsonValue('lineOfCredit')
  lineofcredit('lineOfCredit'),
  @JsonValue('otherAsset')
  otherasset('otherAsset'),
  @JsonValue('otherLiability')
  otherliability('otherLiability'),
  @JsonValue('mortgage')
  mortgage('mortgage'),
  @JsonValue('autoLoan')
  autoloan('autoLoan'),
  @JsonValue('studentLoan')
  studentloan('studentLoan'),
  @JsonValue('personalLoan')
  personalloan('personalLoan'),
  @JsonValue('medicalDebt')
  medicaldebt('medicalDebt'),
  @JsonValue('otherDebt')
  otherdebt('otherDebt');

  final String? value;

  const AccountType(this.value);
}

enum CategoryGoalType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TB')
  tb('TB'),
  @JsonValue('TBD')
  tbd('TBD'),
  @JsonValue('MF')
  mf('MF'),
  @JsonValue('NEED')
  need('NEED'),
  @JsonValue('DEBT')
  debt('DEBT'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const CategoryGoalType(this.value);
}

enum SaveTransactionCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const SaveTransactionCleared(this.value);
}

enum SaveTransactionFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const SaveTransactionFlagColor(this.value);
}

enum SaveTransactionWithIdCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const SaveTransactionWithIdCleared(this.value);
}

enum SaveTransactionWithIdFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const SaveTransactionWithIdFlagColor(this.value);
}

enum SaveTransactionWithOptionalFieldsCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const SaveTransactionWithOptionalFieldsCleared(this.value);
}

enum SaveTransactionWithOptionalFieldsFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const SaveTransactionWithOptionalFieldsFlagColor(this.value);
}

enum TransactionSummaryCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const TransactionSummaryCleared(this.value);
}

enum TransactionSummaryFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const TransactionSummaryFlagColor(this.value);
}

enum TransactionDetailCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const TransactionDetailCleared(this.value);
}

enum TransactionDetailFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const TransactionDetailFlagColor(this.value);
}

enum HybridTransactionType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('transaction')
  transaction('transaction'),
  @JsonValue('subtransaction')
  subtransaction('subtransaction');

  final String? value;

  const HybridTransactionType(this.value);
}

enum HybridTransactionCleared {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('cleared')
  cleared('cleared'),
  @JsonValue('uncleared')
  uncleared('uncleared'),
  @JsonValue('reconciled')
  reconciled('reconciled');

  final String? value;

  const HybridTransactionCleared(this.value);
}

enum HybridTransactionFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const HybridTransactionFlagColor(this.value);
}

enum ScheduledTransactionSummaryFrequency {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('never')
  never('never'),
  @JsonValue('daily')
  daily('daily'),
  @JsonValue('weekly')
  weekly('weekly'),
  @JsonValue('everyOtherWeek')
  everyotherweek('everyOtherWeek'),
  @JsonValue('twiceAMonth')
  twiceamonth('twiceAMonth'),
  @JsonValue('every4Weeks')
  every4weeks('every4Weeks'),
  @JsonValue('monthly')
  monthly('monthly'),
  @JsonValue('everyOtherMonth')
  everyothermonth('everyOtherMonth'),
  @JsonValue('every3Months')
  every3months('every3Months'),
  @JsonValue('every4Months')
  every4months('every4Months'),
  @JsonValue('twiceAYear')
  twiceayear('twiceAYear'),
  @JsonValue('yearly')
  yearly('yearly'),
  @JsonValue('everyOtherYear')
  everyotheryear('everyOtherYear');

  final String? value;

  const ScheduledTransactionSummaryFrequency(this.value);
}

enum ScheduledTransactionSummaryFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const ScheduledTransactionSummaryFlagColor(this.value);
}

enum ScheduledTransactionDetailFrequency {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('never')
  never('never'),
  @JsonValue('daily')
  daily('daily'),
  @JsonValue('weekly')
  weekly('weekly'),
  @JsonValue('everyOtherWeek')
  everyotherweek('everyOtherWeek'),
  @JsonValue('twiceAMonth')
  twiceamonth('twiceAMonth'),
  @JsonValue('every4Weeks')
  every4weeks('every4Weeks'),
  @JsonValue('monthly')
  monthly('monthly'),
  @JsonValue('everyOtherMonth')
  everyothermonth('everyOtherMonth'),
  @JsonValue('every3Months')
  every3months('every3Months'),
  @JsonValue('every4Months')
  every4months('every4Months'),
  @JsonValue('twiceAYear')
  twiceayear('twiceAYear'),
  @JsonValue('yearly')
  yearly('yearly'),
  @JsonValue('everyOtherYear')
  everyotheryear('everyOtherYear');

  final String? value;

  const ScheduledTransactionDetailFrequency(this.value);
}

enum ScheduledTransactionDetailFlagColor {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('red')
  red('red'),
  @JsonValue('orange')
  orange('orange'),
  @JsonValue('yellow')
  yellow('yellow'),
  @JsonValue('green')
  green('green'),
  @JsonValue('blue')
  blue('blue'),
  @JsonValue('purple')
  purple('purple'),
  @JsonValue('null')
  $null('null');

  final String? value;

  const ScheduledTransactionDetailFlagColor(this.value);
}
