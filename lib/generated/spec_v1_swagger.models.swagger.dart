// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';
import 'dart:convert';

import 'spec_v1_swagger.enums.swagger.dart' as enums;

part 'spec_v1_swagger.models.swagger.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorResponse {
  ErrorResponse({
    required this.error,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  @JsonKey(name: 'error')
  final ErrorDetail error;
  static const fromJsonFactory = _$ErrorResponseFromJson;
  static const toJsonFactory = _$ErrorResponseToJson;
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorResponse &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(error) ^ runtimeType.hashCode;
}

extension $ErrorResponseExtension on ErrorResponse {
  ErrorResponse copyWith({ErrorDetail? error}) {
    return ErrorResponse(error: error ?? this.error);
  }

  ErrorResponse copyWithWrapped({Wrapped<ErrorDetail>? error}) {
    return ErrorResponse(error: (error != null ? error.value : this.error));
  }
}

@JsonSerializable(explicitToJson: true)
class ErrorDetail {
  ErrorDetail({
    required this.id,
    required this.name,
    required this.detail,
  });

  factory ErrorDetail.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'detail')
  final String detail;
  static const fromJsonFactory = _$ErrorDetailFromJson;
  static const toJsonFactory = _$ErrorDetailToJson;
  Map<String, dynamic> toJson() => _$ErrorDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorDetail &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.detail, detail) ||
                const DeepCollectionEquality().equals(other.detail, detail)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(detail) ^
      runtimeType.hashCode;
}

extension $ErrorDetailExtension on ErrorDetail {
  ErrorDetail copyWith({String? id, String? name, String? detail}) {
    return ErrorDetail(
        id: id ?? this.id,
        name: name ?? this.name,
        detail: detail ?? this.detail);
  }

  ErrorDetail copyWithWrapped(
      {Wrapped<String>? id, Wrapped<String>? name, Wrapped<String>? detail}) {
    return ErrorDetail(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        detail: (detail != null ? detail.value : this.detail));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponse {
  UserResponse({
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  @JsonKey(name: 'data')
  final UserResponse$Data data;
  static const fromJsonFactory = _$UserResponseFromJson;
  static const toJsonFactory = _$UserResponseToJson;
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $UserResponseExtension on UserResponse {
  UserResponse copyWith({UserResponse$Data? data}) {
    return UserResponse(data: data ?? this.data);
  }

  UserResponse copyWithWrapped({Wrapped<UserResponse$Data>? data}) {
    return UserResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class User {
  User({
    required this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  static const fromJsonFactory = _$UserFromJson;
  static const toJsonFactory = _$UserToJson;
  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^ runtimeType.hashCode;
}

extension $UserExtension on User {
  User copyWith({String? id}) {
    return User(id: id ?? this.id);
  }

  User copyWithWrapped({Wrapped<String>? id}) {
    return User(id: (id != null ? id.value : this.id));
  }
}

@JsonSerializable(explicitToJson: true)
class DateFormat {
  DateFormat({
    required this.format,
  });

  factory DateFormat.fromJson(Map<String, dynamic> json) =>
      _$DateFormatFromJson(json);

  @JsonKey(name: 'format')
  final String format;
  static const fromJsonFactory = _$DateFormatFromJson;
  static const toJsonFactory = _$DateFormatToJson;
  Map<String, dynamic> toJson() => _$DateFormatToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DateFormat &&
            (identical(other.format, format) ||
                const DeepCollectionEquality().equals(other.format, format)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(format) ^ runtimeType.hashCode;
}

extension $DateFormatExtension on DateFormat {
  DateFormat copyWith({String? format}) {
    return DateFormat(format: format ?? this.format);
  }

  DateFormat copyWithWrapped({Wrapped<String>? format}) {
    return DateFormat(format: (format != null ? format.value : this.format));
  }
}

@JsonSerializable(explicitToJson: true)
class CurrencyFormat {
  CurrencyFormat({
    required this.isoCode,
    required this.exampleFormat,
    required this.decimalDigits,
    required this.decimalSeparator,
    required this.symbolFirst,
    required this.groupSeparator,
    required this.currencySymbol,
    required this.displaySymbol,
  });

  factory CurrencyFormat.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFormatFromJson(json);

  @JsonKey(name: 'iso_code')
  final String isoCode;
  @JsonKey(name: 'example_format')
  final String exampleFormat;
  @JsonKey(name: 'decimal_digits')
  final int decimalDigits;
  @JsonKey(name: 'decimal_separator')
  final String decimalSeparator;
  @JsonKey(name: 'symbol_first')
  final bool symbolFirst;
  @JsonKey(name: 'group_separator')
  final String groupSeparator;
  @JsonKey(name: 'currency_symbol')
  final String currencySymbol;
  @JsonKey(name: 'display_symbol')
  final bool displaySymbol;
  static const fromJsonFactory = _$CurrencyFormatFromJson;
  static const toJsonFactory = _$CurrencyFormatToJson;
  Map<String, dynamic> toJson() => _$CurrencyFormatToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CurrencyFormat &&
            (identical(other.isoCode, isoCode) ||
                const DeepCollectionEquality()
                    .equals(other.isoCode, isoCode)) &&
            (identical(other.exampleFormat, exampleFormat) ||
                const DeepCollectionEquality()
                    .equals(other.exampleFormat, exampleFormat)) &&
            (identical(other.decimalDigits, decimalDigits) ||
                const DeepCollectionEquality()
                    .equals(other.decimalDigits, decimalDigits)) &&
            (identical(other.decimalSeparator, decimalSeparator) ||
                const DeepCollectionEquality()
                    .equals(other.decimalSeparator, decimalSeparator)) &&
            (identical(other.symbolFirst, symbolFirst) ||
                const DeepCollectionEquality()
                    .equals(other.symbolFirst, symbolFirst)) &&
            (identical(other.groupSeparator, groupSeparator) ||
                const DeepCollectionEquality()
                    .equals(other.groupSeparator, groupSeparator)) &&
            (identical(other.currencySymbol, currencySymbol) ||
                const DeepCollectionEquality()
                    .equals(other.currencySymbol, currencySymbol)) &&
            (identical(other.displaySymbol, displaySymbol) ||
                const DeepCollectionEquality()
                    .equals(other.displaySymbol, displaySymbol)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(isoCode) ^
      const DeepCollectionEquality().hash(exampleFormat) ^
      const DeepCollectionEquality().hash(decimalDigits) ^
      const DeepCollectionEquality().hash(decimalSeparator) ^
      const DeepCollectionEquality().hash(symbolFirst) ^
      const DeepCollectionEquality().hash(groupSeparator) ^
      const DeepCollectionEquality().hash(currencySymbol) ^
      const DeepCollectionEquality().hash(displaySymbol) ^
      runtimeType.hashCode;
}

extension $CurrencyFormatExtension on CurrencyFormat {
  CurrencyFormat copyWith(
      {String? isoCode,
      String? exampleFormat,
      int? decimalDigits,
      String? decimalSeparator,
      bool? symbolFirst,
      String? groupSeparator,
      String? currencySymbol,
      bool? displaySymbol}) {
    return CurrencyFormat(
        isoCode: isoCode ?? this.isoCode,
        exampleFormat: exampleFormat ?? this.exampleFormat,
        decimalDigits: decimalDigits ?? this.decimalDigits,
        decimalSeparator: decimalSeparator ?? this.decimalSeparator,
        symbolFirst: symbolFirst ?? this.symbolFirst,
        groupSeparator: groupSeparator ?? this.groupSeparator,
        currencySymbol: currencySymbol ?? this.currencySymbol,
        displaySymbol: displaySymbol ?? this.displaySymbol);
  }

  CurrencyFormat copyWithWrapped(
      {Wrapped<String>? isoCode,
      Wrapped<String>? exampleFormat,
      Wrapped<int>? decimalDigits,
      Wrapped<String>? decimalSeparator,
      Wrapped<bool>? symbolFirst,
      Wrapped<String>? groupSeparator,
      Wrapped<String>? currencySymbol,
      Wrapped<bool>? displaySymbol}) {
    return CurrencyFormat(
        isoCode: (isoCode != null ? isoCode.value : this.isoCode),
        exampleFormat:
            (exampleFormat != null ? exampleFormat.value : this.exampleFormat),
        decimalDigits:
            (decimalDigits != null ? decimalDigits.value : this.decimalDigits),
        decimalSeparator: (decimalSeparator != null
            ? decimalSeparator.value
            : this.decimalSeparator),
        symbolFirst:
            (symbolFirst != null ? symbolFirst.value : this.symbolFirst),
        groupSeparator: (groupSeparator != null
            ? groupSeparator.value
            : this.groupSeparator),
        currencySymbol: (currencySymbol != null
            ? currencySymbol.value
            : this.currencySymbol),
        displaySymbol:
            (displaySymbol != null ? displaySymbol.value : this.displaySymbol));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSummaryResponse {
  BudgetSummaryResponse({
    required this.data,
  });

  factory BudgetSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetSummaryResponseFromJson(json);

  @JsonKey(name: 'data')
  final BudgetSummaryResponse$Data data;
  static const fromJsonFactory = _$BudgetSummaryResponseFromJson;
  static const toJsonFactory = _$BudgetSummaryResponseToJson;
  Map<String, dynamic> toJson() => _$BudgetSummaryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSummaryResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $BudgetSummaryResponseExtension on BudgetSummaryResponse {
  BudgetSummaryResponse copyWith({BudgetSummaryResponse$Data? data}) {
    return BudgetSummaryResponse(data: data ?? this.data);
  }

  BudgetSummaryResponse copyWithWrapped(
      {Wrapped<BudgetSummaryResponse$Data>? data}) {
    return BudgetSummaryResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSummary {
  BudgetSummary({
    required this.id,
    required this.name,
    this.lastModifiedOn,
    this.firstMonth,
    this.lastMonth,
    this.dateFormat,
    this.currencyFormat,
    this.accounts,
  });

  factory BudgetSummary.fromJson(Map<String, dynamic> json) =>
      _$BudgetSummaryFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'last_modified_on')
  final DateTime? lastModifiedOn;
  @JsonKey(name: 'first_month', toJson: _dateToJson)
  final DateTime? firstMonth;
  @JsonKey(name: 'last_month', toJson: _dateToJson)
  final DateTime? lastMonth;
  @JsonKey(name: 'date_format')
  final DateFormat? dateFormat;
  @JsonKey(name: 'currency_format')
  final CurrencyFormat? currencyFormat;
  @JsonKey(name: 'accounts', defaultValue: <Account>[])
  final List<Account>? accounts;
  static const fromJsonFactory = _$BudgetSummaryFromJson;
  static const toJsonFactory = _$BudgetSummaryToJson;
  Map<String, dynamic> toJson() => _$BudgetSummaryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSummary &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastModifiedOn, lastModifiedOn) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOn, lastModifiedOn)) &&
            (identical(other.firstMonth, firstMonth) ||
                const DeepCollectionEquality()
                    .equals(other.firstMonth, firstMonth)) &&
            (identical(other.lastMonth, lastMonth) ||
                const DeepCollectionEquality()
                    .equals(other.lastMonth, lastMonth)) &&
            (identical(other.dateFormat, dateFormat) ||
                const DeepCollectionEquality()
                    .equals(other.dateFormat, dateFormat)) &&
            (identical(other.currencyFormat, currencyFormat) ||
                const DeepCollectionEquality()
                    .equals(other.currencyFormat, currencyFormat)) &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastModifiedOn) ^
      const DeepCollectionEquality().hash(firstMonth) ^
      const DeepCollectionEquality().hash(lastMonth) ^
      const DeepCollectionEquality().hash(dateFormat) ^
      const DeepCollectionEquality().hash(currencyFormat) ^
      const DeepCollectionEquality().hash(accounts) ^
      runtimeType.hashCode;
}

extension $BudgetSummaryExtension on BudgetSummary {
  BudgetSummary copyWith(
      {String? id,
      String? name,
      DateTime? lastModifiedOn,
      DateTime? firstMonth,
      DateTime? lastMonth,
      DateFormat? dateFormat,
      CurrencyFormat? currencyFormat,
      List<Account>? accounts}) {
    return BudgetSummary(
        id: id ?? this.id,
        name: name ?? this.name,
        lastModifiedOn: lastModifiedOn ?? this.lastModifiedOn,
        firstMonth: firstMonth ?? this.firstMonth,
        lastMonth: lastMonth ?? this.lastMonth,
        dateFormat: dateFormat ?? this.dateFormat,
        currencyFormat: currencyFormat ?? this.currencyFormat,
        accounts: accounts ?? this.accounts);
  }

  BudgetSummary copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<DateTime?>? lastModifiedOn,
      Wrapped<DateTime?>? firstMonth,
      Wrapped<DateTime?>? lastMonth,
      Wrapped<DateFormat?>? dateFormat,
      Wrapped<CurrencyFormat?>? currencyFormat,
      Wrapped<List<Account>?>? accounts}) {
    return BudgetSummary(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        lastModifiedOn: (lastModifiedOn != null
            ? lastModifiedOn.value
            : this.lastModifiedOn),
        firstMonth: (firstMonth != null ? firstMonth.value : this.firstMonth),
        lastMonth: (lastMonth != null ? lastMonth.value : this.lastMonth),
        dateFormat: (dateFormat != null ? dateFormat.value : this.dateFormat),
        currencyFormat: (currencyFormat != null
            ? currencyFormat.value
            : this.currencyFormat),
        accounts: (accounts != null ? accounts.value : this.accounts));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetDetailResponse {
  BudgetDetailResponse({
    required this.data,
  });

  factory BudgetDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetDetailResponseFromJson(json);

  @JsonKey(name: 'data')
  final BudgetDetailResponse$Data data;
  static const fromJsonFactory = _$BudgetDetailResponseFromJson;
  static const toJsonFactory = _$BudgetDetailResponseToJson;
  Map<String, dynamic> toJson() => _$BudgetDetailResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetDetailResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $BudgetDetailResponseExtension on BudgetDetailResponse {
  BudgetDetailResponse copyWith({BudgetDetailResponse$Data? data}) {
    return BudgetDetailResponse(data: data ?? this.data);
  }

  BudgetDetailResponse copyWithWrapped(
      {Wrapped<BudgetDetailResponse$Data>? data}) {
    return BudgetDetailResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetDetail {
  BudgetDetail({
    this.accounts,
    this.payees,
    this.payeeLocations,
    this.categoryGroups,
    this.categories,
    this.months,
    this.transactions,
    this.subtransactions,
    this.scheduledTransactions,
    this.scheduledSubtransactions,
    required this.id,
    required this.name,
    this.lastModifiedOn,
    this.firstMonth,
    this.lastMonth,
    this.dateFormat,
    this.currencyFormat,
  });

  factory BudgetDetail.fromJson(Map<String, dynamic> json) =>
      _$BudgetDetailFromJson(json);

  @JsonKey(name: 'accounts', defaultValue: <Account>[])
  final List<Account>? accounts;
  @JsonKey(name: 'payees', defaultValue: <Payee>[])
  final List<Payee>? payees;
  @JsonKey(name: 'payee_locations', defaultValue: <PayeeLocation>[])
  final List<PayeeLocation>? payeeLocations;
  @JsonKey(name: 'category_groups', defaultValue: <CategoryGroup>[])
  final List<CategoryGroup>? categoryGroups;
  @JsonKey(name: 'categories', defaultValue: <Category>[])
  final List<Category>? categories;
  @JsonKey(name: 'months', defaultValue: <MonthDetail>[])
  final List<MonthDetail>? months;
  @JsonKey(name: 'transactions', defaultValue: <TransactionSummary>[])
  final List<TransactionSummary>? transactions;
  @JsonKey(name: 'subtransactions', defaultValue: <SubTransaction>[])
  final List<SubTransaction>? subtransactions;
  @JsonKey(
      name: 'scheduled_transactions',
      defaultValue: <ScheduledTransactionSummary>[])
  final List<ScheduledTransactionSummary>? scheduledTransactions;
  @JsonKey(
      name: 'scheduled_subtransactions',
      defaultValue: <ScheduledSubTransaction>[])
  final List<ScheduledSubTransaction>? scheduledSubtransactions;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'last_modified_on')
  final DateTime? lastModifiedOn;
  @JsonKey(name: 'first_month', toJson: _dateToJson)
  final DateTime? firstMonth;
  @JsonKey(name: 'last_month', toJson: _dateToJson)
  final DateTime? lastMonth;
  @JsonKey(name: 'date_format')
  final DateFormat? dateFormat;
  @JsonKey(name: 'currency_format')
  final CurrencyFormat? currencyFormat;
  static const fromJsonFactory = _$BudgetDetailFromJson;
  static const toJsonFactory = _$BudgetDetailToJson;
  Map<String, dynamic> toJson() => _$BudgetDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetDetail &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.payees, payees) ||
                const DeepCollectionEquality().equals(other.payees, payees)) &&
            (identical(other.payeeLocations, payeeLocations) ||
                const DeepCollectionEquality()
                    .equals(other.payeeLocations, payeeLocations)) &&
            (identical(other.categoryGroups, categoryGroups) ||
                const DeepCollectionEquality()
                    .equals(other.categoryGroups, categoryGroups)) &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.months, months) ||
                const DeepCollectionEquality().equals(other.months, months)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)) &&
            (identical(other.scheduledTransactions, scheduledTransactions) ||
                const DeepCollectionEquality().equals(
                    other.scheduledTransactions, scheduledTransactions)) &&
            (identical(
                    other.scheduledSubtransactions, scheduledSubtransactions) ||
                const DeepCollectionEquality().equals(
                    other.scheduledSubtransactions,
                    scheduledSubtransactions)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.lastModifiedOn, lastModifiedOn) ||
                const DeepCollectionEquality()
                    .equals(other.lastModifiedOn, lastModifiedOn)) &&
            (identical(other.firstMonth, firstMonth) ||
                const DeepCollectionEquality()
                    .equals(other.firstMonth, firstMonth)) &&
            (identical(other.lastMonth, lastMonth) ||
                const DeepCollectionEquality()
                    .equals(other.lastMonth, lastMonth)) &&
            (identical(other.dateFormat, dateFormat) ||
                const DeepCollectionEquality()
                    .equals(other.dateFormat, dateFormat)) &&
            (identical(other.currencyFormat, currencyFormat) ||
                const DeepCollectionEquality()
                    .equals(other.currencyFormat, currencyFormat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(payees) ^
      const DeepCollectionEquality().hash(payeeLocations) ^
      const DeepCollectionEquality().hash(categoryGroups) ^
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(months) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      const DeepCollectionEquality().hash(scheduledTransactions) ^
      const DeepCollectionEquality().hash(scheduledSubtransactions) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(lastModifiedOn) ^
      const DeepCollectionEquality().hash(firstMonth) ^
      const DeepCollectionEquality().hash(lastMonth) ^
      const DeepCollectionEquality().hash(dateFormat) ^
      const DeepCollectionEquality().hash(currencyFormat) ^
      runtimeType.hashCode;
}

extension $BudgetDetailExtension on BudgetDetail {
  BudgetDetail copyWith(
      {List<Account>? accounts,
      List<Payee>? payees,
      List<PayeeLocation>? payeeLocations,
      List<CategoryGroup>? categoryGroups,
      List<Category>? categories,
      List<MonthDetail>? months,
      List<TransactionSummary>? transactions,
      List<SubTransaction>? subtransactions,
      List<ScheduledTransactionSummary>? scheduledTransactions,
      List<ScheduledSubTransaction>? scheduledSubtransactions,
      String? id,
      String? name,
      DateTime? lastModifiedOn,
      DateTime? firstMonth,
      DateTime? lastMonth,
      DateFormat? dateFormat,
      CurrencyFormat? currencyFormat}) {
    return BudgetDetail(
        accounts: accounts ?? this.accounts,
        payees: payees ?? this.payees,
        payeeLocations: payeeLocations ?? this.payeeLocations,
        categoryGroups: categoryGroups ?? this.categoryGroups,
        categories: categories ?? this.categories,
        months: months ?? this.months,
        transactions: transactions ?? this.transactions,
        subtransactions: subtransactions ?? this.subtransactions,
        scheduledTransactions:
            scheduledTransactions ?? this.scheduledTransactions,
        scheduledSubtransactions:
            scheduledSubtransactions ?? this.scheduledSubtransactions,
        id: id ?? this.id,
        name: name ?? this.name,
        lastModifiedOn: lastModifiedOn ?? this.lastModifiedOn,
        firstMonth: firstMonth ?? this.firstMonth,
        lastMonth: lastMonth ?? this.lastMonth,
        dateFormat: dateFormat ?? this.dateFormat,
        currencyFormat: currencyFormat ?? this.currencyFormat);
  }

  BudgetDetail copyWithWrapped(
      {Wrapped<List<Account>?>? accounts,
      Wrapped<List<Payee>?>? payees,
      Wrapped<List<PayeeLocation>?>? payeeLocations,
      Wrapped<List<CategoryGroup>?>? categoryGroups,
      Wrapped<List<Category>?>? categories,
      Wrapped<List<MonthDetail>?>? months,
      Wrapped<List<TransactionSummary>?>? transactions,
      Wrapped<List<SubTransaction>?>? subtransactions,
      Wrapped<List<ScheduledTransactionSummary>?>? scheduledTransactions,
      Wrapped<List<ScheduledSubTransaction>?>? scheduledSubtransactions,
      Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<DateTime?>? lastModifiedOn,
      Wrapped<DateTime?>? firstMonth,
      Wrapped<DateTime?>? lastMonth,
      Wrapped<DateFormat?>? dateFormat,
      Wrapped<CurrencyFormat?>? currencyFormat}) {
    return BudgetDetail(
        accounts: (accounts != null ? accounts.value : this.accounts),
        payees: (payees != null ? payees.value : this.payees),
        payeeLocations: (payeeLocations != null
            ? payeeLocations.value
            : this.payeeLocations),
        categoryGroups: (categoryGroups != null
            ? categoryGroups.value
            : this.categoryGroups),
        categories: (categories != null ? categories.value : this.categories),
        months: (months != null ? months.value : this.months),
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions),
        scheduledTransactions: (scheduledTransactions != null
            ? scheduledTransactions.value
            : this.scheduledTransactions),
        scheduledSubtransactions: (scheduledSubtransactions != null
            ? scheduledSubtransactions.value
            : this.scheduledSubtransactions),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        lastModifiedOn: (lastModifiedOn != null
            ? lastModifiedOn.value
            : this.lastModifiedOn),
        firstMonth: (firstMonth != null ? firstMonth.value : this.firstMonth),
        lastMonth: (lastMonth != null ? lastMonth.value : this.lastMonth),
        dateFormat: (dateFormat != null ? dateFormat.value : this.dateFormat),
        currencyFormat: (currencyFormat != null
            ? currencyFormat.value
            : this.currencyFormat));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSettingsResponse {
  BudgetSettingsResponse({
    required this.data,
  });

  factory BudgetSettingsResponse.fromJson(Map<String, dynamic> json) =>
      _$BudgetSettingsResponseFromJson(json);

  @JsonKey(name: 'data')
  final BudgetSettingsResponse$Data data;
  static const fromJsonFactory = _$BudgetSettingsResponseFromJson;
  static const toJsonFactory = _$BudgetSettingsResponseToJson;
  Map<String, dynamic> toJson() => _$BudgetSettingsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSettingsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $BudgetSettingsResponseExtension on BudgetSettingsResponse {
  BudgetSettingsResponse copyWith({BudgetSettingsResponse$Data? data}) {
    return BudgetSettingsResponse(data: data ?? this.data);
  }

  BudgetSettingsResponse copyWithWrapped(
      {Wrapped<BudgetSettingsResponse$Data>? data}) {
    return BudgetSettingsResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSettings {
  BudgetSettings({
    required this.dateFormat,
    required this.currencyFormat,
  });

  factory BudgetSettings.fromJson(Map<String, dynamic> json) =>
      _$BudgetSettingsFromJson(json);

  @JsonKey(name: 'date_format')
  final DateFormat dateFormat;
  @JsonKey(name: 'currency_format')
  final CurrencyFormat currencyFormat;
  static const fromJsonFactory = _$BudgetSettingsFromJson;
  static const toJsonFactory = _$BudgetSettingsToJson;
  Map<String, dynamic> toJson() => _$BudgetSettingsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSettings &&
            (identical(other.dateFormat, dateFormat) ||
                const DeepCollectionEquality()
                    .equals(other.dateFormat, dateFormat)) &&
            (identical(other.currencyFormat, currencyFormat) ||
                const DeepCollectionEquality()
                    .equals(other.currencyFormat, currencyFormat)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(dateFormat) ^
      const DeepCollectionEquality().hash(currencyFormat) ^
      runtimeType.hashCode;
}

extension $BudgetSettingsExtension on BudgetSettings {
  BudgetSettings copyWith(
      {DateFormat? dateFormat, CurrencyFormat? currencyFormat}) {
    return BudgetSettings(
        dateFormat: dateFormat ?? this.dateFormat,
        currencyFormat: currencyFormat ?? this.currencyFormat);
  }

  BudgetSettings copyWithWrapped(
      {Wrapped<DateFormat>? dateFormat,
      Wrapped<CurrencyFormat>? currencyFormat}) {
    return BudgetSettings(
        dateFormat: (dateFormat != null ? dateFormat.value : this.dateFormat),
        currencyFormat: (currencyFormat != null
            ? currencyFormat.value
            : this.currencyFormat));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountsResponse {
  AccountsResponse({
    required this.data,
  });

  factory AccountsResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountsResponseFromJson(json);

  @JsonKey(name: 'data')
  final AccountsResponse$Data data;
  static const fromJsonFactory = _$AccountsResponseFromJson;
  static const toJsonFactory = _$AccountsResponseToJson;
  Map<String, dynamic> toJson() => _$AccountsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $AccountsResponseExtension on AccountsResponse {
  AccountsResponse copyWith({AccountsResponse$Data? data}) {
    return AccountsResponse(data: data ?? this.data);
  }

  AccountsResponse copyWithWrapped({Wrapped<AccountsResponse$Data>? data}) {
    return AccountsResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountResponse {
  AccountResponse({
    required this.data,
  });

  factory AccountResponse.fromJson(Map<String, dynamic> json) =>
      _$AccountResponseFromJson(json);

  @JsonKey(name: 'data')
  final AccountResponse$Data data;
  static const fromJsonFactory = _$AccountResponseFromJson;
  static const toJsonFactory = _$AccountResponseToJson;
  Map<String, dynamic> toJson() => _$AccountResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $AccountResponseExtension on AccountResponse {
  AccountResponse copyWith({AccountResponse$Data? data}) {
    return AccountResponse(data: data ?? this.data);
  }

  AccountResponse copyWithWrapped({Wrapped<AccountResponse$Data>? data}) {
    return AccountResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Account {
  Account({
    required this.id,
    required this.name,
    required this.type,
    required this.onBudget,
    required this.closed,
    this.note,
    required this.balance,
    required this.clearedBalance,
    required this.unclearedBalance,
    required this.transferPayeeId,
    this.directImportLinked,
    this.directImportInError,
    required this.deleted,
  });

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'type',
    toJson: accountTypeToJson,
    fromJson: accountTypeFromJson,
  )
  final enums.AccountType type;
  @JsonKey(name: 'on_budget')
  final bool onBudget;
  @JsonKey(name: 'closed')
  final bool closed;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'balance')
  final num balance;
  @JsonKey(name: 'cleared_balance')
  final num clearedBalance;
  @JsonKey(name: 'uncleared_balance')
  final num unclearedBalance;
  @JsonKey(name: 'transfer_payee_id')
  final String transferPayeeId;
  @JsonKey(name: 'direct_import_linked')
  final bool? directImportLinked;
  @JsonKey(name: 'direct_import_in_error')
  final bool? directImportInError;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$AccountFromJson;
  static const toJsonFactory = _$AccountToJson;
  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Account &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.onBudget, onBudget) ||
                const DeepCollectionEquality()
                    .equals(other.onBudget, onBudget)) &&
            (identical(other.closed, closed) ||
                const DeepCollectionEquality().equals(other.closed, closed)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.clearedBalance, clearedBalance) ||
                const DeepCollectionEquality()
                    .equals(other.clearedBalance, clearedBalance)) &&
            (identical(other.unclearedBalance, unclearedBalance) ||
                const DeepCollectionEquality()
                    .equals(other.unclearedBalance, unclearedBalance)) &&
            (identical(other.transferPayeeId, transferPayeeId) ||
                const DeepCollectionEquality()
                    .equals(other.transferPayeeId, transferPayeeId)) &&
            (identical(other.directImportLinked, directImportLinked) ||
                const DeepCollectionEquality()
                    .equals(other.directImportLinked, directImportLinked)) &&
            (identical(other.directImportInError, directImportInError) ||
                const DeepCollectionEquality()
                    .equals(other.directImportInError, directImportInError)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(onBudget) ^
      const DeepCollectionEquality().hash(closed) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(clearedBalance) ^
      const DeepCollectionEquality().hash(unclearedBalance) ^
      const DeepCollectionEquality().hash(transferPayeeId) ^
      const DeepCollectionEquality().hash(directImportLinked) ^
      const DeepCollectionEquality().hash(directImportInError) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $AccountExtension on Account {
  Account copyWith(
      {String? id,
      String? name,
      enums.AccountType? type,
      bool? onBudget,
      bool? closed,
      String? note,
      num? balance,
      num? clearedBalance,
      num? unclearedBalance,
      String? transferPayeeId,
      bool? directImportLinked,
      bool? directImportInError,
      bool? deleted}) {
    return Account(
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        onBudget: onBudget ?? this.onBudget,
        closed: closed ?? this.closed,
        note: note ?? this.note,
        balance: balance ?? this.balance,
        clearedBalance: clearedBalance ?? this.clearedBalance,
        unclearedBalance: unclearedBalance ?? this.unclearedBalance,
        transferPayeeId: transferPayeeId ?? this.transferPayeeId,
        directImportLinked: directImportLinked ?? this.directImportLinked,
        directImportInError: directImportInError ?? this.directImportInError,
        deleted: deleted ?? this.deleted);
  }

  Account copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<enums.AccountType>? type,
      Wrapped<bool>? onBudget,
      Wrapped<bool>? closed,
      Wrapped<String?>? note,
      Wrapped<num>? balance,
      Wrapped<num>? clearedBalance,
      Wrapped<num>? unclearedBalance,
      Wrapped<String>? transferPayeeId,
      Wrapped<bool?>? directImportLinked,
      Wrapped<bool?>? directImportInError,
      Wrapped<bool>? deleted}) {
    return Account(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type),
        onBudget: (onBudget != null ? onBudget.value : this.onBudget),
        closed: (closed != null ? closed.value : this.closed),
        note: (note != null ? note.value : this.note),
        balance: (balance != null ? balance.value : this.balance),
        clearedBalance: (clearedBalance != null
            ? clearedBalance.value
            : this.clearedBalance),
        unclearedBalance: (unclearedBalance != null
            ? unclearedBalance.value
            : this.unclearedBalance),
        transferPayeeId: (transferPayeeId != null
            ? transferPayeeId.value
            : this.transferPayeeId),
        directImportLinked: (directImportLinked != null
            ? directImportLinked.value
            : this.directImportLinked),
        directImportInError: (directImportInError != null
            ? directImportInError.value
            : this.directImportInError),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class PostAccountWrapper {
  PostAccountWrapper({
    required this.account,
  });

  factory PostAccountWrapper.fromJson(Map<String, dynamic> json) =>
      _$PostAccountWrapperFromJson(json);

  @JsonKey(name: 'account')
  final SaveAccount account;
  static const fromJsonFactory = _$PostAccountWrapperFromJson;
  static const toJsonFactory = _$PostAccountWrapperToJson;
  Map<String, dynamic> toJson() => _$PostAccountWrapperToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostAccountWrapper &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^ runtimeType.hashCode;
}

extension $PostAccountWrapperExtension on PostAccountWrapper {
  PostAccountWrapper copyWith({SaveAccount? account}) {
    return PostAccountWrapper(account: account ?? this.account);
  }

  PostAccountWrapper copyWithWrapped({Wrapped<SaveAccount>? account}) {
    return PostAccountWrapper(
        account: (account != null ? account.value : this.account));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveAccount {
  SaveAccount({
    required this.name,
    required this.type,
    required this.balance,
  });

  factory SaveAccount.fromJson(Map<String, dynamic> json) =>
      _$SaveAccountFromJson(json);

  @JsonKey(name: 'name')
  final String name;
  @JsonKey(
    name: 'type',
    toJson: accountTypeToJson,
    fromJson: accountTypeFromJson,
  )
  final enums.AccountType type;
  @JsonKey(name: 'balance')
  final num balance;
  static const fromJsonFactory = _$SaveAccountFromJson;
  static const toJsonFactory = _$SaveAccountToJson;
  Map<String, dynamic> toJson() => _$SaveAccountToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveAccount &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality().equals(other.balance, balance)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(balance) ^
      runtimeType.hashCode;
}

extension $SaveAccountExtension on SaveAccount {
  SaveAccount copyWith({String? name, enums.AccountType? type, num? balance}) {
    return SaveAccount(
        name: name ?? this.name,
        type: type ?? this.type,
        balance: balance ?? this.balance);
  }

  SaveAccount copyWithWrapped(
      {Wrapped<String>? name,
      Wrapped<enums.AccountType>? type,
      Wrapped<num>? balance}) {
    return SaveAccount(
        name: (name != null ? name.value : this.name),
        type: (type != null ? type.value : this.type),
        balance: (balance != null ? balance.value : this.balance));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoriesResponse {
  CategoriesResponse({
    required this.data,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);

  @JsonKey(name: 'data')
  final CategoriesResponse$Data data;
  static const fromJsonFactory = _$CategoriesResponseFromJson;
  static const toJsonFactory = _$CategoriesResponseToJson;
  Map<String, dynamic> toJson() => _$CategoriesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $CategoriesResponseExtension on CategoriesResponse {
  CategoriesResponse copyWith({CategoriesResponse$Data? data}) {
    return CategoriesResponse(data: data ?? this.data);
  }

  CategoriesResponse copyWithWrapped({Wrapped<CategoriesResponse$Data>? data}) {
    return CategoriesResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryResponse {
  CategoryResponse({
    required this.data,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);

  @JsonKey(name: 'data')
  final CategoryResponse$Data data;
  static const fromJsonFactory = _$CategoryResponseFromJson;
  static const toJsonFactory = _$CategoryResponseToJson;
  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $CategoryResponseExtension on CategoryResponse {
  CategoryResponse copyWith({CategoryResponse$Data? data}) {
    return CategoryResponse(data: data ?? this.data);
  }

  CategoryResponse copyWithWrapped({Wrapped<CategoryResponse$Data>? data}) {
    return CategoryResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryGroupWithCategories {
  CategoryGroupWithCategories({
    required this.categories,
    required this.id,
    required this.name,
    required this.hidden,
    required this.deleted,
  });

  factory CategoryGroupWithCategories.fromJson(Map<String, dynamic> json) =>
      _$CategoryGroupWithCategoriesFromJson(json);

  @JsonKey(name: 'categories', defaultValue: <Category>[])
  final List<Category> categories;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'hidden')
  final bool hidden;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$CategoryGroupWithCategoriesFromJson;
  static const toJsonFactory = _$CategoryGroupWithCategoriesToJson;
  Map<String, dynamic> toJson() => _$CategoryGroupWithCategoriesToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryGroupWithCategories &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $CategoryGroupWithCategoriesExtension on CategoryGroupWithCategories {
  CategoryGroupWithCategories copyWith(
      {List<Category>? categories,
      String? id,
      String? name,
      bool? hidden,
      bool? deleted}) {
    return CategoryGroupWithCategories(
        categories: categories ?? this.categories,
        id: id ?? this.id,
        name: name ?? this.name,
        hidden: hidden ?? this.hidden,
        deleted: deleted ?? this.deleted);
  }

  CategoryGroupWithCategories copyWithWrapped(
      {Wrapped<List<Category>>? categories,
      Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<bool>? hidden,
      Wrapped<bool>? deleted}) {
    return CategoryGroupWithCategories(
        categories: (categories != null ? categories.value : this.categories),
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        hidden: (hidden != null ? hidden.value : this.hidden),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryGroup {
  CategoryGroup({
    required this.id,
    required this.name,
    required this.hidden,
    required this.deleted,
  });

  factory CategoryGroup.fromJson(Map<String, dynamic> json) =>
      _$CategoryGroupFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'hidden')
  final bool hidden;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$CategoryGroupFromJson;
  static const toJsonFactory = _$CategoryGroupToJson;
  Map<String, dynamic> toJson() => _$CategoryGroupToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryGroup &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $CategoryGroupExtension on CategoryGroup {
  CategoryGroup copyWith(
      {String? id, String? name, bool? hidden, bool? deleted}) {
    return CategoryGroup(
        id: id ?? this.id,
        name: name ?? this.name,
        hidden: hidden ?? this.hidden,
        deleted: deleted ?? this.deleted);
  }

  CategoryGroup copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<bool>? hidden,
      Wrapped<bool>? deleted}) {
    return CategoryGroup(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        hidden: (hidden != null ? hidden.value : this.hidden),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class Category {
  Category({
    required this.id,
    required this.categoryGroupId,
    required this.name,
    required this.hidden,
    this.originalCategoryGroupId,
    this.note,
    required this.budgeted,
    required this.activity,
    required this.balance,
    this.goalType,
    this.goalCreationMonth,
    this.goalTarget,
    this.goalTargetMonth,
    this.goalPercentageComplete,
    this.goalMonthsToBudget,
    this.goalUnderFunded,
    this.goalOverallFunded,
    this.goalOverallLeft,
    required this.deleted,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'category_group_id')
  final String categoryGroupId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'hidden')
  final bool hidden;
  @JsonKey(name: 'original_category_group_id')
  final String? originalCategoryGroupId;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'budgeted')
  final num budgeted;
  @JsonKey(name: 'activity')
  final num activity;
  @JsonKey(name: 'balance')
  final num balance;
  @JsonKey(
    name: 'goal_type',
    toJson: categoryGoalTypeToJson,
    fromJson: categoryGoalTypeFromJson,
  )
  final enums.CategoryGoalType? goalType;
  @JsonKey(name: 'goal_creation_month', toJson: _dateToJson)
  final DateTime? goalCreationMonth;
  @JsonKey(name: 'goal_target')
  final num? goalTarget;
  @JsonKey(name: 'goal_target_month', toJson: _dateToJson)
  final DateTime? goalTargetMonth;
  @JsonKey(name: 'goal_percentage_complete')
  final int? goalPercentageComplete;
  @JsonKey(name: 'goal_months_to_budget')
  final int? goalMonthsToBudget;
  @JsonKey(name: 'goal_under_funded')
  final num? goalUnderFunded;
  @JsonKey(name: 'goal_overall_funded')
  final num? goalOverallFunded;
  @JsonKey(name: 'goal_overall_left')
  final num? goalOverallLeft;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$CategoryFromJson;
  static const toJsonFactory = _$CategoryToJson;
  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Category &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.categoryGroupId, categoryGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryGroupId, categoryGroupId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.hidden, hidden) ||
                const DeepCollectionEquality().equals(other.hidden, hidden)) &&
            (identical(other.originalCategoryGroupId, originalCategoryGroupId) ||
                const DeepCollectionEquality().equals(
                    other.originalCategoryGroupId, originalCategoryGroupId)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.budgeted, budgeted) ||
                const DeepCollectionEquality()
                    .equals(other.budgeted, budgeted)) &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.goalType, goalType) ||
                const DeepCollectionEquality()
                    .equals(other.goalType, goalType)) &&
            (identical(other.goalCreationMonth, goalCreationMonth) ||
                const DeepCollectionEquality()
                    .equals(other.goalCreationMonth, goalCreationMonth)) &&
            (identical(other.goalTarget, goalTarget) ||
                const DeepCollectionEquality()
                    .equals(other.goalTarget, goalTarget)) &&
            (identical(other.goalTargetMonth, goalTargetMonth) ||
                const DeepCollectionEquality()
                    .equals(other.goalTargetMonth, goalTargetMonth)) &&
            (identical(other.goalPercentageComplete, goalPercentageComplete) ||
                const DeepCollectionEquality().equals(
                    other.goalPercentageComplete, goalPercentageComplete)) &&
            (identical(other.goalMonthsToBudget, goalMonthsToBudget) ||
                const DeepCollectionEquality()
                    .equals(other.goalMonthsToBudget, goalMonthsToBudget)) &&
            (identical(other.goalUnderFunded, goalUnderFunded) ||
                const DeepCollectionEquality()
                    .equals(other.goalUnderFunded, goalUnderFunded)) &&
            (identical(other.goalOverallFunded, goalOverallFunded) ||
                const DeepCollectionEquality()
                    .equals(other.goalOverallFunded, goalOverallFunded)) &&
            (identical(other.goalOverallLeft, goalOverallLeft) ||
                const DeepCollectionEquality()
                    .equals(other.goalOverallLeft, goalOverallLeft)) &&
            (identical(other.deleted, deleted) || const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(categoryGroupId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(hidden) ^
      const DeepCollectionEquality().hash(originalCategoryGroupId) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(budgeted) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(goalType) ^
      const DeepCollectionEquality().hash(goalCreationMonth) ^
      const DeepCollectionEquality().hash(goalTarget) ^
      const DeepCollectionEquality().hash(goalTargetMonth) ^
      const DeepCollectionEquality().hash(goalPercentageComplete) ^
      const DeepCollectionEquality().hash(goalMonthsToBudget) ^
      const DeepCollectionEquality().hash(goalUnderFunded) ^
      const DeepCollectionEquality().hash(goalOverallFunded) ^
      const DeepCollectionEquality().hash(goalOverallLeft) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $CategoryExtension on Category {
  Category copyWith(
      {String? id,
      String? categoryGroupId,
      String? name,
      bool? hidden,
      String? originalCategoryGroupId,
      String? note,
      num? budgeted,
      num? activity,
      num? balance,
      enums.CategoryGoalType? goalType,
      DateTime? goalCreationMonth,
      num? goalTarget,
      DateTime? goalTargetMonth,
      int? goalPercentageComplete,
      int? goalMonthsToBudget,
      num? goalUnderFunded,
      num? goalOverallFunded,
      num? goalOverallLeft,
      bool? deleted}) {
    return Category(
        id: id ?? this.id,
        categoryGroupId: categoryGroupId ?? this.categoryGroupId,
        name: name ?? this.name,
        hidden: hidden ?? this.hidden,
        originalCategoryGroupId:
            originalCategoryGroupId ?? this.originalCategoryGroupId,
        note: note ?? this.note,
        budgeted: budgeted ?? this.budgeted,
        activity: activity ?? this.activity,
        balance: balance ?? this.balance,
        goalType: goalType ?? this.goalType,
        goalCreationMonth: goalCreationMonth ?? this.goalCreationMonth,
        goalTarget: goalTarget ?? this.goalTarget,
        goalTargetMonth: goalTargetMonth ?? this.goalTargetMonth,
        goalPercentageComplete:
            goalPercentageComplete ?? this.goalPercentageComplete,
        goalMonthsToBudget: goalMonthsToBudget ?? this.goalMonthsToBudget,
        goalUnderFunded: goalUnderFunded ?? this.goalUnderFunded,
        goalOverallFunded: goalOverallFunded ?? this.goalOverallFunded,
        goalOverallLeft: goalOverallLeft ?? this.goalOverallLeft,
        deleted: deleted ?? this.deleted);
  }

  Category copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? categoryGroupId,
      Wrapped<String>? name,
      Wrapped<bool>? hidden,
      Wrapped<String?>? originalCategoryGroupId,
      Wrapped<String?>? note,
      Wrapped<num>? budgeted,
      Wrapped<num>? activity,
      Wrapped<num>? balance,
      Wrapped<enums.CategoryGoalType?>? goalType,
      Wrapped<DateTime?>? goalCreationMonth,
      Wrapped<num?>? goalTarget,
      Wrapped<DateTime?>? goalTargetMonth,
      Wrapped<int?>? goalPercentageComplete,
      Wrapped<int?>? goalMonthsToBudget,
      Wrapped<num?>? goalUnderFunded,
      Wrapped<num?>? goalOverallFunded,
      Wrapped<num?>? goalOverallLeft,
      Wrapped<bool>? deleted}) {
    return Category(
        id: (id != null ? id.value : this.id),
        categoryGroupId: (categoryGroupId != null
            ? categoryGroupId.value
            : this.categoryGroupId),
        name: (name != null ? name.value : this.name),
        hidden: (hidden != null ? hidden.value : this.hidden),
        originalCategoryGroupId: (originalCategoryGroupId != null
            ? originalCategoryGroupId.value
            : this.originalCategoryGroupId),
        note: (note != null ? note.value : this.note),
        budgeted: (budgeted != null ? budgeted.value : this.budgeted),
        activity: (activity != null ? activity.value : this.activity),
        balance: (balance != null ? balance.value : this.balance),
        goalType: (goalType != null ? goalType.value : this.goalType),
        goalCreationMonth: (goalCreationMonth != null
            ? goalCreationMonth.value
            : this.goalCreationMonth),
        goalTarget: (goalTarget != null ? goalTarget.value : this.goalTarget),
        goalTargetMonth: (goalTargetMonth != null
            ? goalTargetMonth.value
            : this.goalTargetMonth),
        goalPercentageComplete: (goalPercentageComplete != null
            ? goalPercentageComplete.value
            : this.goalPercentageComplete),
        goalMonthsToBudget: (goalMonthsToBudget != null
            ? goalMonthsToBudget.value
            : this.goalMonthsToBudget),
        goalUnderFunded: (goalUnderFunded != null
            ? goalUnderFunded.value
            : this.goalUnderFunded),
        goalOverallFunded: (goalOverallFunded != null
            ? goalOverallFunded.value
            : this.goalOverallFunded),
        goalOverallLeft: (goalOverallLeft != null
            ? goalOverallLeft.value
            : this.goalOverallLeft),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveCategoryResponse {
  SaveCategoryResponse({
    required this.data,
  });

  factory SaveCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveCategoryResponseFromJson(json);

  @JsonKey(name: 'data')
  final SaveCategoryResponse$Data data;
  static const fromJsonFactory = _$SaveCategoryResponseFromJson;
  static const toJsonFactory = _$SaveCategoryResponseToJson;
  Map<String, dynamic> toJson() => _$SaveCategoryResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCategoryResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $SaveCategoryResponseExtension on SaveCategoryResponse {
  SaveCategoryResponse copyWith({SaveCategoryResponse$Data? data}) {
    return SaveCategoryResponse(data: data ?? this.data);
  }

  SaveCategoryResponse copyWithWrapped(
      {Wrapped<SaveCategoryResponse$Data>? data}) {
    return SaveCategoryResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeesResponse {
  PayeesResponse({
    required this.data,
  });

  factory PayeesResponse.fromJson(Map<String, dynamic> json) =>
      _$PayeesResponseFromJson(json);

  @JsonKey(name: 'data')
  final PayeesResponse$Data data;
  static const fromJsonFactory = _$PayeesResponseFromJson;
  static const toJsonFactory = _$PayeesResponseToJson;
  Map<String, dynamic> toJson() => _$PayeesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeesResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $PayeesResponseExtension on PayeesResponse {
  PayeesResponse copyWith({PayeesResponse$Data? data}) {
    return PayeesResponse(data: data ?? this.data);
  }

  PayeesResponse copyWithWrapped({Wrapped<PayeesResponse$Data>? data}) {
    return PayeesResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeResponse {
  PayeeResponse({
    required this.data,
  });

  factory PayeeResponse.fromJson(Map<String, dynamic> json) =>
      _$PayeeResponseFromJson(json);

  @JsonKey(name: 'data')
  final PayeeResponse$Data data;
  static const fromJsonFactory = _$PayeeResponseFromJson;
  static const toJsonFactory = _$PayeeResponseToJson;
  Map<String, dynamic> toJson() => _$PayeeResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $PayeeResponseExtension on PayeeResponse {
  PayeeResponse copyWith({PayeeResponse$Data? data}) {
    return PayeeResponse(data: data ?? this.data);
  }

  PayeeResponse copyWithWrapped({Wrapped<PayeeResponse$Data>? data}) {
    return PayeeResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class Payee {
  Payee({
    required this.id,
    required this.name,
    this.transferAccountId,
    required this.deleted,
  });

  factory Payee.fromJson(Map<String, dynamic> json) => _$PayeeFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$PayeeFromJson;
  static const toJsonFactory = _$PayeeToJson;
  Map<String, dynamic> toJson() => _$PayeeToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Payee &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $PayeeExtension on Payee {
  Payee copyWith(
      {String? id, String? name, String? transferAccountId, bool? deleted}) {
    return Payee(
        id: id ?? this.id,
        name: name ?? this.name,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        deleted: deleted ?? this.deleted);
  }

  Payee copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? name,
      Wrapped<String?>? transferAccountId,
      Wrapped<bool>? deleted}) {
    return Payee(
        id: (id != null ? id.value : this.id),
        name: (name != null ? name.value : this.name),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeLocationsResponse {
  PayeeLocationsResponse({
    required this.data,
  });

  factory PayeeLocationsResponse.fromJson(Map<String, dynamic> json) =>
      _$PayeeLocationsResponseFromJson(json);

  @JsonKey(name: 'data')
  final PayeeLocationsResponse$Data data;
  static const fromJsonFactory = _$PayeeLocationsResponseFromJson;
  static const toJsonFactory = _$PayeeLocationsResponseToJson;
  Map<String, dynamic> toJson() => _$PayeeLocationsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeLocationsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $PayeeLocationsResponseExtension on PayeeLocationsResponse {
  PayeeLocationsResponse copyWith({PayeeLocationsResponse$Data? data}) {
    return PayeeLocationsResponse(data: data ?? this.data);
  }

  PayeeLocationsResponse copyWithWrapped(
      {Wrapped<PayeeLocationsResponse$Data>? data}) {
    return PayeeLocationsResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeLocationResponse {
  PayeeLocationResponse({
    required this.data,
  });

  factory PayeeLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$PayeeLocationResponseFromJson(json);

  @JsonKey(name: 'data')
  final PayeeLocationResponse$Data data;
  static const fromJsonFactory = _$PayeeLocationResponseFromJson;
  static const toJsonFactory = _$PayeeLocationResponseToJson;
  Map<String, dynamic> toJson() => _$PayeeLocationResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeLocationResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $PayeeLocationResponseExtension on PayeeLocationResponse {
  PayeeLocationResponse copyWith({PayeeLocationResponse$Data? data}) {
    return PayeeLocationResponse(data: data ?? this.data);
  }

  PayeeLocationResponse copyWithWrapped(
      {Wrapped<PayeeLocationResponse$Data>? data}) {
    return PayeeLocationResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeLocation {
  PayeeLocation({
    required this.id,
    required this.payeeId,
    required this.latitude,
    required this.longitude,
    required this.deleted,
  });

  factory PayeeLocation.fromJson(Map<String, dynamic> json) =>
      _$PayeeLocationFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'payee_id')
  final String payeeId;
  @JsonKey(name: 'latitude')
  final String latitude;
  @JsonKey(name: 'longitude')
  final String longitude;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$PayeeLocationFromJson;
  static const toJsonFactory = _$PayeeLocationToJson;
  Map<String, dynamic> toJson() => _$PayeeLocationToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeLocation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $PayeeLocationExtension on PayeeLocation {
  PayeeLocation copyWith(
      {String? id,
      String? payeeId,
      String? latitude,
      String? longitude,
      bool? deleted}) {
    return PayeeLocation(
        id: id ?? this.id,
        payeeId: payeeId ?? this.payeeId,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        deleted: deleted ?? this.deleted);
  }

  PayeeLocation copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? payeeId,
      Wrapped<String>? latitude,
      Wrapped<String>? longitude,
      Wrapped<bool>? deleted}) {
    return PayeeLocation(
        id: (id != null ? id.value : this.id),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        latitude: (latitude != null ? latitude.value : this.latitude),
        longitude: (longitude != null ? longitude.value : this.longitude),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsResponse {
  TransactionsResponse({
    required this.data,
  });

  factory TransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsResponseFromJson(json);

  @JsonKey(name: 'data')
  final TransactionsResponse$Data data;
  static const fromJsonFactory = _$TransactionsResponseFromJson;
  static const toJsonFactory = _$TransactionsResponseToJson;
  Map<String, dynamic> toJson() => _$TransactionsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $TransactionsResponseExtension on TransactionsResponse {
  TransactionsResponse copyWith({TransactionsResponse$Data? data}) {
    return TransactionsResponse(data: data ?? this.data);
  }

  TransactionsResponse copyWithWrapped(
      {Wrapped<TransactionsResponse$Data>? data}) {
    return TransactionsResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class HybridTransactionsResponse {
  HybridTransactionsResponse({
    required this.data,
  });

  factory HybridTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$HybridTransactionsResponseFromJson(json);

  @JsonKey(name: 'data')
  final HybridTransactionsResponse$Data data;
  static const fromJsonFactory = _$HybridTransactionsResponseFromJson;
  static const toJsonFactory = _$HybridTransactionsResponseToJson;
  Map<String, dynamic> toJson() => _$HybridTransactionsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HybridTransactionsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $HybridTransactionsResponseExtension on HybridTransactionsResponse {
  HybridTransactionsResponse copyWith({HybridTransactionsResponse$Data? data}) {
    return HybridTransactionsResponse(data: data ?? this.data);
  }

  HybridTransactionsResponse copyWithWrapped(
      {Wrapped<HybridTransactionsResponse$Data>? data}) {
    return HybridTransactionsResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class PutTransactionWrapper {
  PutTransactionWrapper({
    required this.transaction,
  });

  factory PutTransactionWrapper.fromJson(Map<String, dynamic> json) =>
      _$PutTransactionWrapperFromJson(json);

  @JsonKey(name: 'transaction')
  final SaveTransaction transaction;
  static const fromJsonFactory = _$PutTransactionWrapperFromJson;
  static const toJsonFactory = _$PutTransactionWrapperToJson;
  Map<String, dynamic> toJson() => _$PutTransactionWrapperToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PutTransactionWrapper &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transaction) ^ runtimeType.hashCode;
}

extension $PutTransactionWrapperExtension on PutTransactionWrapper {
  PutTransactionWrapper copyWith({SaveTransaction? transaction}) {
    return PutTransactionWrapper(transaction: transaction ?? this.transaction);
  }

  PutTransactionWrapper copyWithWrapped(
      {Wrapped<SaveTransaction>? transaction}) {
    return PutTransactionWrapper(
        transaction:
            (transaction != null ? transaction.value : this.transaction));
  }
}

@JsonSerializable(explicitToJson: true)
class PostTransactionsWrapper {
  PostTransactionsWrapper({
    this.transaction,
    this.transactions,
  });

  factory PostTransactionsWrapper.fromJson(Map<String, dynamic> json) =>
      _$PostTransactionsWrapperFromJson(json);

  @JsonKey(name: 'transaction')
  final SaveTransaction? transaction;
  @JsonKey(name: 'transactions', defaultValue: <SaveTransaction>[])
  final List<SaveTransaction>? transactions;
  static const fromJsonFactory = _$PostTransactionsWrapperFromJson;
  static const toJsonFactory = _$PostTransactionsWrapperToJson;
  Map<String, dynamic> toJson() => _$PostTransactionsWrapperToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostTransactionsWrapper &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transaction) ^
      const DeepCollectionEquality().hash(transactions) ^
      runtimeType.hashCode;
}

extension $PostTransactionsWrapperExtension on PostTransactionsWrapper {
  PostTransactionsWrapper copyWith(
      {SaveTransaction? transaction, List<SaveTransaction>? transactions}) {
    return PostTransactionsWrapper(
        transaction: transaction ?? this.transaction,
        transactions: transactions ?? this.transactions);
  }

  PostTransactionsWrapper copyWithWrapped(
      {Wrapped<SaveTransaction?>? transaction,
      Wrapped<List<SaveTransaction>?>? transactions}) {
    return PostTransactionsWrapper(
        transaction:
            (transaction != null ? transaction.value : this.transaction),
        transactions:
            (transactions != null ? transactions.value : this.transactions));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveTransaction {
  SaveTransaction({
    required this.accountId,
    required this.date,
    required this.amount,
    this.payeeId,
    this.payeeName,
    this.categoryId,
    this.memo,
    this.cleared,
    this.approved,
    this.flagColor,
    this.importId,
    this.subtransactions,
  });

  factory SaveTransaction.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionFromJson(json);

  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: saveTransactionClearedToJson,
    fromJson: saveTransactionClearedFromJson,
  )
  final enums.SaveTransactionCleared? cleared;
  @JsonKey(name: 'approved')
  final bool? approved;
  @JsonKey(
    name: 'flag_color',
    toJson: saveTransactionFlagColorToJson,
    fromJson: saveTransactionFlagColorFromJson,
  )
  final enums.SaveTransactionFlagColor? flagColor;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'subtransactions', defaultValue: <SaveSubTransaction>[])
  final List<SaveSubTransaction>? subtransactions;
  static const fromJsonFactory = _$SaveTransactionFromJson;
  static const toJsonFactory = _$SaveTransactionToJson;
  Map<String, dynamic> toJson() => _$SaveTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransaction &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      runtimeType.hashCode;
}

extension $SaveTransactionExtension on SaveTransaction {
  SaveTransaction copyWith(
      {String? accountId,
      DateTime? date,
      num? amount,
      String? payeeId,
      String? payeeName,
      String? categoryId,
      String? memo,
      enums.SaveTransactionCleared? cleared,
      bool? approved,
      enums.SaveTransactionFlagColor? flagColor,
      String? importId,
      List<SaveSubTransaction>? subtransactions}) {
    return SaveTransaction(
        accountId: accountId ?? this.accountId,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        payeeId: payeeId ?? this.payeeId,
        payeeName: payeeName ?? this.payeeName,
        categoryId: categoryId ?? this.categoryId,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        importId: importId ?? this.importId,
        subtransactions: subtransactions ?? this.subtransactions);
  }

  SaveTransaction copyWithWrapped(
      {Wrapped<String>? accountId,
      Wrapped<DateTime>? date,
      Wrapped<num>? amount,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? memo,
      Wrapped<enums.SaveTransactionCleared?>? cleared,
      Wrapped<bool?>? approved,
      Wrapped<enums.SaveTransactionFlagColor?>? flagColor,
      Wrapped<String?>? importId,
      Wrapped<List<SaveSubTransaction>?>? subtransactions}) {
    return SaveTransaction(
        accountId: (accountId != null ? accountId.value : this.accountId),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        importId: (importId != null ? importId.value : this.importId),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchTransactionsWrapper {
  PatchTransactionsWrapper({
    required this.transactions,
  });

  factory PatchTransactionsWrapper.fromJson(Map<String, dynamic> json) =>
      _$PatchTransactionsWrapperFromJson(json);

  @JsonKey(name: 'transactions', defaultValue: <SaveTransactionWithId>[])
  final List<SaveTransactionWithId> transactions;
  static const fromJsonFactory = _$PatchTransactionsWrapperFromJson;
  static const toJsonFactory = _$PatchTransactionsWrapperToJson;
  Map<String, dynamic> toJson() => _$PatchTransactionsWrapperToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchTransactionsWrapper &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactions) ^ runtimeType.hashCode;
}

extension $PatchTransactionsWrapperExtension on PatchTransactionsWrapper {
  PatchTransactionsWrapper copyWith(
      {List<SaveTransactionWithId>? transactions}) {
    return PatchTransactionsWrapper(
        transactions: transactions ?? this.transactions);
  }

  PatchTransactionsWrapper copyWithWrapped(
      {Wrapped<List<SaveTransactionWithId>>? transactions}) {
    return PatchTransactionsWrapper(
        transactions:
            (transactions != null ? transactions.value : this.transactions));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveTransactionWithId {
  SaveTransactionWithId({
    this.id,
    this.accountId,
    this.date,
    this.amount,
    this.payeeId,
    this.payeeName,
    this.categoryId,
    this.memo,
    this.cleared,
    this.approved,
    this.flagColor,
    this.importId,
    this.subtransactions,
  });

  factory SaveTransactionWithId.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionWithIdFromJson(json);

  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'account_id')
  final String? accountId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime? date;
  @JsonKey(name: 'amount')
  final num? amount;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: saveTransactionWithIdClearedToJson,
    fromJson: saveTransactionWithIdClearedFromJson,
  )
  final enums.SaveTransactionWithIdCleared? cleared;
  @JsonKey(name: 'approved')
  final bool? approved;
  @JsonKey(
    name: 'flag_color',
    toJson: saveTransactionWithIdFlagColorToJson,
    fromJson: saveTransactionWithIdFlagColorFromJson,
  )
  final enums.SaveTransactionWithIdFlagColor? flagColor;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'subtransactions', defaultValue: <SaveSubTransaction>[])
  final List<SaveSubTransaction>? subtransactions;
  static const fromJsonFactory = _$SaveTransactionWithIdFromJson;
  static const toJsonFactory = _$SaveTransactionWithIdToJson;
  Map<String, dynamic> toJson() => _$SaveTransactionWithIdToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransactionWithId &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      runtimeType.hashCode;
}

extension $SaveTransactionWithIdExtension on SaveTransactionWithId {
  SaveTransactionWithId copyWith(
      {String? id,
      String? accountId,
      DateTime? date,
      num? amount,
      String? payeeId,
      String? payeeName,
      String? categoryId,
      String? memo,
      enums.SaveTransactionWithIdCleared? cleared,
      bool? approved,
      enums.SaveTransactionWithIdFlagColor? flagColor,
      String? importId,
      List<SaveSubTransaction>? subtransactions}) {
    return SaveTransactionWithId(
        id: id ?? this.id,
        accountId: accountId ?? this.accountId,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        payeeId: payeeId ?? this.payeeId,
        payeeName: payeeName ?? this.payeeName,
        categoryId: categoryId ?? this.categoryId,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        importId: importId ?? this.importId,
        subtransactions: subtransactions ?? this.subtransactions);
  }

  SaveTransactionWithId copyWithWrapped(
      {Wrapped<String?>? id,
      Wrapped<String?>? accountId,
      Wrapped<DateTime?>? date,
      Wrapped<num?>? amount,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? memo,
      Wrapped<enums.SaveTransactionWithIdCleared?>? cleared,
      Wrapped<bool?>? approved,
      Wrapped<enums.SaveTransactionWithIdFlagColor?>? flagColor,
      Wrapped<String?>? importId,
      Wrapped<List<SaveSubTransaction>?>? subtransactions}) {
    return SaveTransactionWithId(
        id: (id != null ? id.value : this.id),
        accountId: (accountId != null ? accountId.value : this.accountId),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        importId: (importId != null ? importId.value : this.importId),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveTransactionWithOptionalFields {
  SaveTransactionWithOptionalFields({
    this.accountId,
    this.date,
    this.amount,
    this.payeeId,
    this.payeeName,
    this.categoryId,
    this.memo,
    this.cleared,
    this.approved,
    this.flagColor,
    this.importId,
    this.subtransactions,
  });

  factory SaveTransactionWithOptionalFields.fromJson(
          Map<String, dynamic> json) =>
      _$SaveTransactionWithOptionalFieldsFromJson(json);

  @JsonKey(name: 'account_id')
  final String? accountId;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime? date;
  @JsonKey(name: 'amount')
  final num? amount;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: saveTransactionWithOptionalFieldsClearedToJson,
    fromJson: saveTransactionWithOptionalFieldsClearedFromJson,
  )
  final enums.SaveTransactionWithOptionalFieldsCleared? cleared;
  @JsonKey(name: 'approved')
  final bool? approved;
  @JsonKey(
    name: 'flag_color',
    toJson: saveTransactionWithOptionalFieldsFlagColorToJson,
    fromJson: saveTransactionWithOptionalFieldsFlagColorFromJson,
  )
  final enums.SaveTransactionWithOptionalFieldsFlagColor? flagColor;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'subtransactions', defaultValue: <SaveSubTransaction>[])
  final List<SaveSubTransaction>? subtransactions;
  static const fromJsonFactory = _$SaveTransactionWithOptionalFieldsFromJson;
  static const toJsonFactory = _$SaveTransactionWithOptionalFieldsToJson;
  Map<String, dynamic> toJson() =>
      _$SaveTransactionWithOptionalFieldsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransactionWithOptionalFields &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      runtimeType.hashCode;
}

extension $SaveTransactionWithOptionalFieldsExtension
    on SaveTransactionWithOptionalFields {
  SaveTransactionWithOptionalFields copyWith(
      {String? accountId,
      DateTime? date,
      num? amount,
      String? payeeId,
      String? payeeName,
      String? categoryId,
      String? memo,
      enums.SaveTransactionWithOptionalFieldsCleared? cleared,
      bool? approved,
      enums.SaveTransactionWithOptionalFieldsFlagColor? flagColor,
      String? importId,
      List<SaveSubTransaction>? subtransactions}) {
    return SaveTransactionWithOptionalFields(
        accountId: accountId ?? this.accountId,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        payeeId: payeeId ?? this.payeeId,
        payeeName: payeeName ?? this.payeeName,
        categoryId: categoryId ?? this.categoryId,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        importId: importId ?? this.importId,
        subtransactions: subtransactions ?? this.subtransactions);
  }

  SaveTransactionWithOptionalFields copyWithWrapped(
      {Wrapped<String?>? accountId,
      Wrapped<DateTime?>? date,
      Wrapped<num?>? amount,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? memo,
      Wrapped<enums.SaveTransactionWithOptionalFieldsCleared?>? cleared,
      Wrapped<bool?>? approved,
      Wrapped<enums.SaveTransactionWithOptionalFieldsFlagColor?>? flagColor,
      Wrapped<String?>? importId,
      Wrapped<List<SaveSubTransaction>?>? subtransactions}) {
    return SaveTransactionWithOptionalFields(
        accountId: (accountId != null ? accountId.value : this.accountId),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        importId: (importId != null ? importId.value : this.importId),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveSubTransaction {
  SaveSubTransaction({
    required this.amount,
    this.payeeId,
    this.payeeName,
    this.categoryId,
    this.memo,
  });

  factory SaveSubTransaction.fromJson(Map<String, dynamic> json) =>
      _$SaveSubTransactionFromJson(json);

  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'memo')
  final String? memo;
  static const fromJsonFactory = _$SaveSubTransactionFromJson;
  static const toJsonFactory = _$SaveSubTransactionToJson;
  Map<String, dynamic> toJson() => _$SaveSubTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveSubTransaction &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(memo) ^
      runtimeType.hashCode;
}

extension $SaveSubTransactionExtension on SaveSubTransaction {
  SaveSubTransaction copyWith(
      {num? amount,
      String? payeeId,
      String? payeeName,
      String? categoryId,
      String? memo}) {
    return SaveSubTransaction(
        amount: amount ?? this.amount,
        payeeId: payeeId ?? this.payeeId,
        payeeName: payeeName ?? this.payeeName,
        categoryId: categoryId ?? this.categoryId,
        memo: memo ?? this.memo);
  }

  SaveSubTransaction copyWithWrapped(
      {Wrapped<num>? amount,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? memo}) {
    return SaveSubTransaction(
        amount: (amount != null ? amount.value : this.amount),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        memo: (memo != null ? memo.value : this.memo));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveTransactionsResponse {
  SaveTransactionsResponse({
    required this.data,
  });

  factory SaveTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionsResponseFromJson(json);

  @JsonKey(name: 'data')
  final SaveTransactionsResponse$Data data;
  static const fromJsonFactory = _$SaveTransactionsResponseFromJson;
  static const toJsonFactory = _$SaveTransactionsResponseToJson;
  Map<String, dynamic> toJson() => _$SaveTransactionsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransactionsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $SaveTransactionsResponseExtension on SaveTransactionsResponse {
  SaveTransactionsResponse copyWith({SaveTransactionsResponse$Data? data}) {
    return SaveTransactionsResponse(data: data ?? this.data);
  }

  SaveTransactionsResponse copyWithWrapped(
      {Wrapped<SaveTransactionsResponse$Data>? data}) {
    return SaveTransactionsResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionResponse {
  TransactionResponse({
    required this.data,
  });

  factory TransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseFromJson(json);

  @JsonKey(name: 'data')
  final TransactionResponse$Data data;
  static const fromJsonFactory = _$TransactionResponseFromJson;
  static const toJsonFactory = _$TransactionResponseToJson;
  Map<String, dynamic> toJson() => _$TransactionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $TransactionResponseExtension on TransactionResponse {
  TransactionResponse copyWith({TransactionResponse$Data? data}) {
    return TransactionResponse(data: data ?? this.data);
  }

  TransactionResponse copyWithWrapped(
      {Wrapped<TransactionResponse$Data>? data}) {
    return TransactionResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionSummary {
  TransactionSummary({
    required this.id,
    required this.date,
    required this.amount,
    this.memo,
    required this.cleared,
    required this.approved,
    this.flagColor,
    required this.accountId,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    this.transferTransactionId,
    this.matchedTransactionId,
    this.importId,
    this.importPayeeName,
    this.importPayeeNameOriginal,
    required this.deleted,
  });

  factory TransactionSummary.fromJson(Map<String, dynamic> json) =>
      _$TransactionSummaryFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: transactionSummaryClearedToJson,
    fromJson: transactionSummaryClearedFromJson,
  )
  final enums.TransactionSummaryCleared cleared;
  @JsonKey(name: 'approved')
  final bool approved;
  @JsonKey(
    name: 'flag_color',
    toJson: transactionSummaryFlagColorToJson,
    fromJson: transactionSummaryFlagColorFromJson,
  )
  final enums.TransactionSummaryFlagColor? flagColor;
  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'transfer_transaction_id')
  final String? transferTransactionId;
  @JsonKey(name: 'matched_transaction_id')
  final String? matchedTransactionId;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'import_payee_name')
  final String? importPayeeName;
  @JsonKey(name: 'import_payee_name_original')
  final String? importPayeeNameOriginal;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$TransactionSummaryFromJson;
  static const toJsonFactory = _$TransactionSummaryToJson;
  Map<String, dynamic> toJson() => _$TransactionSummaryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionSummary &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.transferTransactionId, transferTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.transferTransactionId, transferTransactionId)) &&
            (identical(other.matchedTransactionId, matchedTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.matchedTransactionId, matchedTransactionId)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.importPayeeName, importPayeeName) ||
                const DeepCollectionEquality()
                    .equals(other.importPayeeName, importPayeeName)) &&
            (identical(
                    other.importPayeeNameOriginal, importPayeeNameOriginal) ||
                const DeepCollectionEquality().equals(
                    other.importPayeeNameOriginal, importPayeeNameOriginal)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(transferTransactionId) ^
      const DeepCollectionEquality().hash(matchedTransactionId) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(importPayeeName) ^
      const DeepCollectionEquality().hash(importPayeeNameOriginal) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $TransactionSummaryExtension on TransactionSummary {
  TransactionSummary copyWith(
      {String? id,
      DateTime? date,
      num? amount,
      String? memo,
      enums.TransactionSummaryCleared? cleared,
      bool? approved,
      enums.TransactionSummaryFlagColor? flagColor,
      String? accountId,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      String? transferTransactionId,
      String? matchedTransactionId,
      String? importId,
      String? importPayeeName,
      String? importPayeeNameOriginal,
      bool? deleted}) {
    return TransactionSummary(
        id: id ?? this.id,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        accountId: accountId ?? this.accountId,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        matchedTransactionId: matchedTransactionId ?? this.matchedTransactionId,
        importId: importId ?? this.importId,
        importPayeeName: importPayeeName ?? this.importPayeeName,
        importPayeeNameOriginal:
            importPayeeNameOriginal ?? this.importPayeeNameOriginal,
        deleted: deleted ?? this.deleted);
  }

  TransactionSummary copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? date,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<enums.TransactionSummaryCleared>? cleared,
      Wrapped<bool>? approved,
      Wrapped<enums.TransactionSummaryFlagColor?>? flagColor,
      Wrapped<String>? accountId,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<String?>? transferTransactionId,
      Wrapped<String?>? matchedTransactionId,
      Wrapped<String?>? importId,
      Wrapped<String?>? importPayeeName,
      Wrapped<String?>? importPayeeNameOriginal,
      Wrapped<bool>? deleted}) {
    return TransactionSummary(
        id: (id != null ? id.value : this.id),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        accountId: (accountId != null ? accountId.value : this.accountId),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        transferTransactionId: (transferTransactionId != null
            ? transferTransactionId.value
            : this.transferTransactionId),
        matchedTransactionId: (matchedTransactionId != null
            ? matchedTransactionId.value
            : this.matchedTransactionId),
        importId: (importId != null ? importId.value : this.importId),
        importPayeeName: (importPayeeName != null
            ? importPayeeName.value
            : this.importPayeeName),
        importPayeeNameOriginal: (importPayeeNameOriginal != null
            ? importPayeeNameOriginal.value
            : this.importPayeeNameOriginal),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionDetail {
  TransactionDetail({
    required this.accountName,
    this.payeeName,
    this.categoryName,
    required this.subtransactions,
    required this.id,
    required this.date,
    required this.amount,
    this.memo,
    required this.cleared,
    required this.approved,
    this.flagColor,
    required this.accountId,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    this.transferTransactionId,
    this.matchedTransactionId,
    this.importId,
    this.importPayeeName,
    this.importPayeeNameOriginal,
    required this.deleted,
  });

  factory TransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$TransactionDetailFromJson(json);

  @JsonKey(name: 'account_name')
  final String accountName;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @JsonKey(name: 'subtransactions', defaultValue: <SubTransaction>[])
  final List<SubTransaction> subtransactions;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: transactionDetailClearedToJson,
    fromJson: transactionDetailClearedFromJson,
  )
  final enums.TransactionDetailCleared cleared;
  @JsonKey(name: 'approved')
  final bool approved;
  @JsonKey(
    name: 'flag_color',
    toJson: transactionDetailFlagColorToJson,
    fromJson: transactionDetailFlagColorFromJson,
  )
  final enums.TransactionDetailFlagColor? flagColor;
  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'transfer_transaction_id')
  final String? transferTransactionId;
  @JsonKey(name: 'matched_transaction_id')
  final String? matchedTransactionId;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'import_payee_name')
  final String? importPayeeName;
  @JsonKey(name: 'import_payee_name_original')
  final String? importPayeeNameOriginal;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$TransactionDetailFromJson;
  static const toJsonFactory = _$TransactionDetailToJson;
  Map<String, dynamic> toJson() => _$TransactionDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionDetail &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.transferTransactionId, transferTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.transferTransactionId, transferTransactionId)) &&
            (identical(other.matchedTransactionId, matchedTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.matchedTransactionId, matchedTransactionId)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.importPayeeName, importPayeeName) ||
                const DeepCollectionEquality()
                    .equals(other.importPayeeName, importPayeeName)) &&
            (identical(
                    other.importPayeeNameOriginal, importPayeeNameOriginal) ||
                const DeepCollectionEquality().equals(
                    other.importPayeeNameOriginal, importPayeeNameOriginal)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(transferTransactionId) ^
      const DeepCollectionEquality().hash(matchedTransactionId) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(importPayeeName) ^
      const DeepCollectionEquality().hash(importPayeeNameOriginal) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $TransactionDetailExtension on TransactionDetail {
  TransactionDetail copyWith(
      {String? accountName,
      String? payeeName,
      String? categoryName,
      List<SubTransaction>? subtransactions,
      String? id,
      DateTime? date,
      num? amount,
      String? memo,
      enums.TransactionDetailCleared? cleared,
      bool? approved,
      enums.TransactionDetailFlagColor? flagColor,
      String? accountId,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      String? transferTransactionId,
      String? matchedTransactionId,
      String? importId,
      String? importPayeeName,
      String? importPayeeNameOriginal,
      bool? deleted}) {
    return TransactionDetail(
        accountName: accountName ?? this.accountName,
        payeeName: payeeName ?? this.payeeName,
        categoryName: categoryName ?? this.categoryName,
        subtransactions: subtransactions ?? this.subtransactions,
        id: id ?? this.id,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        accountId: accountId ?? this.accountId,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        matchedTransactionId: matchedTransactionId ?? this.matchedTransactionId,
        importId: importId ?? this.importId,
        importPayeeName: importPayeeName ?? this.importPayeeName,
        importPayeeNameOriginal:
            importPayeeNameOriginal ?? this.importPayeeNameOriginal,
        deleted: deleted ?? this.deleted);
  }

  TransactionDetail copyWithWrapped(
      {Wrapped<String>? accountName,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryName,
      Wrapped<List<SubTransaction>>? subtransactions,
      Wrapped<String>? id,
      Wrapped<DateTime>? date,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<enums.TransactionDetailCleared>? cleared,
      Wrapped<bool>? approved,
      Wrapped<enums.TransactionDetailFlagColor?>? flagColor,
      Wrapped<String>? accountId,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<String?>? transferTransactionId,
      Wrapped<String?>? matchedTransactionId,
      Wrapped<String?>? importId,
      Wrapped<String?>? importPayeeName,
      Wrapped<String?>? importPayeeNameOriginal,
      Wrapped<bool>? deleted}) {
    return TransactionDetail(
        accountName:
            (accountName != null ? accountName.value : this.accountName),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryName:
            (categoryName != null ? categoryName.value : this.categoryName),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions),
        id: (id != null ? id.value : this.id),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        accountId: (accountId != null ? accountId.value : this.accountId),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        transferTransactionId: (transferTransactionId != null
            ? transferTransactionId.value
            : this.transferTransactionId),
        matchedTransactionId: (matchedTransactionId != null
            ? matchedTransactionId.value
            : this.matchedTransactionId),
        importId: (importId != null ? importId.value : this.importId),
        importPayeeName: (importPayeeName != null
            ? importPayeeName.value
            : this.importPayeeName),
        importPayeeNameOriginal: (importPayeeNameOriginal != null
            ? importPayeeNameOriginal.value
            : this.importPayeeNameOriginal),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class HybridTransaction {
  HybridTransaction({
    required this.type,
    this.parentTransactionId,
    required this.accountName,
    this.payeeName,
    this.categoryName,
    required this.id,
    required this.date,
    required this.amount,
    this.memo,
    required this.cleared,
    required this.approved,
    this.flagColor,
    required this.accountId,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    this.transferTransactionId,
    this.matchedTransactionId,
    this.importId,
    this.importPayeeName,
    this.importPayeeNameOriginal,
    required this.deleted,
  });

  factory HybridTransaction.fromJson(Map<String, dynamic> json) =>
      _$HybridTransactionFromJson(json);

  @JsonKey(
    name: 'type',
    toJson: hybridTransactionTypeToJson,
    fromJson: hybridTransactionTypeFromJson,
  )
  final enums.HybridTransactionType type;
  @JsonKey(name: 'parent_transaction_id')
  final String? parentTransactionId;
  @JsonKey(name: 'account_name')
  final String accountName;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'date', toJson: _dateToJson)
  final DateTime date;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'cleared',
    toJson: hybridTransactionClearedToJson,
    fromJson: hybridTransactionClearedFromJson,
  )
  final enums.HybridTransactionCleared cleared;
  @JsonKey(name: 'approved')
  final bool approved;
  @JsonKey(
    name: 'flag_color',
    toJson: hybridTransactionFlagColorToJson,
    fromJson: hybridTransactionFlagColorFromJson,
  )
  final enums.HybridTransactionFlagColor? flagColor;
  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'transfer_transaction_id')
  final String? transferTransactionId;
  @JsonKey(name: 'matched_transaction_id')
  final String? matchedTransactionId;
  @JsonKey(name: 'import_id')
  final String? importId;
  @JsonKey(name: 'import_payee_name')
  final String? importPayeeName;
  @JsonKey(name: 'import_payee_name_original')
  final String? importPayeeNameOriginal;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$HybridTransactionFromJson;
  static const toJsonFactory = _$HybridTransactionToJson;
  Map<String, dynamic> toJson() => _$HybridTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HybridTransaction &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.parentTransactionId, parentTransactionId) ||
                const DeepCollectionEquality()
                    .equals(other.parentTransactionId, parentTransactionId)) &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.cleared, cleared) ||
                const DeepCollectionEquality()
                    .equals(other.cleared, cleared)) &&
            (identical(other.approved, approved) ||
                const DeepCollectionEquality()
                    .equals(other.approved, approved)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.transferTransactionId, transferTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.transferTransactionId, transferTransactionId)) &&
            (identical(other.matchedTransactionId, matchedTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.matchedTransactionId, matchedTransactionId)) &&
            (identical(other.importId, importId) ||
                const DeepCollectionEquality()
                    .equals(other.importId, importId)) &&
            (identical(other.importPayeeName, importPayeeName) ||
                const DeepCollectionEquality()
                    .equals(other.importPayeeName, importPayeeName)) &&
            (identical(
                    other.importPayeeNameOriginal, importPayeeNameOriginal) ||
                const DeepCollectionEquality().equals(
                    other.importPayeeNameOriginal, importPayeeNameOriginal)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(parentTransactionId) ^
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(cleared) ^
      const DeepCollectionEquality().hash(approved) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(transferTransactionId) ^
      const DeepCollectionEquality().hash(matchedTransactionId) ^
      const DeepCollectionEquality().hash(importId) ^
      const DeepCollectionEquality().hash(importPayeeName) ^
      const DeepCollectionEquality().hash(importPayeeNameOriginal) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $HybridTransactionExtension on HybridTransaction {
  HybridTransaction copyWith(
      {enums.HybridTransactionType? type,
      String? parentTransactionId,
      String? accountName,
      String? payeeName,
      String? categoryName,
      String? id,
      DateTime? date,
      num? amount,
      String? memo,
      enums.HybridTransactionCleared? cleared,
      bool? approved,
      enums.HybridTransactionFlagColor? flagColor,
      String? accountId,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      String? transferTransactionId,
      String? matchedTransactionId,
      String? importId,
      String? importPayeeName,
      String? importPayeeNameOriginal,
      bool? deleted}) {
    return HybridTransaction(
        type: type ?? this.type,
        parentTransactionId: parentTransactionId ?? this.parentTransactionId,
        accountName: accountName ?? this.accountName,
        payeeName: payeeName ?? this.payeeName,
        categoryName: categoryName ?? this.categoryName,
        id: id ?? this.id,
        date: date ?? this.date,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        cleared: cleared ?? this.cleared,
        approved: approved ?? this.approved,
        flagColor: flagColor ?? this.flagColor,
        accountId: accountId ?? this.accountId,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        matchedTransactionId: matchedTransactionId ?? this.matchedTransactionId,
        importId: importId ?? this.importId,
        importPayeeName: importPayeeName ?? this.importPayeeName,
        importPayeeNameOriginal:
            importPayeeNameOriginal ?? this.importPayeeNameOriginal,
        deleted: deleted ?? this.deleted);
  }

  HybridTransaction copyWithWrapped(
      {Wrapped<enums.HybridTransactionType>? type,
      Wrapped<String?>? parentTransactionId,
      Wrapped<String>? accountName,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryName,
      Wrapped<String>? id,
      Wrapped<DateTime>? date,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<enums.HybridTransactionCleared>? cleared,
      Wrapped<bool>? approved,
      Wrapped<enums.HybridTransactionFlagColor?>? flagColor,
      Wrapped<String>? accountId,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<String?>? transferTransactionId,
      Wrapped<String?>? matchedTransactionId,
      Wrapped<String?>? importId,
      Wrapped<String?>? importPayeeName,
      Wrapped<String?>? importPayeeNameOriginal,
      Wrapped<bool>? deleted}) {
    return HybridTransaction(
        type: (type != null ? type.value : this.type),
        parentTransactionId: (parentTransactionId != null
            ? parentTransactionId.value
            : this.parentTransactionId),
        accountName:
            (accountName != null ? accountName.value : this.accountName),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryName:
            (categoryName != null ? categoryName.value : this.categoryName),
        id: (id != null ? id.value : this.id),
        date: (date != null ? date.value : this.date),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        cleared: (cleared != null ? cleared.value : this.cleared),
        approved: (approved != null ? approved.value : this.approved),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        accountId: (accountId != null ? accountId.value : this.accountId),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        transferTransactionId: (transferTransactionId != null
            ? transferTransactionId.value
            : this.transferTransactionId),
        matchedTransactionId: (matchedTransactionId != null
            ? matchedTransactionId.value
            : this.matchedTransactionId),
        importId: (importId != null ? importId.value : this.importId),
        importPayeeName: (importPayeeName != null
            ? importPayeeName.value
            : this.importPayeeName),
        importPayeeNameOriginal: (importPayeeNameOriginal != null
            ? importPayeeNameOriginal.value
            : this.importPayeeNameOriginal),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class PatchMonthCategoryWrapper {
  PatchMonthCategoryWrapper({
    required this.category,
  });

  factory PatchMonthCategoryWrapper.fromJson(Map<String, dynamic> json) =>
      _$PatchMonthCategoryWrapperFromJson(json);

  @JsonKey(name: 'category')
  final SaveMonthCategory category;
  static const fromJsonFactory = _$PatchMonthCategoryWrapperFromJson;
  static const toJsonFactory = _$PatchMonthCategoryWrapperToJson;
  Map<String, dynamic> toJson() => _$PatchMonthCategoryWrapperToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PatchMonthCategoryWrapper &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $PatchMonthCategoryWrapperExtension on PatchMonthCategoryWrapper {
  PatchMonthCategoryWrapper copyWith({SaveMonthCategory? category}) {
    return PatchMonthCategoryWrapper(category: category ?? this.category);
  }

  PatchMonthCategoryWrapper copyWithWrapped(
      {Wrapped<SaveMonthCategory>? category}) {
    return PatchMonthCategoryWrapper(
        category: (category != null ? category.value : this.category));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveMonthCategory {
  SaveMonthCategory({
    required this.budgeted,
  });

  factory SaveMonthCategory.fromJson(Map<String, dynamic> json) =>
      _$SaveMonthCategoryFromJson(json);

  @JsonKey(name: 'budgeted')
  final num budgeted;
  static const fromJsonFactory = _$SaveMonthCategoryFromJson;
  static const toJsonFactory = _$SaveMonthCategoryToJson;
  Map<String, dynamic> toJson() => _$SaveMonthCategoryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveMonthCategory &&
            (identical(other.budgeted, budgeted) ||
                const DeepCollectionEquality()
                    .equals(other.budgeted, budgeted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(budgeted) ^ runtimeType.hashCode;
}

extension $SaveMonthCategoryExtension on SaveMonthCategory {
  SaveMonthCategory copyWith({num? budgeted}) {
    return SaveMonthCategory(budgeted: budgeted ?? this.budgeted);
  }

  SaveMonthCategory copyWithWrapped({Wrapped<num>? budgeted}) {
    return SaveMonthCategory(
        budgeted: (budgeted != null ? budgeted.value : this.budgeted));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsImportResponse {
  TransactionsImportResponse({
    required this.data,
  });

  factory TransactionsImportResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionsImportResponseFromJson(json);

  @JsonKey(name: 'data')
  final TransactionsImportResponse$Data data;
  static const fromJsonFactory = _$TransactionsImportResponseFromJson;
  static const toJsonFactory = _$TransactionsImportResponseToJson;
  Map<String, dynamic> toJson() => _$TransactionsImportResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsImportResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $TransactionsImportResponseExtension on TransactionsImportResponse {
  TransactionsImportResponse copyWith({TransactionsImportResponse$Data? data}) {
    return TransactionsImportResponse(data: data ?? this.data);
  }

  TransactionsImportResponse copyWithWrapped(
      {Wrapped<TransactionsImportResponse$Data>? data}) {
    return TransactionsImportResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class BulkResponse {
  BulkResponse({
    required this.data,
  });

  factory BulkResponse.fromJson(Map<String, dynamic> json) =>
      _$BulkResponseFromJson(json);

  @JsonKey(name: 'data')
  final BulkResponse$Data data;
  static const fromJsonFactory = _$BulkResponseFromJson;
  static const toJsonFactory = _$BulkResponseToJson;
  Map<String, dynamic> toJson() => _$BulkResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulkResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $BulkResponseExtension on BulkResponse {
  BulkResponse copyWith({BulkResponse$Data? data}) {
    return BulkResponse(data: data ?? this.data);
  }

  BulkResponse copyWithWrapped({Wrapped<BulkResponse$Data>? data}) {
    return BulkResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class BulkTransactions {
  BulkTransactions({
    required this.transactions,
  });

  factory BulkTransactions.fromJson(Map<String, dynamic> json) =>
      _$BulkTransactionsFromJson(json);

  @JsonKey(name: 'transactions', defaultValue: <SaveTransaction>[])
  final List<SaveTransaction> transactions;
  static const fromJsonFactory = _$BulkTransactionsFromJson;
  static const toJsonFactory = _$BulkTransactionsToJson;
  Map<String, dynamic> toJson() => _$BulkTransactionsToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulkTransactions &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactions) ^ runtimeType.hashCode;
}

extension $BulkTransactionsExtension on BulkTransactions {
  BulkTransactions copyWith({List<SaveTransaction>? transactions}) {
    return BulkTransactions(transactions: transactions ?? this.transactions);
  }

  BulkTransactions copyWithWrapped(
      {Wrapped<List<SaveTransaction>>? transactions}) {
    return BulkTransactions(
        transactions:
            (transactions != null ? transactions.value : this.transactions));
  }
}

@JsonSerializable(explicitToJson: true)
class SubTransaction {
  SubTransaction({
    required this.id,
    required this.transactionId,
    required this.amount,
    this.memo,
    this.payeeId,
    this.payeeName,
    this.categoryId,
    this.categoryName,
    this.transferAccountId,
    this.transferTransactionId,
    required this.deleted,
  });

  factory SubTransaction.fromJson(Map<String, dynamic> json) =>
      _$SubTransactionFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'transaction_id')
  final String transactionId;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'transfer_transaction_id')
  final String? transferTransactionId;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$SubTransactionFromJson;
  static const toJsonFactory = _$SubTransactionToJson;
  Map<String, dynamic> toJson() => _$SubTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SubTransaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.transactionId, transactionId) ||
                const DeepCollectionEquality()
                    .equals(other.transactionId, transactionId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.transferTransactionId, transferTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.transferTransactionId, transferTransactionId)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(transactionId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(transferTransactionId) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $SubTransactionExtension on SubTransaction {
  SubTransaction copyWith(
      {String? id,
      String? transactionId,
      num? amount,
      String? memo,
      String? payeeId,
      String? payeeName,
      String? categoryId,
      String? categoryName,
      String? transferAccountId,
      String? transferTransactionId,
      bool? deleted}) {
    return SubTransaction(
        id: id ?? this.id,
        transactionId: transactionId ?? this.transactionId,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        payeeId: payeeId ?? this.payeeId,
        payeeName: payeeName ?? this.payeeName,
        categoryId: categoryId ?? this.categoryId,
        categoryName: categoryName ?? this.categoryName,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        transferTransactionId:
            transferTransactionId ?? this.transferTransactionId,
        deleted: deleted ?? this.deleted);
  }

  SubTransaction copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? transactionId,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? categoryName,
      Wrapped<String?>? transferAccountId,
      Wrapped<String?>? transferTransactionId,
      Wrapped<bool>? deleted}) {
    return SubTransaction(
        id: (id != null ? id.value : this.id),
        transactionId:
            (transactionId != null ? transactionId.value : this.transactionId),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        categoryName:
            (categoryName != null ? categoryName.value : this.categoryName),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        transferTransactionId: (transferTransactionId != null
            ? transferTransactionId.value
            : this.transferTransactionId),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionsResponse {
  ScheduledTransactionsResponse({
    required this.data,
  });

  factory ScheduledTransactionsResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTransactionsResponseFromJson(json);

  @JsonKey(name: 'data')
  final ScheduledTransactionsResponse$Data data;
  static const fromJsonFactory = _$ScheduledTransactionsResponseFromJson;
  static const toJsonFactory = _$ScheduledTransactionsResponseToJson;
  Map<String, dynamic> toJson() => _$ScheduledTransactionsResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionsResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ScheduledTransactionsResponseExtension
    on ScheduledTransactionsResponse {
  ScheduledTransactionsResponse copyWith(
      {ScheduledTransactionsResponse$Data? data}) {
    return ScheduledTransactionsResponse(data: data ?? this.data);
  }

  ScheduledTransactionsResponse copyWithWrapped(
      {Wrapped<ScheduledTransactionsResponse$Data>? data}) {
    return ScheduledTransactionsResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionResponse {
  ScheduledTransactionResponse({
    required this.data,
  });

  factory ScheduledTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTransactionResponseFromJson(json);

  @JsonKey(name: 'data')
  final ScheduledTransactionResponse$Data data;
  static const fromJsonFactory = _$ScheduledTransactionResponseFromJson;
  static const toJsonFactory = _$ScheduledTransactionResponseToJson;
  Map<String, dynamic> toJson() => _$ScheduledTransactionResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $ScheduledTransactionResponseExtension
    on ScheduledTransactionResponse {
  ScheduledTransactionResponse copyWith(
      {ScheduledTransactionResponse$Data? data}) {
    return ScheduledTransactionResponse(data: data ?? this.data);
  }

  ScheduledTransactionResponse copyWithWrapped(
      {Wrapped<ScheduledTransactionResponse$Data>? data}) {
    return ScheduledTransactionResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionSummary {
  ScheduledTransactionSummary({
    required this.id,
    required this.dateFirst,
    required this.dateNext,
    required this.frequency,
    required this.amount,
    this.memo,
    this.flagColor,
    required this.accountId,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    required this.deleted,
  });

  factory ScheduledTransactionSummary.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTransactionSummaryFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'date_first', toJson: _dateToJson)
  final DateTime dateFirst;
  @JsonKey(name: 'date_next', toJson: _dateToJson)
  final DateTime dateNext;
  @JsonKey(
    name: 'frequency',
    toJson: scheduledTransactionSummaryFrequencyToJson,
    fromJson: scheduledTransactionSummaryFrequencyFromJson,
  )
  final enums.ScheduledTransactionSummaryFrequency frequency;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'flag_color',
    toJson: scheduledTransactionSummaryFlagColorToJson,
    fromJson: scheduledTransactionSummaryFlagColorFromJson,
  )
  final enums.ScheduledTransactionSummaryFlagColor? flagColor;
  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$ScheduledTransactionSummaryFromJson;
  static const toJsonFactory = _$ScheduledTransactionSummaryToJson;
  Map<String, dynamic> toJson() => _$ScheduledTransactionSummaryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionSummary &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dateFirst, dateFirst) ||
                const DeepCollectionEquality()
                    .equals(other.dateFirst, dateFirst)) &&
            (identical(other.dateNext, dateNext) ||
                const DeepCollectionEquality()
                    .equals(other.dateNext, dateNext)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dateFirst) ^
      const DeepCollectionEquality().hash(dateNext) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $ScheduledTransactionSummaryExtension on ScheduledTransactionSummary {
  ScheduledTransactionSummary copyWith(
      {String? id,
      DateTime? dateFirst,
      DateTime? dateNext,
      enums.ScheduledTransactionSummaryFrequency? frequency,
      num? amount,
      String? memo,
      enums.ScheduledTransactionSummaryFlagColor? flagColor,
      String? accountId,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      bool? deleted}) {
    return ScheduledTransactionSummary(
        id: id ?? this.id,
        dateFirst: dateFirst ?? this.dateFirst,
        dateNext: dateNext ?? this.dateNext,
        frequency: frequency ?? this.frequency,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        flagColor: flagColor ?? this.flagColor,
        accountId: accountId ?? this.accountId,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        deleted: deleted ?? this.deleted);
  }

  ScheduledTransactionSummary copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<DateTime>? dateFirst,
      Wrapped<DateTime>? dateNext,
      Wrapped<enums.ScheduledTransactionSummaryFrequency>? frequency,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<enums.ScheduledTransactionSummaryFlagColor?>? flagColor,
      Wrapped<String>? accountId,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<bool>? deleted}) {
    return ScheduledTransactionSummary(
        id: (id != null ? id.value : this.id),
        dateFirst: (dateFirst != null ? dateFirst.value : this.dateFirst),
        dateNext: (dateNext != null ? dateNext.value : this.dateNext),
        frequency: (frequency != null ? frequency.value : this.frequency),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        accountId: (accountId != null ? accountId.value : this.accountId),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionDetail {
  ScheduledTransactionDetail({
    required this.accountName,
    this.payeeName,
    this.categoryName,
    required this.subtransactions,
    required this.id,
    required this.dateFirst,
    required this.dateNext,
    required this.frequency,
    required this.amount,
    this.memo,
    this.flagColor,
    required this.accountId,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    required this.deleted,
  });

  factory ScheduledTransactionDetail.fromJson(Map<String, dynamic> json) =>
      _$ScheduledTransactionDetailFromJson(json);

  @JsonKey(name: 'account_name')
  final String accountName;
  @JsonKey(name: 'payee_name')
  final String? payeeName;
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @JsonKey(name: 'subtransactions', defaultValue: <ScheduledSubTransaction>[])
  final List<ScheduledSubTransaction> subtransactions;
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'date_first', toJson: _dateToJson)
  final DateTime dateFirst;
  @JsonKey(name: 'date_next', toJson: _dateToJson)
  final DateTime dateNext;
  @JsonKey(
    name: 'frequency',
    toJson: scheduledTransactionDetailFrequencyToJson,
    fromJson: scheduledTransactionDetailFrequencyFromJson,
  )
  final enums.ScheduledTransactionDetailFrequency frequency;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(
    name: 'flag_color',
    toJson: scheduledTransactionDetailFlagColorToJson,
    fromJson: scheduledTransactionDetailFlagColorFromJson,
  )
  final enums.ScheduledTransactionDetailFlagColor? flagColor;
  @JsonKey(name: 'account_id')
  final String accountId;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$ScheduledTransactionDetailFromJson;
  static const toJsonFactory = _$ScheduledTransactionDetailToJson;
  Map<String, dynamic> toJson() => _$ScheduledTransactionDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionDetail &&
            (identical(other.accountName, accountName) ||
                const DeepCollectionEquality()
                    .equals(other.accountName, accountName)) &&
            (identical(other.payeeName, payeeName) ||
                const DeepCollectionEquality()
                    .equals(other.payeeName, payeeName)) &&
            (identical(other.categoryName, categoryName) ||
                const DeepCollectionEquality()
                    .equals(other.categoryName, categoryName)) &&
            (identical(other.subtransactions, subtransactions) ||
                const DeepCollectionEquality()
                    .equals(other.subtransactions, subtransactions)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.dateFirst, dateFirst) ||
                const DeepCollectionEquality()
                    .equals(other.dateFirst, dateFirst)) &&
            (identical(other.dateNext, dateNext) ||
                const DeepCollectionEquality()
                    .equals(other.dateNext, dateNext)) &&
            (identical(other.frequency, frequency) ||
                const DeepCollectionEquality()
                    .equals(other.frequency, frequency)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.flagColor, flagColor) ||
                const DeepCollectionEquality()
                    .equals(other.flagColor, flagColor)) &&
            (identical(other.accountId, accountId) ||
                const DeepCollectionEquality()
                    .equals(other.accountId, accountId)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accountName) ^
      const DeepCollectionEquality().hash(payeeName) ^
      const DeepCollectionEquality().hash(categoryName) ^
      const DeepCollectionEquality().hash(subtransactions) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(dateFirst) ^
      const DeepCollectionEquality().hash(dateNext) ^
      const DeepCollectionEquality().hash(frequency) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(flagColor) ^
      const DeepCollectionEquality().hash(accountId) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $ScheduledTransactionDetailExtension on ScheduledTransactionDetail {
  ScheduledTransactionDetail copyWith(
      {String? accountName,
      String? payeeName,
      String? categoryName,
      List<ScheduledSubTransaction>? subtransactions,
      String? id,
      DateTime? dateFirst,
      DateTime? dateNext,
      enums.ScheduledTransactionDetailFrequency? frequency,
      num? amount,
      String? memo,
      enums.ScheduledTransactionDetailFlagColor? flagColor,
      String? accountId,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      bool? deleted}) {
    return ScheduledTransactionDetail(
        accountName: accountName ?? this.accountName,
        payeeName: payeeName ?? this.payeeName,
        categoryName: categoryName ?? this.categoryName,
        subtransactions: subtransactions ?? this.subtransactions,
        id: id ?? this.id,
        dateFirst: dateFirst ?? this.dateFirst,
        dateNext: dateNext ?? this.dateNext,
        frequency: frequency ?? this.frequency,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        flagColor: flagColor ?? this.flagColor,
        accountId: accountId ?? this.accountId,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        deleted: deleted ?? this.deleted);
  }

  ScheduledTransactionDetail copyWithWrapped(
      {Wrapped<String>? accountName,
      Wrapped<String?>? payeeName,
      Wrapped<String?>? categoryName,
      Wrapped<List<ScheduledSubTransaction>>? subtransactions,
      Wrapped<String>? id,
      Wrapped<DateTime>? dateFirst,
      Wrapped<DateTime>? dateNext,
      Wrapped<enums.ScheduledTransactionDetailFrequency>? frequency,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<enums.ScheduledTransactionDetailFlagColor?>? flagColor,
      Wrapped<String>? accountId,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<bool>? deleted}) {
    return ScheduledTransactionDetail(
        accountName:
            (accountName != null ? accountName.value : this.accountName),
        payeeName: (payeeName != null ? payeeName.value : this.payeeName),
        categoryName:
            (categoryName != null ? categoryName.value : this.categoryName),
        subtransactions: (subtransactions != null
            ? subtransactions.value
            : this.subtransactions),
        id: (id != null ? id.value : this.id),
        dateFirst: (dateFirst != null ? dateFirst.value : this.dateFirst),
        dateNext: (dateNext != null ? dateNext.value : this.dateNext),
        frequency: (frequency != null ? frequency.value : this.frequency),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        flagColor: (flagColor != null ? flagColor.value : this.flagColor),
        accountId: (accountId != null ? accountId.value : this.accountId),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledSubTransaction {
  ScheduledSubTransaction({
    required this.id,
    required this.scheduledTransactionId,
    required this.amount,
    this.memo,
    this.payeeId,
    this.categoryId,
    this.transferAccountId,
    required this.deleted,
  });

  factory ScheduledSubTransaction.fromJson(Map<String, dynamic> json) =>
      _$ScheduledSubTransactionFromJson(json);

  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'scheduled_transaction_id')
  final String scheduledTransactionId;
  @JsonKey(name: 'amount')
  final num amount;
  @JsonKey(name: 'memo')
  final String? memo;
  @JsonKey(name: 'payee_id')
  final String? payeeId;
  @JsonKey(name: 'category_id')
  final String? categoryId;
  @JsonKey(name: 'transfer_account_id')
  final String? transferAccountId;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$ScheduledSubTransactionFromJson;
  static const toJsonFactory = _$ScheduledSubTransactionToJson;
  Map<String, dynamic> toJson() => _$ScheduledSubTransactionToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledSubTransaction &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.scheduledTransactionId, scheduledTransactionId) ||
                const DeepCollectionEquality().equals(
                    other.scheduledTransactionId, scheduledTransactionId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.memo, memo) ||
                const DeepCollectionEquality().equals(other.memo, memo)) &&
            (identical(other.payeeId, payeeId) ||
                const DeepCollectionEquality()
                    .equals(other.payeeId, payeeId)) &&
            (identical(other.categoryId, categoryId) ||
                const DeepCollectionEquality()
                    .equals(other.categoryId, categoryId)) &&
            (identical(other.transferAccountId, transferAccountId) ||
                const DeepCollectionEquality()
                    .equals(other.transferAccountId, transferAccountId)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(scheduledTransactionId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(memo) ^
      const DeepCollectionEquality().hash(payeeId) ^
      const DeepCollectionEquality().hash(categoryId) ^
      const DeepCollectionEquality().hash(transferAccountId) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $ScheduledSubTransactionExtension on ScheduledSubTransaction {
  ScheduledSubTransaction copyWith(
      {String? id,
      String? scheduledTransactionId,
      num? amount,
      String? memo,
      String? payeeId,
      String? categoryId,
      String? transferAccountId,
      bool? deleted}) {
    return ScheduledSubTransaction(
        id: id ?? this.id,
        scheduledTransactionId:
            scheduledTransactionId ?? this.scheduledTransactionId,
        amount: amount ?? this.amount,
        memo: memo ?? this.memo,
        payeeId: payeeId ?? this.payeeId,
        categoryId: categoryId ?? this.categoryId,
        transferAccountId: transferAccountId ?? this.transferAccountId,
        deleted: deleted ?? this.deleted);
  }

  ScheduledSubTransaction copyWithWrapped(
      {Wrapped<String>? id,
      Wrapped<String>? scheduledTransactionId,
      Wrapped<num>? amount,
      Wrapped<String?>? memo,
      Wrapped<String?>? payeeId,
      Wrapped<String?>? categoryId,
      Wrapped<String?>? transferAccountId,
      Wrapped<bool>? deleted}) {
    return ScheduledSubTransaction(
        id: (id != null ? id.value : this.id),
        scheduledTransactionId: (scheduledTransactionId != null
            ? scheduledTransactionId.value
            : this.scheduledTransactionId),
        amount: (amount != null ? amount.value : this.amount),
        memo: (memo != null ? memo.value : this.memo),
        payeeId: (payeeId != null ? payeeId.value : this.payeeId),
        categoryId: (categoryId != null ? categoryId.value : this.categoryId),
        transferAccountId: (transferAccountId != null
            ? transferAccountId.value
            : this.transferAccountId),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthSummariesResponse {
  MonthSummariesResponse({
    required this.data,
  });

  factory MonthSummariesResponse.fromJson(Map<String, dynamic> json) =>
      _$MonthSummariesResponseFromJson(json);

  @JsonKey(name: 'data')
  final MonthSummariesResponse$Data data;
  static const fromJsonFactory = _$MonthSummariesResponseFromJson;
  static const toJsonFactory = _$MonthSummariesResponseToJson;
  Map<String, dynamic> toJson() => _$MonthSummariesResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthSummariesResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $MonthSummariesResponseExtension on MonthSummariesResponse {
  MonthSummariesResponse copyWith({MonthSummariesResponse$Data? data}) {
    return MonthSummariesResponse(data: data ?? this.data);
  }

  MonthSummariesResponse copyWithWrapped(
      {Wrapped<MonthSummariesResponse$Data>? data}) {
    return MonthSummariesResponse(
        data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthDetailResponse {
  MonthDetailResponse({
    required this.data,
  });

  factory MonthDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MonthDetailResponseFromJson(json);

  @JsonKey(name: 'data')
  final MonthDetailResponse$Data data;
  static const fromJsonFactory = _$MonthDetailResponseFromJson;
  static const toJsonFactory = _$MonthDetailResponseToJson;
  Map<String, dynamic> toJson() => _$MonthDetailResponseToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthDetailResponse &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(data) ^ runtimeType.hashCode;
}

extension $MonthDetailResponseExtension on MonthDetailResponse {
  MonthDetailResponse copyWith({MonthDetailResponse$Data? data}) {
    return MonthDetailResponse(data: data ?? this.data);
  }

  MonthDetailResponse copyWithWrapped(
      {Wrapped<MonthDetailResponse$Data>? data}) {
    return MonthDetailResponse(data: (data != null ? data.value : this.data));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthSummary {
  MonthSummary({
    required this.month,
    this.note,
    required this.income,
    required this.budgeted,
    required this.activity,
    required this.toBeBudgeted,
    this.ageOfMoney,
    required this.deleted,
  });

  factory MonthSummary.fromJson(Map<String, dynamic> json) =>
      _$MonthSummaryFromJson(json);

  @JsonKey(name: 'month', toJson: _dateToJson)
  final DateTime month;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'income')
  final num income;
  @JsonKey(name: 'budgeted')
  final num budgeted;
  @JsonKey(name: 'activity')
  final num activity;
  @JsonKey(name: 'to_be_budgeted')
  final num toBeBudgeted;
  @JsonKey(name: 'age_of_money')
  final int? ageOfMoney;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$MonthSummaryFromJson;
  static const toJsonFactory = _$MonthSummaryToJson;
  Map<String, dynamic> toJson() => _$MonthSummaryToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthSummary &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)) &&
            (identical(other.budgeted, budgeted) ||
                const DeepCollectionEquality()
                    .equals(other.budgeted, budgeted)) &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)) &&
            (identical(other.toBeBudgeted, toBeBudgeted) ||
                const DeepCollectionEquality()
                    .equals(other.toBeBudgeted, toBeBudgeted)) &&
            (identical(other.ageOfMoney, ageOfMoney) ||
                const DeepCollectionEquality()
                    .equals(other.ageOfMoney, ageOfMoney)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(income) ^
      const DeepCollectionEquality().hash(budgeted) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(toBeBudgeted) ^
      const DeepCollectionEquality().hash(ageOfMoney) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $MonthSummaryExtension on MonthSummary {
  MonthSummary copyWith(
      {DateTime? month,
      String? note,
      num? income,
      num? budgeted,
      num? activity,
      num? toBeBudgeted,
      int? ageOfMoney,
      bool? deleted}) {
    return MonthSummary(
        month: month ?? this.month,
        note: note ?? this.note,
        income: income ?? this.income,
        budgeted: budgeted ?? this.budgeted,
        activity: activity ?? this.activity,
        toBeBudgeted: toBeBudgeted ?? this.toBeBudgeted,
        ageOfMoney: ageOfMoney ?? this.ageOfMoney,
        deleted: deleted ?? this.deleted);
  }

  MonthSummary copyWithWrapped(
      {Wrapped<DateTime>? month,
      Wrapped<String?>? note,
      Wrapped<num>? income,
      Wrapped<num>? budgeted,
      Wrapped<num>? activity,
      Wrapped<num>? toBeBudgeted,
      Wrapped<int?>? ageOfMoney,
      Wrapped<bool>? deleted}) {
    return MonthSummary(
        month: (month != null ? month.value : this.month),
        note: (note != null ? note.value : this.note),
        income: (income != null ? income.value : this.income),
        budgeted: (budgeted != null ? budgeted.value : this.budgeted),
        activity: (activity != null ? activity.value : this.activity),
        toBeBudgeted:
            (toBeBudgeted != null ? toBeBudgeted.value : this.toBeBudgeted),
        ageOfMoney: (ageOfMoney != null ? ageOfMoney.value : this.ageOfMoney),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthDetail {
  MonthDetail({
    required this.categories,
    required this.month,
    this.note,
    required this.income,
    required this.budgeted,
    required this.activity,
    required this.toBeBudgeted,
    this.ageOfMoney,
    required this.deleted,
  });

  factory MonthDetail.fromJson(Map<String, dynamic> json) =>
      _$MonthDetailFromJson(json);

  @JsonKey(name: 'categories', defaultValue: <Category>[])
  final List<Category> categories;
  @JsonKey(name: 'month', toJson: _dateToJson)
  final DateTime month;
  @JsonKey(name: 'note')
  final String? note;
  @JsonKey(name: 'income')
  final num income;
  @JsonKey(name: 'budgeted')
  final num budgeted;
  @JsonKey(name: 'activity')
  final num activity;
  @JsonKey(name: 'to_be_budgeted')
  final num toBeBudgeted;
  @JsonKey(name: 'age_of_money')
  final int? ageOfMoney;
  @JsonKey(name: 'deleted')
  final bool deleted;
  static const fromJsonFactory = _$MonthDetailFromJson;
  static const toJsonFactory = _$MonthDetailToJson;
  Map<String, dynamic> toJson() => _$MonthDetailToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthDetail &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)) &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)) &&
            (identical(other.income, income) ||
                const DeepCollectionEquality().equals(other.income, income)) &&
            (identical(other.budgeted, budgeted) ||
                const DeepCollectionEquality()
                    .equals(other.budgeted, budgeted)) &&
            (identical(other.activity, activity) ||
                const DeepCollectionEquality()
                    .equals(other.activity, activity)) &&
            (identical(other.toBeBudgeted, toBeBudgeted) ||
                const DeepCollectionEquality()
                    .equals(other.toBeBudgeted, toBeBudgeted)) &&
            (identical(other.ageOfMoney, ageOfMoney) ||
                const DeepCollectionEquality()
                    .equals(other.ageOfMoney, ageOfMoney)) &&
            (identical(other.deleted, deleted) ||
                const DeepCollectionEquality().equals(other.deleted, deleted)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categories) ^
      const DeepCollectionEquality().hash(month) ^
      const DeepCollectionEquality().hash(note) ^
      const DeepCollectionEquality().hash(income) ^
      const DeepCollectionEquality().hash(budgeted) ^
      const DeepCollectionEquality().hash(activity) ^
      const DeepCollectionEquality().hash(toBeBudgeted) ^
      const DeepCollectionEquality().hash(ageOfMoney) ^
      const DeepCollectionEquality().hash(deleted) ^
      runtimeType.hashCode;
}

extension $MonthDetailExtension on MonthDetail {
  MonthDetail copyWith(
      {List<Category>? categories,
      DateTime? month,
      String? note,
      num? income,
      num? budgeted,
      num? activity,
      num? toBeBudgeted,
      int? ageOfMoney,
      bool? deleted}) {
    return MonthDetail(
        categories: categories ?? this.categories,
        month: month ?? this.month,
        note: note ?? this.note,
        income: income ?? this.income,
        budgeted: budgeted ?? this.budgeted,
        activity: activity ?? this.activity,
        toBeBudgeted: toBeBudgeted ?? this.toBeBudgeted,
        ageOfMoney: ageOfMoney ?? this.ageOfMoney,
        deleted: deleted ?? this.deleted);
  }

  MonthDetail copyWithWrapped(
      {Wrapped<List<Category>>? categories,
      Wrapped<DateTime>? month,
      Wrapped<String?>? note,
      Wrapped<num>? income,
      Wrapped<num>? budgeted,
      Wrapped<num>? activity,
      Wrapped<num>? toBeBudgeted,
      Wrapped<int?>? ageOfMoney,
      Wrapped<bool>? deleted}) {
    return MonthDetail(
        categories: (categories != null ? categories.value : this.categories),
        month: (month != null ? month.value : this.month),
        note: (note != null ? note.value : this.note),
        income: (income != null ? income.value : this.income),
        budgeted: (budgeted != null ? budgeted.value : this.budgeted),
        activity: (activity != null ? activity.value : this.activity),
        toBeBudgeted:
            (toBeBudgeted != null ? toBeBudgeted.value : this.toBeBudgeted),
        ageOfMoney: (ageOfMoney != null ? ageOfMoney.value : this.ageOfMoney),
        deleted: (deleted != null ? deleted.value : this.deleted));
  }
}

@JsonSerializable(explicitToJson: true)
class UserResponse$Data {
  UserResponse$Data({
    required this.user,
  });

  factory UserResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$UserResponse$DataFromJson(json);

  @JsonKey(name: 'user')
  final User user;
  static const fromJsonFactory = _$UserResponse$DataFromJson;
  static const toJsonFactory = _$UserResponse$DataToJson;
  Map<String, dynamic> toJson() => _$UserResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserResponse$Data &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(user) ^ runtimeType.hashCode;
}

extension $UserResponse$DataExtension on UserResponse$Data {
  UserResponse$Data copyWith({User? user}) {
    return UserResponse$Data(user: user ?? this.user);
  }

  UserResponse$Data copyWithWrapped({Wrapped<User>? user}) {
    return UserResponse$Data(user: (user != null ? user.value : this.user));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSummaryResponse$Data {
  BudgetSummaryResponse$Data({
    required this.budgets,
    this.defaultBudget,
  });

  factory BudgetSummaryResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$BudgetSummaryResponse$DataFromJson(json);

  @JsonKey(name: 'budgets', defaultValue: <BudgetSummary>[])
  final List<BudgetSummary> budgets;
  @JsonKey(name: 'default_budget')
  final BudgetSummary? defaultBudget;
  static const fromJsonFactory = _$BudgetSummaryResponse$DataFromJson;
  static const toJsonFactory = _$BudgetSummaryResponse$DataToJson;
  Map<String, dynamic> toJson() => _$BudgetSummaryResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSummaryResponse$Data &&
            (identical(other.budgets, budgets) ||
                const DeepCollectionEquality()
                    .equals(other.budgets, budgets)) &&
            (identical(other.defaultBudget, defaultBudget) ||
                const DeepCollectionEquality()
                    .equals(other.defaultBudget, defaultBudget)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(budgets) ^
      const DeepCollectionEquality().hash(defaultBudget) ^
      runtimeType.hashCode;
}

extension $BudgetSummaryResponse$DataExtension on BudgetSummaryResponse$Data {
  BudgetSummaryResponse$Data copyWith(
      {List<BudgetSummary>? budgets, BudgetSummary? defaultBudget}) {
    return BudgetSummaryResponse$Data(
        budgets: budgets ?? this.budgets,
        defaultBudget: defaultBudget ?? this.defaultBudget);
  }

  BudgetSummaryResponse$Data copyWithWrapped(
      {Wrapped<List<BudgetSummary>>? budgets,
      Wrapped<BudgetSummary?>? defaultBudget}) {
    return BudgetSummaryResponse$Data(
        budgets: (budgets != null ? budgets.value : this.budgets),
        defaultBudget:
            (defaultBudget != null ? defaultBudget.value : this.defaultBudget));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetDetailResponse$Data {
  BudgetDetailResponse$Data({
    required this.budget,
    required this.serverKnowledge,
  });

  factory BudgetDetailResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$BudgetDetailResponse$DataFromJson(json);

  @JsonKey(name: 'budget')
  final BudgetDetail budget;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$BudgetDetailResponse$DataFromJson;
  static const toJsonFactory = _$BudgetDetailResponse$DataToJson;
  Map<String, dynamic> toJson() => _$BudgetDetailResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetDetailResponse$Data &&
            (identical(other.budget, budget) ||
                const DeepCollectionEquality().equals(other.budget, budget)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(budget) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $BudgetDetailResponse$DataExtension on BudgetDetailResponse$Data {
  BudgetDetailResponse$Data copyWith(
      {BudgetDetail? budget, num? serverKnowledge}) {
    return BudgetDetailResponse$Data(
        budget: budget ?? this.budget,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  BudgetDetailResponse$Data copyWithWrapped(
      {Wrapped<BudgetDetail>? budget, Wrapped<num>? serverKnowledge}) {
    return BudgetDetailResponse$Data(
        budget: (budget != null ? budget.value : this.budget),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class BudgetSettingsResponse$Data {
  BudgetSettingsResponse$Data({
    required this.settings,
  });

  factory BudgetSettingsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$BudgetSettingsResponse$DataFromJson(json);

  @JsonKey(name: 'settings')
  final BudgetSettings settings;
  static const fromJsonFactory = _$BudgetSettingsResponse$DataFromJson;
  static const toJsonFactory = _$BudgetSettingsResponse$DataToJson;
  Map<String, dynamic> toJson() => _$BudgetSettingsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BudgetSettingsResponse$Data &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(settings) ^ runtimeType.hashCode;
}

extension $BudgetSettingsResponse$DataExtension on BudgetSettingsResponse$Data {
  BudgetSettingsResponse$Data copyWith({BudgetSettings? settings}) {
    return BudgetSettingsResponse$Data(settings: settings ?? this.settings);
  }

  BudgetSettingsResponse$Data copyWithWrapped(
      {Wrapped<BudgetSettings>? settings}) {
    return BudgetSettingsResponse$Data(
        settings: (settings != null ? settings.value : this.settings));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountsResponse$Data {
  AccountsResponse$Data({
    required this.accounts,
    required this.serverKnowledge,
  });

  factory AccountsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$AccountsResponse$DataFromJson(json);

  @JsonKey(name: 'accounts', defaultValue: <Account>[])
  final List<Account> accounts;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$AccountsResponse$DataFromJson;
  static const toJsonFactory = _$AccountsResponse$DataToJson;
  Map<String, dynamic> toJson() => _$AccountsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountsResponse$Data &&
            (identical(other.accounts, accounts) ||
                const DeepCollectionEquality()
                    .equals(other.accounts, accounts)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(accounts) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $AccountsResponse$DataExtension on AccountsResponse$Data {
  AccountsResponse$Data copyWith(
      {List<Account>? accounts, num? serverKnowledge}) {
    return AccountsResponse$Data(
        accounts: accounts ?? this.accounts,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  AccountsResponse$Data copyWithWrapped(
      {Wrapped<List<Account>>? accounts, Wrapped<num>? serverKnowledge}) {
    return AccountsResponse$Data(
        accounts: (accounts != null ? accounts.value : this.accounts),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class AccountResponse$Data {
  AccountResponse$Data({
    required this.account,
  });

  factory AccountResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$AccountResponse$DataFromJson(json);

  @JsonKey(name: 'account')
  final Account account;
  static const fromJsonFactory = _$AccountResponse$DataFromJson;
  static const toJsonFactory = _$AccountResponse$DataToJson;
  Map<String, dynamic> toJson() => _$AccountResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AccountResponse$Data &&
            (identical(other.account, account) ||
                const DeepCollectionEquality().equals(other.account, account)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(account) ^ runtimeType.hashCode;
}

extension $AccountResponse$DataExtension on AccountResponse$Data {
  AccountResponse$Data copyWith({Account? account}) {
    return AccountResponse$Data(account: account ?? this.account);
  }

  AccountResponse$Data copyWithWrapped({Wrapped<Account>? account}) {
    return AccountResponse$Data(
        account: (account != null ? account.value : this.account));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoriesResponse$Data {
  CategoriesResponse$Data({
    required this.categoryGroups,
    required this.serverKnowledge,
  });

  factory CategoriesResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponse$DataFromJson(json);

  @JsonKey(
      name: 'category_groups', defaultValue: <CategoryGroupWithCategories>[])
  final List<CategoryGroupWithCategories> categoryGroups;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$CategoriesResponse$DataFromJson;
  static const toJsonFactory = _$CategoriesResponse$DataToJson;
  Map<String, dynamic> toJson() => _$CategoriesResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoriesResponse$Data &&
            (identical(other.categoryGroups, categoryGroups) ||
                const DeepCollectionEquality()
                    .equals(other.categoryGroups, categoryGroups)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(categoryGroups) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $CategoriesResponse$DataExtension on CategoriesResponse$Data {
  CategoriesResponse$Data copyWith(
      {List<CategoryGroupWithCategories>? categoryGroups,
      num? serverKnowledge}) {
    return CategoriesResponse$Data(
        categoryGroups: categoryGroups ?? this.categoryGroups,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  CategoriesResponse$Data copyWithWrapped(
      {Wrapped<List<CategoryGroupWithCategories>>? categoryGroups,
      Wrapped<num>? serverKnowledge}) {
    return CategoriesResponse$Data(
        categoryGroups: (categoryGroups != null
            ? categoryGroups.value
            : this.categoryGroups),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class CategoryResponse$Data {
  CategoryResponse$Data({
    required this.category,
  });

  factory CategoryResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponse$DataFromJson(json);

  @JsonKey(name: 'category')
  final Category category;
  static const fromJsonFactory = _$CategoryResponse$DataFromJson;
  static const toJsonFactory = _$CategoryResponse$DataToJson;
  Map<String, dynamic> toJson() => _$CategoryResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CategoryResponse$Data &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^ runtimeType.hashCode;
}

extension $CategoryResponse$DataExtension on CategoryResponse$Data {
  CategoryResponse$Data copyWith({Category? category}) {
    return CategoryResponse$Data(category: category ?? this.category);
  }

  CategoryResponse$Data copyWithWrapped({Wrapped<Category>? category}) {
    return CategoryResponse$Data(
        category: (category != null ? category.value : this.category));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveCategoryResponse$Data {
  SaveCategoryResponse$Data({
    required this.category,
    required this.serverKnowledge,
  });

  factory SaveCategoryResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$SaveCategoryResponse$DataFromJson(json);

  @JsonKey(name: 'category')
  final Category category;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$SaveCategoryResponse$DataFromJson;
  static const toJsonFactory = _$SaveCategoryResponse$DataToJson;
  Map<String, dynamic> toJson() => _$SaveCategoryResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveCategoryResponse$Data &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $SaveCategoryResponse$DataExtension on SaveCategoryResponse$Data {
  SaveCategoryResponse$Data copyWith(
      {Category? category, num? serverKnowledge}) {
    return SaveCategoryResponse$Data(
        category: category ?? this.category,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  SaveCategoryResponse$Data copyWithWrapped(
      {Wrapped<Category>? category, Wrapped<num>? serverKnowledge}) {
    return SaveCategoryResponse$Data(
        category: (category != null ? category.value : this.category),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeesResponse$Data {
  PayeesResponse$Data({
    required this.payees,
    required this.serverKnowledge,
  });

  factory PayeesResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$PayeesResponse$DataFromJson(json);

  @JsonKey(name: 'payees', defaultValue: <Payee>[])
  final List<Payee> payees;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$PayeesResponse$DataFromJson;
  static const toJsonFactory = _$PayeesResponse$DataToJson;
  Map<String, dynamic> toJson() => _$PayeesResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeesResponse$Data &&
            (identical(other.payees, payees) ||
                const DeepCollectionEquality().equals(other.payees, payees)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payees) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $PayeesResponse$DataExtension on PayeesResponse$Data {
  PayeesResponse$Data copyWith({List<Payee>? payees, num? serverKnowledge}) {
    return PayeesResponse$Data(
        payees: payees ?? this.payees,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  PayeesResponse$Data copyWithWrapped(
      {Wrapped<List<Payee>>? payees, Wrapped<num>? serverKnowledge}) {
    return PayeesResponse$Data(
        payees: (payees != null ? payees.value : this.payees),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeResponse$Data {
  PayeeResponse$Data({
    required this.payee,
  });

  factory PayeeResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$PayeeResponse$DataFromJson(json);

  @JsonKey(name: 'payee')
  final Payee payee;
  static const fromJsonFactory = _$PayeeResponse$DataFromJson;
  static const toJsonFactory = _$PayeeResponse$DataToJson;
  Map<String, dynamic> toJson() => _$PayeeResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeResponse$Data &&
            (identical(other.payee, payee) ||
                const DeepCollectionEquality().equals(other.payee, payee)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payee) ^ runtimeType.hashCode;
}

extension $PayeeResponse$DataExtension on PayeeResponse$Data {
  PayeeResponse$Data copyWith({Payee? payee}) {
    return PayeeResponse$Data(payee: payee ?? this.payee);
  }

  PayeeResponse$Data copyWithWrapped({Wrapped<Payee>? payee}) {
    return PayeeResponse$Data(
        payee: (payee != null ? payee.value : this.payee));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeLocationsResponse$Data {
  PayeeLocationsResponse$Data({
    required this.payeeLocations,
  });

  factory PayeeLocationsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$PayeeLocationsResponse$DataFromJson(json);

  @JsonKey(name: 'payee_locations', defaultValue: <PayeeLocation>[])
  final List<PayeeLocation> payeeLocations;
  static const fromJsonFactory = _$PayeeLocationsResponse$DataFromJson;
  static const toJsonFactory = _$PayeeLocationsResponse$DataToJson;
  Map<String, dynamic> toJson() => _$PayeeLocationsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeLocationsResponse$Data &&
            (identical(other.payeeLocations, payeeLocations) ||
                const DeepCollectionEquality()
                    .equals(other.payeeLocations, payeeLocations)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payeeLocations) ^
      runtimeType.hashCode;
}

extension $PayeeLocationsResponse$DataExtension on PayeeLocationsResponse$Data {
  PayeeLocationsResponse$Data copyWith({List<PayeeLocation>? payeeLocations}) {
    return PayeeLocationsResponse$Data(
        payeeLocations: payeeLocations ?? this.payeeLocations);
  }

  PayeeLocationsResponse$Data copyWithWrapped(
      {Wrapped<List<PayeeLocation>>? payeeLocations}) {
    return PayeeLocationsResponse$Data(
        payeeLocations: (payeeLocations != null
            ? payeeLocations.value
            : this.payeeLocations));
  }
}

@JsonSerializable(explicitToJson: true)
class PayeeLocationResponse$Data {
  PayeeLocationResponse$Data({
    required this.payeeLocation,
  });

  factory PayeeLocationResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$PayeeLocationResponse$DataFromJson(json);

  @JsonKey(name: 'payee_location')
  final PayeeLocation payeeLocation;
  static const fromJsonFactory = _$PayeeLocationResponse$DataFromJson;
  static const toJsonFactory = _$PayeeLocationResponse$DataToJson;
  Map<String, dynamic> toJson() => _$PayeeLocationResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PayeeLocationResponse$Data &&
            (identical(other.payeeLocation, payeeLocation) ||
                const DeepCollectionEquality()
                    .equals(other.payeeLocation, payeeLocation)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(payeeLocation) ^ runtimeType.hashCode;
}

extension $PayeeLocationResponse$DataExtension on PayeeLocationResponse$Data {
  PayeeLocationResponse$Data copyWith({PayeeLocation? payeeLocation}) {
    return PayeeLocationResponse$Data(
        payeeLocation: payeeLocation ?? this.payeeLocation);
  }

  PayeeLocationResponse$Data copyWithWrapped(
      {Wrapped<PayeeLocation>? payeeLocation}) {
    return PayeeLocationResponse$Data(
        payeeLocation:
            (payeeLocation != null ? payeeLocation.value : this.payeeLocation));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsResponse$Data {
  TransactionsResponse$Data({
    required this.transactions,
    required this.serverKnowledge,
  });

  factory TransactionsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$TransactionsResponse$DataFromJson(json);

  @JsonKey(name: 'transactions', defaultValue: <TransactionDetail>[])
  final List<TransactionDetail> transactions;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$TransactionsResponse$DataFromJson;
  static const toJsonFactory = _$TransactionsResponse$DataToJson;
  Map<String, dynamic> toJson() => _$TransactionsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsResponse$Data &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $TransactionsResponse$DataExtension on TransactionsResponse$Data {
  TransactionsResponse$Data copyWith(
      {List<TransactionDetail>? transactions, num? serverKnowledge}) {
    return TransactionsResponse$Data(
        transactions: transactions ?? this.transactions,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  TransactionsResponse$Data copyWithWrapped(
      {Wrapped<List<TransactionDetail>>? transactions,
      Wrapped<num>? serverKnowledge}) {
    return TransactionsResponse$Data(
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class HybridTransactionsResponse$Data {
  HybridTransactionsResponse$Data({
    required this.transactions,
    this.serverKnowledge,
  });

  factory HybridTransactionsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$HybridTransactionsResponse$DataFromJson(json);

  @JsonKey(name: 'transactions', defaultValue: <HybridTransaction>[])
  final List<HybridTransaction> transactions;
  @JsonKey(name: 'server_knowledge')
  final num? serverKnowledge;
  static const fromJsonFactory = _$HybridTransactionsResponse$DataFromJson;
  static const toJsonFactory = _$HybridTransactionsResponse$DataToJson;
  Map<String, dynamic> toJson() =>
      _$HybridTransactionsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HybridTransactionsResponse$Data &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $HybridTransactionsResponse$DataExtension
    on HybridTransactionsResponse$Data {
  HybridTransactionsResponse$Data copyWith(
      {List<HybridTransaction>? transactions, num? serverKnowledge}) {
    return HybridTransactionsResponse$Data(
        transactions: transactions ?? this.transactions,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  HybridTransactionsResponse$Data copyWithWrapped(
      {Wrapped<List<HybridTransaction>>? transactions,
      Wrapped<num?>? serverKnowledge}) {
    return HybridTransactionsResponse$Data(
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class SaveTransactionsResponse$Data {
  SaveTransactionsResponse$Data({
    required this.transactionIds,
    this.transaction,
    this.transactions,
    this.duplicateImportIds,
    required this.serverKnowledge,
  });

  factory SaveTransactionsResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$SaveTransactionsResponse$DataFromJson(json);

  @JsonKey(name: 'transaction_ids', defaultValue: <String>[])
  final List<String> transactionIds;
  @JsonKey(name: 'transaction')
  final TransactionDetail? transaction;
  @JsonKey(name: 'transactions', defaultValue: <TransactionDetail>[])
  final List<TransactionDetail>? transactions;
  @JsonKey(name: 'duplicate_import_ids', defaultValue: <String>[])
  final List<String>? duplicateImportIds;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$SaveTransactionsResponse$DataFromJson;
  static const toJsonFactory = _$SaveTransactionsResponse$DataToJson;
  Map<String, dynamic> toJson() => _$SaveTransactionsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SaveTransactionsResponse$Data &&
            (identical(other.transactionIds, transactionIds) ||
                const DeepCollectionEquality()
                    .equals(other.transactionIds, transactionIds)) &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)) &&
            (identical(other.transactions, transactions) ||
                const DeepCollectionEquality()
                    .equals(other.transactions, transactions)) &&
            (identical(other.duplicateImportIds, duplicateImportIds) ||
                const DeepCollectionEquality()
                    .equals(other.duplicateImportIds, duplicateImportIds)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionIds) ^
      const DeepCollectionEquality().hash(transaction) ^
      const DeepCollectionEquality().hash(transactions) ^
      const DeepCollectionEquality().hash(duplicateImportIds) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $SaveTransactionsResponse$DataExtension
    on SaveTransactionsResponse$Data {
  SaveTransactionsResponse$Data copyWith(
      {List<String>? transactionIds,
      TransactionDetail? transaction,
      List<TransactionDetail>? transactions,
      List<String>? duplicateImportIds,
      num? serverKnowledge}) {
    return SaveTransactionsResponse$Data(
        transactionIds: transactionIds ?? this.transactionIds,
        transaction: transaction ?? this.transaction,
        transactions: transactions ?? this.transactions,
        duplicateImportIds: duplicateImportIds ?? this.duplicateImportIds,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  SaveTransactionsResponse$Data copyWithWrapped(
      {Wrapped<List<String>>? transactionIds,
      Wrapped<TransactionDetail?>? transaction,
      Wrapped<List<TransactionDetail>?>? transactions,
      Wrapped<List<String>?>? duplicateImportIds,
      Wrapped<num>? serverKnowledge}) {
    return SaveTransactionsResponse$Data(
        transactionIds: (transactionIds != null
            ? transactionIds.value
            : this.transactionIds),
        transaction:
            (transaction != null ? transaction.value : this.transaction),
        transactions:
            (transactions != null ? transactions.value : this.transactions),
        duplicateImportIds: (duplicateImportIds != null
            ? duplicateImportIds.value
            : this.duplicateImportIds),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionResponse$Data {
  TransactionResponse$Data({
    required this.transaction,
  });

  factory TransactionResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponse$DataFromJson(json);

  @JsonKey(name: 'transaction')
  final TransactionDetail transaction;
  static const fromJsonFactory = _$TransactionResponse$DataFromJson;
  static const toJsonFactory = _$TransactionResponse$DataToJson;
  Map<String, dynamic> toJson() => _$TransactionResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionResponse$Data &&
            (identical(other.transaction, transaction) ||
                const DeepCollectionEquality()
                    .equals(other.transaction, transaction)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transaction) ^ runtimeType.hashCode;
}

extension $TransactionResponse$DataExtension on TransactionResponse$Data {
  TransactionResponse$Data copyWith({TransactionDetail? transaction}) {
    return TransactionResponse$Data(
        transaction: transaction ?? this.transaction);
  }

  TransactionResponse$Data copyWithWrapped(
      {Wrapped<TransactionDetail>? transaction}) {
    return TransactionResponse$Data(
        transaction:
            (transaction != null ? transaction.value : this.transaction));
  }
}

@JsonSerializable(explicitToJson: true)
class TransactionsImportResponse$Data {
  TransactionsImportResponse$Data({
    required this.transactionIds,
  });

  factory TransactionsImportResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$TransactionsImportResponse$DataFromJson(json);

  @JsonKey(name: 'transaction_ids', defaultValue: <String>[])
  final List<String> transactionIds;
  static const fromJsonFactory = _$TransactionsImportResponse$DataFromJson;
  static const toJsonFactory = _$TransactionsImportResponse$DataToJson;
  Map<String, dynamic> toJson() =>
      _$TransactionsImportResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TransactionsImportResponse$Data &&
            (identical(other.transactionIds, transactionIds) ||
                const DeepCollectionEquality()
                    .equals(other.transactionIds, transactionIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionIds) ^
      runtimeType.hashCode;
}

extension $TransactionsImportResponse$DataExtension
    on TransactionsImportResponse$Data {
  TransactionsImportResponse$Data copyWith({List<String>? transactionIds}) {
    return TransactionsImportResponse$Data(
        transactionIds: transactionIds ?? this.transactionIds);
  }

  TransactionsImportResponse$Data copyWithWrapped(
      {Wrapped<List<String>>? transactionIds}) {
    return TransactionsImportResponse$Data(
        transactionIds: (transactionIds != null
            ? transactionIds.value
            : this.transactionIds));
  }
}

@JsonSerializable(explicitToJson: true)
class BulkResponse$Data {
  BulkResponse$Data({
    required this.bulk,
  });

  factory BulkResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$BulkResponse$DataFromJson(json);

  @JsonKey(name: 'bulk')
  final BulkResponse$Data$Bulk bulk;
  static const fromJsonFactory = _$BulkResponse$DataFromJson;
  static const toJsonFactory = _$BulkResponse$DataToJson;
  Map<String, dynamic> toJson() => _$BulkResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulkResponse$Data &&
            (identical(other.bulk, bulk) ||
                const DeepCollectionEquality().equals(other.bulk, bulk)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(bulk) ^ runtimeType.hashCode;
}

extension $BulkResponse$DataExtension on BulkResponse$Data {
  BulkResponse$Data copyWith({BulkResponse$Data$Bulk? bulk}) {
    return BulkResponse$Data(bulk: bulk ?? this.bulk);
  }

  BulkResponse$Data copyWithWrapped({Wrapped<BulkResponse$Data$Bulk>? bulk}) {
    return BulkResponse$Data(bulk: (bulk != null ? bulk.value : this.bulk));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionsResponse$Data {
  ScheduledTransactionsResponse$Data({
    required this.scheduledTransactions,
    required this.serverKnowledge,
  });

  factory ScheduledTransactionsResponse$Data.fromJson(
          Map<String, dynamic> json) =>
      _$ScheduledTransactionsResponse$DataFromJson(json);

  @JsonKey(
      name: 'scheduled_transactions',
      defaultValue: <ScheduledTransactionDetail>[])
  final List<ScheduledTransactionDetail> scheduledTransactions;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$ScheduledTransactionsResponse$DataFromJson;
  static const toJsonFactory = _$ScheduledTransactionsResponse$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ScheduledTransactionsResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionsResponse$Data &&
            (identical(other.scheduledTransactions, scheduledTransactions) ||
                const DeepCollectionEquality().equals(
                    other.scheduledTransactions, scheduledTransactions)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scheduledTransactions) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $ScheduledTransactionsResponse$DataExtension
    on ScheduledTransactionsResponse$Data {
  ScheduledTransactionsResponse$Data copyWith(
      {List<ScheduledTransactionDetail>? scheduledTransactions,
      num? serverKnowledge}) {
    return ScheduledTransactionsResponse$Data(
        scheduledTransactions:
            scheduledTransactions ?? this.scheduledTransactions,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  ScheduledTransactionsResponse$Data copyWithWrapped(
      {Wrapped<List<ScheduledTransactionDetail>>? scheduledTransactions,
      Wrapped<num>? serverKnowledge}) {
    return ScheduledTransactionsResponse$Data(
        scheduledTransactions: (scheduledTransactions != null
            ? scheduledTransactions.value
            : this.scheduledTransactions),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class ScheduledTransactionResponse$Data {
  ScheduledTransactionResponse$Data({
    required this.scheduledTransaction,
  });

  factory ScheduledTransactionResponse$Data.fromJson(
          Map<String, dynamic> json) =>
      _$ScheduledTransactionResponse$DataFromJson(json);

  @JsonKey(name: 'scheduled_transaction')
  final ScheduledTransactionDetail scheduledTransaction;
  static const fromJsonFactory = _$ScheduledTransactionResponse$DataFromJson;
  static const toJsonFactory = _$ScheduledTransactionResponse$DataToJson;
  Map<String, dynamic> toJson() =>
      _$ScheduledTransactionResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ScheduledTransactionResponse$Data &&
            (identical(other.scheduledTransaction, scheduledTransaction) ||
                const DeepCollectionEquality()
                    .equals(other.scheduledTransaction, scheduledTransaction)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(scheduledTransaction) ^
      runtimeType.hashCode;
}

extension $ScheduledTransactionResponse$DataExtension
    on ScheduledTransactionResponse$Data {
  ScheduledTransactionResponse$Data copyWith(
      {ScheduledTransactionDetail? scheduledTransaction}) {
    return ScheduledTransactionResponse$Data(
        scheduledTransaction:
            scheduledTransaction ?? this.scheduledTransaction);
  }

  ScheduledTransactionResponse$Data copyWithWrapped(
      {Wrapped<ScheduledTransactionDetail>? scheduledTransaction}) {
    return ScheduledTransactionResponse$Data(
        scheduledTransaction: (scheduledTransaction != null
            ? scheduledTransaction.value
            : this.scheduledTransaction));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthSummariesResponse$Data {
  MonthSummariesResponse$Data({
    required this.months,
    required this.serverKnowledge,
  });

  factory MonthSummariesResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$MonthSummariesResponse$DataFromJson(json);

  @JsonKey(name: 'months', defaultValue: <MonthSummary>[])
  final List<MonthSummary> months;
  @JsonKey(name: 'server_knowledge')
  final num serverKnowledge;
  static const fromJsonFactory = _$MonthSummariesResponse$DataFromJson;
  static const toJsonFactory = _$MonthSummariesResponse$DataToJson;
  Map<String, dynamic> toJson() => _$MonthSummariesResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthSummariesResponse$Data &&
            (identical(other.months, months) ||
                const DeepCollectionEquality().equals(other.months, months)) &&
            (identical(other.serverKnowledge, serverKnowledge) ||
                const DeepCollectionEquality()
                    .equals(other.serverKnowledge, serverKnowledge)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(months) ^
      const DeepCollectionEquality().hash(serverKnowledge) ^
      runtimeType.hashCode;
}

extension $MonthSummariesResponse$DataExtension on MonthSummariesResponse$Data {
  MonthSummariesResponse$Data copyWith(
      {List<MonthSummary>? months, num? serverKnowledge}) {
    return MonthSummariesResponse$Data(
        months: months ?? this.months,
        serverKnowledge: serverKnowledge ?? this.serverKnowledge);
  }

  MonthSummariesResponse$Data copyWithWrapped(
      {Wrapped<List<MonthSummary>>? months, Wrapped<num>? serverKnowledge}) {
    return MonthSummariesResponse$Data(
        months: (months != null ? months.value : this.months),
        serverKnowledge: (serverKnowledge != null
            ? serverKnowledge.value
            : this.serverKnowledge));
  }
}

@JsonSerializable(explicitToJson: true)
class MonthDetailResponse$Data {
  MonthDetailResponse$Data({
    required this.month,
  });

  factory MonthDetailResponse$Data.fromJson(Map<String, dynamic> json) =>
      _$MonthDetailResponse$DataFromJson(json);

  @JsonKey(name: 'month')
  final MonthDetail month;
  static const fromJsonFactory = _$MonthDetailResponse$DataFromJson;
  static const toJsonFactory = _$MonthDetailResponse$DataToJson;
  Map<String, dynamic> toJson() => _$MonthDetailResponse$DataToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MonthDetailResponse$Data &&
            (identical(other.month, month) ||
                const DeepCollectionEquality().equals(other.month, month)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(month) ^ runtimeType.hashCode;
}

extension $MonthDetailResponse$DataExtension on MonthDetailResponse$Data {
  MonthDetailResponse$Data copyWith({MonthDetail? month}) {
    return MonthDetailResponse$Data(month: month ?? this.month);
  }

  MonthDetailResponse$Data copyWithWrapped({Wrapped<MonthDetail>? month}) {
    return MonthDetailResponse$Data(
        month: (month != null ? month.value : this.month));
  }
}

@JsonSerializable(explicitToJson: true)
class BulkResponse$Data$Bulk {
  BulkResponse$Data$Bulk({
    required this.transactionIds,
    required this.duplicateImportIds,
  });

  factory BulkResponse$Data$Bulk.fromJson(Map<String, dynamic> json) =>
      _$BulkResponse$Data$BulkFromJson(json);

  @JsonKey(name: 'transaction_ids', defaultValue: <String>[])
  final List<String> transactionIds;
  @JsonKey(name: 'duplicate_import_ids', defaultValue: <String>[])
  final List<String> duplicateImportIds;
  static const fromJsonFactory = _$BulkResponse$Data$BulkFromJson;
  static const toJsonFactory = _$BulkResponse$Data$BulkToJson;
  Map<String, dynamic> toJson() => _$BulkResponse$Data$BulkToJson(this);

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BulkResponse$Data$Bulk &&
            (identical(other.transactionIds, transactionIds) ||
                const DeepCollectionEquality()
                    .equals(other.transactionIds, transactionIds)) &&
            (identical(other.duplicateImportIds, duplicateImportIds) ||
                const DeepCollectionEquality()
                    .equals(other.duplicateImportIds, duplicateImportIds)));
  }

  @override
  String toString() => jsonEncode(this);

  @override
  int get hashCode =>
      const DeepCollectionEquality().hash(transactionIds) ^
      const DeepCollectionEquality().hash(duplicateImportIds) ^
      runtimeType.hashCode;
}

extension $BulkResponse$Data$BulkExtension on BulkResponse$Data$Bulk {
  BulkResponse$Data$Bulk copyWith(
      {List<String>? transactionIds, List<String>? duplicateImportIds}) {
    return BulkResponse$Data$Bulk(
        transactionIds: transactionIds ?? this.transactionIds,
        duplicateImportIds: duplicateImportIds ?? this.duplicateImportIds);
  }

  BulkResponse$Data$Bulk copyWithWrapped(
      {Wrapped<List<String>>? transactionIds,
      Wrapped<List<String>>? duplicateImportIds}) {
    return BulkResponse$Data$Bulk(
        transactionIds: (transactionIds != null
            ? transactionIds.value
            : this.transactionIds),
        duplicateImportIds: (duplicateImportIds != null
            ? duplicateImportIds.value
            : this.duplicateImportIds));
  }
}

String? accountTypeToJson(enums.AccountType? accountType) {
  return accountType?.value;
}

enums.AccountType accountTypeFromJson(
  Object? accountType, [
  enums.AccountType? defaultValue,
]) {
  return enums.AccountType.values
          .firstWhereOrNull((e) => e.value == accountType) ??
      defaultValue ??
      enums.AccountType.swaggerGeneratedUnknown;
}

List<String> accountTypeListToJson(List<enums.AccountType>? accountType) {
  if (accountType == null) {
    return [];
  }

  return accountType.map((e) => e.value!).toList();
}

List<enums.AccountType> accountTypeListFromJson(
  List? accountType, [
  List<enums.AccountType>? defaultValue,
]) {
  if (accountType == null) {
    return defaultValue ?? [];
  }

  return accountType.map((e) => accountTypeFromJson(e.toString())).toList();
}

List<enums.AccountType>? accountTypeNullableListFromJson(
  List? accountType, [
  List<enums.AccountType>? defaultValue,
]) {
  if (accountType == null) {
    return defaultValue;
  }

  return accountType.map((e) => accountTypeFromJson(e.toString())).toList();
}

String? categoryGoalTypeToJson(enums.CategoryGoalType? categoryGoalType) {
  return categoryGoalType?.value;
}

enums.CategoryGoalType categoryGoalTypeFromJson(
  Object? categoryGoalType, [
  enums.CategoryGoalType? defaultValue,
]) {
  return enums.CategoryGoalType.values
          .firstWhereOrNull((e) => e.value == categoryGoalType) ??
      defaultValue ??
      enums.CategoryGoalType.swaggerGeneratedUnknown;
}

List<String> categoryGoalTypeListToJson(
    List<enums.CategoryGoalType>? categoryGoalType) {
  if (categoryGoalType == null) {
    return [];
  }

  return categoryGoalType.map((e) => e.value!).toList();
}

List<enums.CategoryGoalType> categoryGoalTypeListFromJson(
  List? categoryGoalType, [
  List<enums.CategoryGoalType>? defaultValue,
]) {
  if (categoryGoalType == null) {
    return defaultValue ?? [];
  }

  return categoryGoalType
      .map((e) => categoryGoalTypeFromJson(e.toString()))
      .toList();
}

List<enums.CategoryGoalType>? categoryGoalTypeNullableListFromJson(
  List? categoryGoalType, [
  List<enums.CategoryGoalType>? defaultValue,
]) {
  if (categoryGoalType == null) {
    return defaultValue;
  }

  return categoryGoalType
      .map((e) => categoryGoalTypeFromJson(e.toString()))
      .toList();
}

String? saveTransactionClearedToJson(
    enums.SaveTransactionCleared? saveTransactionCleared) {
  return saveTransactionCleared?.value;
}

enums.SaveTransactionCleared saveTransactionClearedFromJson(
  Object? saveTransactionCleared, [
  enums.SaveTransactionCleared? defaultValue,
]) {
  return enums.SaveTransactionCleared.values
          .firstWhereOrNull((e) => e.value == saveTransactionCleared) ??
      defaultValue ??
      enums.SaveTransactionCleared.swaggerGeneratedUnknown;
}

List<String> saveTransactionClearedListToJson(
    List<enums.SaveTransactionCleared>? saveTransactionCleared) {
  if (saveTransactionCleared == null) {
    return [];
  }

  return saveTransactionCleared.map((e) => e.value!).toList();
}

List<enums.SaveTransactionCleared> saveTransactionClearedListFromJson(
  List? saveTransactionCleared, [
  List<enums.SaveTransactionCleared>? defaultValue,
]) {
  if (saveTransactionCleared == null) {
    return defaultValue ?? [];
  }

  return saveTransactionCleared
      .map((e) => saveTransactionClearedFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionCleared>? saveTransactionClearedNullableListFromJson(
  List? saveTransactionCleared, [
  List<enums.SaveTransactionCleared>? defaultValue,
]) {
  if (saveTransactionCleared == null) {
    return defaultValue;
  }

  return saveTransactionCleared
      .map((e) => saveTransactionClearedFromJson(e.toString()))
      .toList();
}

String? saveTransactionFlagColorToJson(
    enums.SaveTransactionFlagColor? saveTransactionFlagColor) {
  return saveTransactionFlagColor?.value;
}

enums.SaveTransactionFlagColor saveTransactionFlagColorFromJson(
  Object? saveTransactionFlagColor, [
  enums.SaveTransactionFlagColor? defaultValue,
]) {
  return enums.SaveTransactionFlagColor.values
          .firstWhereOrNull((e) => e.value == saveTransactionFlagColor) ??
      defaultValue ??
      enums.SaveTransactionFlagColor.swaggerGeneratedUnknown;
}

List<String> saveTransactionFlagColorListToJson(
    List<enums.SaveTransactionFlagColor>? saveTransactionFlagColor) {
  if (saveTransactionFlagColor == null) {
    return [];
  }

  return saveTransactionFlagColor.map((e) => e.value!).toList();
}

List<enums.SaveTransactionFlagColor> saveTransactionFlagColorListFromJson(
  List? saveTransactionFlagColor, [
  List<enums.SaveTransactionFlagColor>? defaultValue,
]) {
  if (saveTransactionFlagColor == null) {
    return defaultValue ?? [];
  }

  return saveTransactionFlagColor
      .map((e) => saveTransactionFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionFlagColor>?
    saveTransactionFlagColorNullableListFromJson(
  List? saveTransactionFlagColor, [
  List<enums.SaveTransactionFlagColor>? defaultValue,
]) {
  if (saveTransactionFlagColor == null) {
    return defaultValue;
  }

  return saveTransactionFlagColor
      .map((e) => saveTransactionFlagColorFromJson(e.toString()))
      .toList();
}

String? saveTransactionWithIdClearedToJson(
    enums.SaveTransactionWithIdCleared? saveTransactionWithIdCleared) {
  return saveTransactionWithIdCleared?.value;
}

enums.SaveTransactionWithIdCleared saveTransactionWithIdClearedFromJson(
  Object? saveTransactionWithIdCleared, [
  enums.SaveTransactionWithIdCleared? defaultValue,
]) {
  return enums.SaveTransactionWithIdCleared.values
          .firstWhereOrNull((e) => e.value == saveTransactionWithIdCleared) ??
      defaultValue ??
      enums.SaveTransactionWithIdCleared.swaggerGeneratedUnknown;
}

List<String> saveTransactionWithIdClearedListToJson(
    List<enums.SaveTransactionWithIdCleared>? saveTransactionWithIdCleared) {
  if (saveTransactionWithIdCleared == null) {
    return [];
  }

  return saveTransactionWithIdCleared.map((e) => e.value!).toList();
}

List<enums.SaveTransactionWithIdCleared>
    saveTransactionWithIdClearedListFromJson(
  List? saveTransactionWithIdCleared, [
  List<enums.SaveTransactionWithIdCleared>? defaultValue,
]) {
  if (saveTransactionWithIdCleared == null) {
    return defaultValue ?? [];
  }

  return saveTransactionWithIdCleared
      .map((e) => saveTransactionWithIdClearedFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionWithIdCleared>?
    saveTransactionWithIdClearedNullableListFromJson(
  List? saveTransactionWithIdCleared, [
  List<enums.SaveTransactionWithIdCleared>? defaultValue,
]) {
  if (saveTransactionWithIdCleared == null) {
    return defaultValue;
  }

  return saveTransactionWithIdCleared
      .map((e) => saveTransactionWithIdClearedFromJson(e.toString()))
      .toList();
}

String? saveTransactionWithIdFlagColorToJson(
    enums.SaveTransactionWithIdFlagColor? saveTransactionWithIdFlagColor) {
  return saveTransactionWithIdFlagColor?.value;
}

enums.SaveTransactionWithIdFlagColor saveTransactionWithIdFlagColorFromJson(
  Object? saveTransactionWithIdFlagColor, [
  enums.SaveTransactionWithIdFlagColor? defaultValue,
]) {
  return enums.SaveTransactionWithIdFlagColor.values
          .firstWhereOrNull((e) => e.value == saveTransactionWithIdFlagColor) ??
      defaultValue ??
      enums.SaveTransactionWithIdFlagColor.swaggerGeneratedUnknown;
}

List<String> saveTransactionWithIdFlagColorListToJson(
    List<enums.SaveTransactionWithIdFlagColor>?
        saveTransactionWithIdFlagColor) {
  if (saveTransactionWithIdFlagColor == null) {
    return [];
  }

  return saveTransactionWithIdFlagColor.map((e) => e.value!).toList();
}

List<enums.SaveTransactionWithIdFlagColor>
    saveTransactionWithIdFlagColorListFromJson(
  List? saveTransactionWithIdFlagColor, [
  List<enums.SaveTransactionWithIdFlagColor>? defaultValue,
]) {
  if (saveTransactionWithIdFlagColor == null) {
    return defaultValue ?? [];
  }

  return saveTransactionWithIdFlagColor
      .map((e) => saveTransactionWithIdFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionWithIdFlagColor>?
    saveTransactionWithIdFlagColorNullableListFromJson(
  List? saveTransactionWithIdFlagColor, [
  List<enums.SaveTransactionWithIdFlagColor>? defaultValue,
]) {
  if (saveTransactionWithIdFlagColor == null) {
    return defaultValue;
  }

  return saveTransactionWithIdFlagColor
      .map((e) => saveTransactionWithIdFlagColorFromJson(e.toString()))
      .toList();
}

String? saveTransactionWithOptionalFieldsClearedToJson(
    enums.SaveTransactionWithOptionalFieldsCleared?
        saveTransactionWithOptionalFieldsCleared) {
  return saveTransactionWithOptionalFieldsCleared?.value;
}

enums.SaveTransactionWithOptionalFieldsCleared
    saveTransactionWithOptionalFieldsClearedFromJson(
  Object? saveTransactionWithOptionalFieldsCleared, [
  enums.SaveTransactionWithOptionalFieldsCleared? defaultValue,
]) {
  return enums.SaveTransactionWithOptionalFieldsCleared.values.firstWhereOrNull(
          (e) => e.value == saveTransactionWithOptionalFieldsCleared) ??
      defaultValue ??
      enums.SaveTransactionWithOptionalFieldsCleared.swaggerGeneratedUnknown;
}

List<String> saveTransactionWithOptionalFieldsClearedListToJson(
    List<enums.SaveTransactionWithOptionalFieldsCleared>?
        saveTransactionWithOptionalFieldsCleared) {
  if (saveTransactionWithOptionalFieldsCleared == null) {
    return [];
  }

  return saveTransactionWithOptionalFieldsCleared.map((e) => e.value!).toList();
}

List<enums.SaveTransactionWithOptionalFieldsCleared>
    saveTransactionWithOptionalFieldsClearedListFromJson(
  List? saveTransactionWithOptionalFieldsCleared, [
  List<enums.SaveTransactionWithOptionalFieldsCleared>? defaultValue,
]) {
  if (saveTransactionWithOptionalFieldsCleared == null) {
    return defaultValue ?? [];
  }

  return saveTransactionWithOptionalFieldsCleared
      .map(
          (e) => saveTransactionWithOptionalFieldsClearedFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionWithOptionalFieldsCleared>?
    saveTransactionWithOptionalFieldsClearedNullableListFromJson(
  List? saveTransactionWithOptionalFieldsCleared, [
  List<enums.SaveTransactionWithOptionalFieldsCleared>? defaultValue,
]) {
  if (saveTransactionWithOptionalFieldsCleared == null) {
    return defaultValue;
  }

  return saveTransactionWithOptionalFieldsCleared
      .map(
          (e) => saveTransactionWithOptionalFieldsClearedFromJson(e.toString()))
      .toList();
}

String? saveTransactionWithOptionalFieldsFlagColorToJson(
    enums.SaveTransactionWithOptionalFieldsFlagColor?
        saveTransactionWithOptionalFieldsFlagColor) {
  return saveTransactionWithOptionalFieldsFlagColor?.value;
}

enums.SaveTransactionWithOptionalFieldsFlagColor
    saveTransactionWithOptionalFieldsFlagColorFromJson(
  Object? saveTransactionWithOptionalFieldsFlagColor, [
  enums.SaveTransactionWithOptionalFieldsFlagColor? defaultValue,
]) {
  return enums.SaveTransactionWithOptionalFieldsFlagColor.values
          .firstWhereOrNull(
              (e) => e.value == saveTransactionWithOptionalFieldsFlagColor) ??
      defaultValue ??
      enums.SaveTransactionWithOptionalFieldsFlagColor.swaggerGeneratedUnknown;
}

List<String> saveTransactionWithOptionalFieldsFlagColorListToJson(
    List<enums.SaveTransactionWithOptionalFieldsFlagColor>?
        saveTransactionWithOptionalFieldsFlagColor) {
  if (saveTransactionWithOptionalFieldsFlagColor == null) {
    return [];
  }

  return saveTransactionWithOptionalFieldsFlagColor
      .map((e) => e.value!)
      .toList();
}

List<enums.SaveTransactionWithOptionalFieldsFlagColor>
    saveTransactionWithOptionalFieldsFlagColorListFromJson(
  List? saveTransactionWithOptionalFieldsFlagColor, [
  List<enums.SaveTransactionWithOptionalFieldsFlagColor>? defaultValue,
]) {
  if (saveTransactionWithOptionalFieldsFlagColor == null) {
    return defaultValue ?? [];
  }

  return saveTransactionWithOptionalFieldsFlagColor
      .map((e) =>
          saveTransactionWithOptionalFieldsFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.SaveTransactionWithOptionalFieldsFlagColor>?
    saveTransactionWithOptionalFieldsFlagColorNullableListFromJson(
  List? saveTransactionWithOptionalFieldsFlagColor, [
  List<enums.SaveTransactionWithOptionalFieldsFlagColor>? defaultValue,
]) {
  if (saveTransactionWithOptionalFieldsFlagColor == null) {
    return defaultValue;
  }

  return saveTransactionWithOptionalFieldsFlagColor
      .map((e) =>
          saveTransactionWithOptionalFieldsFlagColorFromJson(e.toString()))
      .toList();
}

String? transactionSummaryClearedToJson(
    enums.TransactionSummaryCleared? transactionSummaryCleared) {
  return transactionSummaryCleared?.value;
}

enums.TransactionSummaryCleared transactionSummaryClearedFromJson(
  Object? transactionSummaryCleared, [
  enums.TransactionSummaryCleared? defaultValue,
]) {
  return enums.TransactionSummaryCleared.values
          .firstWhereOrNull((e) => e.value == transactionSummaryCleared) ??
      defaultValue ??
      enums.TransactionSummaryCleared.swaggerGeneratedUnknown;
}

List<String> transactionSummaryClearedListToJson(
    List<enums.TransactionSummaryCleared>? transactionSummaryCleared) {
  if (transactionSummaryCleared == null) {
    return [];
  }

  return transactionSummaryCleared.map((e) => e.value!).toList();
}

List<enums.TransactionSummaryCleared> transactionSummaryClearedListFromJson(
  List? transactionSummaryCleared, [
  List<enums.TransactionSummaryCleared>? defaultValue,
]) {
  if (transactionSummaryCleared == null) {
    return defaultValue ?? [];
  }

  return transactionSummaryCleared
      .map((e) => transactionSummaryClearedFromJson(e.toString()))
      .toList();
}

List<enums.TransactionSummaryCleared>?
    transactionSummaryClearedNullableListFromJson(
  List? transactionSummaryCleared, [
  List<enums.TransactionSummaryCleared>? defaultValue,
]) {
  if (transactionSummaryCleared == null) {
    return defaultValue;
  }

  return transactionSummaryCleared
      .map((e) => transactionSummaryClearedFromJson(e.toString()))
      .toList();
}

String? transactionSummaryFlagColorToJson(
    enums.TransactionSummaryFlagColor? transactionSummaryFlagColor) {
  return transactionSummaryFlagColor?.value;
}

enums.TransactionSummaryFlagColor transactionSummaryFlagColorFromJson(
  Object? transactionSummaryFlagColor, [
  enums.TransactionSummaryFlagColor? defaultValue,
]) {
  return enums.TransactionSummaryFlagColor.values
          .firstWhereOrNull((e) => e.value == transactionSummaryFlagColor) ??
      defaultValue ??
      enums.TransactionSummaryFlagColor.swaggerGeneratedUnknown;
}

List<String> transactionSummaryFlagColorListToJson(
    List<enums.TransactionSummaryFlagColor>? transactionSummaryFlagColor) {
  if (transactionSummaryFlagColor == null) {
    return [];
  }

  return transactionSummaryFlagColor.map((e) => e.value!).toList();
}

List<enums.TransactionSummaryFlagColor> transactionSummaryFlagColorListFromJson(
  List? transactionSummaryFlagColor, [
  List<enums.TransactionSummaryFlagColor>? defaultValue,
]) {
  if (transactionSummaryFlagColor == null) {
    return defaultValue ?? [];
  }

  return transactionSummaryFlagColor
      .map((e) => transactionSummaryFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.TransactionSummaryFlagColor>?
    transactionSummaryFlagColorNullableListFromJson(
  List? transactionSummaryFlagColor, [
  List<enums.TransactionSummaryFlagColor>? defaultValue,
]) {
  if (transactionSummaryFlagColor == null) {
    return defaultValue;
  }

  return transactionSummaryFlagColor
      .map((e) => transactionSummaryFlagColorFromJson(e.toString()))
      .toList();
}

String? transactionDetailClearedToJson(
    enums.TransactionDetailCleared? transactionDetailCleared) {
  return transactionDetailCleared?.value;
}

enums.TransactionDetailCleared transactionDetailClearedFromJson(
  Object? transactionDetailCleared, [
  enums.TransactionDetailCleared? defaultValue,
]) {
  return enums.TransactionDetailCleared.values
          .firstWhereOrNull((e) => e.value == transactionDetailCleared) ??
      defaultValue ??
      enums.TransactionDetailCleared.swaggerGeneratedUnknown;
}

List<String> transactionDetailClearedListToJson(
    List<enums.TransactionDetailCleared>? transactionDetailCleared) {
  if (transactionDetailCleared == null) {
    return [];
  }

  return transactionDetailCleared.map((e) => e.value!).toList();
}

List<enums.TransactionDetailCleared> transactionDetailClearedListFromJson(
  List? transactionDetailCleared, [
  List<enums.TransactionDetailCleared>? defaultValue,
]) {
  if (transactionDetailCleared == null) {
    return defaultValue ?? [];
  }

  return transactionDetailCleared
      .map((e) => transactionDetailClearedFromJson(e.toString()))
      .toList();
}

List<enums.TransactionDetailCleared>?
    transactionDetailClearedNullableListFromJson(
  List? transactionDetailCleared, [
  List<enums.TransactionDetailCleared>? defaultValue,
]) {
  if (transactionDetailCleared == null) {
    return defaultValue;
  }

  return transactionDetailCleared
      .map((e) => transactionDetailClearedFromJson(e.toString()))
      .toList();
}

String? transactionDetailFlagColorToJson(
    enums.TransactionDetailFlagColor? transactionDetailFlagColor) {
  return transactionDetailFlagColor?.value;
}

enums.TransactionDetailFlagColor transactionDetailFlagColorFromJson(
  Object? transactionDetailFlagColor, [
  enums.TransactionDetailFlagColor? defaultValue,
]) {
  return enums.TransactionDetailFlagColor.values
          .firstWhereOrNull((e) => e.value == transactionDetailFlagColor) ??
      defaultValue ??
      enums.TransactionDetailFlagColor.swaggerGeneratedUnknown;
}

List<String> transactionDetailFlagColorListToJson(
    List<enums.TransactionDetailFlagColor>? transactionDetailFlagColor) {
  if (transactionDetailFlagColor == null) {
    return [];
  }

  return transactionDetailFlagColor.map((e) => e.value!).toList();
}

List<enums.TransactionDetailFlagColor> transactionDetailFlagColorListFromJson(
  List? transactionDetailFlagColor, [
  List<enums.TransactionDetailFlagColor>? defaultValue,
]) {
  if (transactionDetailFlagColor == null) {
    return defaultValue ?? [];
  }

  return transactionDetailFlagColor
      .map((e) => transactionDetailFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.TransactionDetailFlagColor>?
    transactionDetailFlagColorNullableListFromJson(
  List? transactionDetailFlagColor, [
  List<enums.TransactionDetailFlagColor>? defaultValue,
]) {
  if (transactionDetailFlagColor == null) {
    return defaultValue;
  }

  return transactionDetailFlagColor
      .map((e) => transactionDetailFlagColorFromJson(e.toString()))
      .toList();
}

String? hybridTransactionTypeToJson(
    enums.HybridTransactionType? hybridTransactionType) {
  return hybridTransactionType?.value;
}

enums.HybridTransactionType hybridTransactionTypeFromJson(
  Object? hybridTransactionType, [
  enums.HybridTransactionType? defaultValue,
]) {
  return enums.HybridTransactionType.values
          .firstWhereOrNull((e) => e.value == hybridTransactionType) ??
      defaultValue ??
      enums.HybridTransactionType.swaggerGeneratedUnknown;
}

List<String> hybridTransactionTypeListToJson(
    List<enums.HybridTransactionType>? hybridTransactionType) {
  if (hybridTransactionType == null) {
    return [];
  }

  return hybridTransactionType.map((e) => e.value!).toList();
}

List<enums.HybridTransactionType> hybridTransactionTypeListFromJson(
  List? hybridTransactionType, [
  List<enums.HybridTransactionType>? defaultValue,
]) {
  if (hybridTransactionType == null) {
    return defaultValue ?? [];
  }

  return hybridTransactionType
      .map((e) => hybridTransactionTypeFromJson(e.toString()))
      .toList();
}

List<enums.HybridTransactionType>? hybridTransactionTypeNullableListFromJson(
  List? hybridTransactionType, [
  List<enums.HybridTransactionType>? defaultValue,
]) {
  if (hybridTransactionType == null) {
    return defaultValue;
  }

  return hybridTransactionType
      .map((e) => hybridTransactionTypeFromJson(e.toString()))
      .toList();
}

String? hybridTransactionClearedToJson(
    enums.HybridTransactionCleared? hybridTransactionCleared) {
  return hybridTransactionCleared?.value;
}

enums.HybridTransactionCleared hybridTransactionClearedFromJson(
  Object? hybridTransactionCleared, [
  enums.HybridTransactionCleared? defaultValue,
]) {
  return enums.HybridTransactionCleared.values
          .firstWhereOrNull((e) => e.value == hybridTransactionCleared) ??
      defaultValue ??
      enums.HybridTransactionCleared.swaggerGeneratedUnknown;
}

List<String> hybridTransactionClearedListToJson(
    List<enums.HybridTransactionCleared>? hybridTransactionCleared) {
  if (hybridTransactionCleared == null) {
    return [];
  }

  return hybridTransactionCleared.map((e) => e.value!).toList();
}

List<enums.HybridTransactionCleared> hybridTransactionClearedListFromJson(
  List? hybridTransactionCleared, [
  List<enums.HybridTransactionCleared>? defaultValue,
]) {
  if (hybridTransactionCleared == null) {
    return defaultValue ?? [];
  }

  return hybridTransactionCleared
      .map((e) => hybridTransactionClearedFromJson(e.toString()))
      .toList();
}

List<enums.HybridTransactionCleared>?
    hybridTransactionClearedNullableListFromJson(
  List? hybridTransactionCleared, [
  List<enums.HybridTransactionCleared>? defaultValue,
]) {
  if (hybridTransactionCleared == null) {
    return defaultValue;
  }

  return hybridTransactionCleared
      .map((e) => hybridTransactionClearedFromJson(e.toString()))
      .toList();
}

String? hybridTransactionFlagColorToJson(
    enums.HybridTransactionFlagColor? hybridTransactionFlagColor) {
  return hybridTransactionFlagColor?.value;
}

enums.HybridTransactionFlagColor hybridTransactionFlagColorFromJson(
  Object? hybridTransactionFlagColor, [
  enums.HybridTransactionFlagColor? defaultValue,
]) {
  return enums.HybridTransactionFlagColor.values
          .firstWhereOrNull((e) => e.value == hybridTransactionFlagColor) ??
      defaultValue ??
      enums.HybridTransactionFlagColor.swaggerGeneratedUnknown;
}

List<String> hybridTransactionFlagColorListToJson(
    List<enums.HybridTransactionFlagColor>? hybridTransactionFlagColor) {
  if (hybridTransactionFlagColor == null) {
    return [];
  }

  return hybridTransactionFlagColor.map((e) => e.value!).toList();
}

List<enums.HybridTransactionFlagColor> hybridTransactionFlagColorListFromJson(
  List? hybridTransactionFlagColor, [
  List<enums.HybridTransactionFlagColor>? defaultValue,
]) {
  if (hybridTransactionFlagColor == null) {
    return defaultValue ?? [];
  }

  return hybridTransactionFlagColor
      .map((e) => hybridTransactionFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.HybridTransactionFlagColor>?
    hybridTransactionFlagColorNullableListFromJson(
  List? hybridTransactionFlagColor, [
  List<enums.HybridTransactionFlagColor>? defaultValue,
]) {
  if (hybridTransactionFlagColor == null) {
    return defaultValue;
  }

  return hybridTransactionFlagColor
      .map((e) => hybridTransactionFlagColorFromJson(e.toString()))
      .toList();
}

String? scheduledTransactionSummaryFrequencyToJson(
    enums.ScheduledTransactionSummaryFrequency?
        scheduledTransactionSummaryFrequency) {
  return scheduledTransactionSummaryFrequency?.value;
}

enums.ScheduledTransactionSummaryFrequency
    scheduledTransactionSummaryFrequencyFromJson(
  Object? scheduledTransactionSummaryFrequency, [
  enums.ScheduledTransactionSummaryFrequency? defaultValue,
]) {
  return enums.ScheduledTransactionSummaryFrequency.values.firstWhereOrNull(
          (e) => e.value == scheduledTransactionSummaryFrequency) ??
      defaultValue ??
      enums.ScheduledTransactionSummaryFrequency.swaggerGeneratedUnknown;
}

List<String> scheduledTransactionSummaryFrequencyListToJson(
    List<enums.ScheduledTransactionSummaryFrequency>?
        scheduledTransactionSummaryFrequency) {
  if (scheduledTransactionSummaryFrequency == null) {
    return [];
  }

  return scheduledTransactionSummaryFrequency.map((e) => e.value!).toList();
}

List<enums.ScheduledTransactionSummaryFrequency>
    scheduledTransactionSummaryFrequencyListFromJson(
  List? scheduledTransactionSummaryFrequency, [
  List<enums.ScheduledTransactionSummaryFrequency>? defaultValue,
]) {
  if (scheduledTransactionSummaryFrequency == null) {
    return defaultValue ?? [];
  }

  return scheduledTransactionSummaryFrequency
      .map((e) => scheduledTransactionSummaryFrequencyFromJson(e.toString()))
      .toList();
}

List<enums.ScheduledTransactionSummaryFrequency>?
    scheduledTransactionSummaryFrequencyNullableListFromJson(
  List? scheduledTransactionSummaryFrequency, [
  List<enums.ScheduledTransactionSummaryFrequency>? defaultValue,
]) {
  if (scheduledTransactionSummaryFrequency == null) {
    return defaultValue;
  }

  return scheduledTransactionSummaryFrequency
      .map((e) => scheduledTransactionSummaryFrequencyFromJson(e.toString()))
      .toList();
}

String? scheduledTransactionSummaryFlagColorToJson(
    enums.ScheduledTransactionSummaryFlagColor?
        scheduledTransactionSummaryFlagColor) {
  return scheduledTransactionSummaryFlagColor?.value;
}

enums.ScheduledTransactionSummaryFlagColor
    scheduledTransactionSummaryFlagColorFromJson(
  Object? scheduledTransactionSummaryFlagColor, [
  enums.ScheduledTransactionSummaryFlagColor? defaultValue,
]) {
  return enums.ScheduledTransactionSummaryFlagColor.values.firstWhereOrNull(
          (e) => e.value == scheduledTransactionSummaryFlagColor) ??
      defaultValue ??
      enums.ScheduledTransactionSummaryFlagColor.swaggerGeneratedUnknown;
}

List<String> scheduledTransactionSummaryFlagColorListToJson(
    List<enums.ScheduledTransactionSummaryFlagColor>?
        scheduledTransactionSummaryFlagColor) {
  if (scheduledTransactionSummaryFlagColor == null) {
    return [];
  }

  return scheduledTransactionSummaryFlagColor.map((e) => e.value!).toList();
}

List<enums.ScheduledTransactionSummaryFlagColor>
    scheduledTransactionSummaryFlagColorListFromJson(
  List? scheduledTransactionSummaryFlagColor, [
  List<enums.ScheduledTransactionSummaryFlagColor>? defaultValue,
]) {
  if (scheduledTransactionSummaryFlagColor == null) {
    return defaultValue ?? [];
  }

  return scheduledTransactionSummaryFlagColor
      .map((e) => scheduledTransactionSummaryFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.ScheduledTransactionSummaryFlagColor>?
    scheduledTransactionSummaryFlagColorNullableListFromJson(
  List? scheduledTransactionSummaryFlagColor, [
  List<enums.ScheduledTransactionSummaryFlagColor>? defaultValue,
]) {
  if (scheduledTransactionSummaryFlagColor == null) {
    return defaultValue;
  }

  return scheduledTransactionSummaryFlagColor
      .map((e) => scheduledTransactionSummaryFlagColorFromJson(e.toString()))
      .toList();
}

String? scheduledTransactionDetailFrequencyToJson(
    enums.ScheduledTransactionDetailFrequency?
        scheduledTransactionDetailFrequency) {
  return scheduledTransactionDetailFrequency?.value;
}

enums.ScheduledTransactionDetailFrequency
    scheduledTransactionDetailFrequencyFromJson(
  Object? scheduledTransactionDetailFrequency, [
  enums.ScheduledTransactionDetailFrequency? defaultValue,
]) {
  return enums.ScheduledTransactionDetailFrequency.values.firstWhereOrNull(
          (e) => e.value == scheduledTransactionDetailFrequency) ??
      defaultValue ??
      enums.ScheduledTransactionDetailFrequency.swaggerGeneratedUnknown;
}

List<String> scheduledTransactionDetailFrequencyListToJson(
    List<enums.ScheduledTransactionDetailFrequency>?
        scheduledTransactionDetailFrequency) {
  if (scheduledTransactionDetailFrequency == null) {
    return [];
  }

  return scheduledTransactionDetailFrequency.map((e) => e.value!).toList();
}

List<enums.ScheduledTransactionDetailFrequency>
    scheduledTransactionDetailFrequencyListFromJson(
  List? scheduledTransactionDetailFrequency, [
  List<enums.ScheduledTransactionDetailFrequency>? defaultValue,
]) {
  if (scheduledTransactionDetailFrequency == null) {
    return defaultValue ?? [];
  }

  return scheduledTransactionDetailFrequency
      .map((e) => scheduledTransactionDetailFrequencyFromJson(e.toString()))
      .toList();
}

List<enums.ScheduledTransactionDetailFrequency>?
    scheduledTransactionDetailFrequencyNullableListFromJson(
  List? scheduledTransactionDetailFrequency, [
  List<enums.ScheduledTransactionDetailFrequency>? defaultValue,
]) {
  if (scheduledTransactionDetailFrequency == null) {
    return defaultValue;
  }

  return scheduledTransactionDetailFrequency
      .map((e) => scheduledTransactionDetailFrequencyFromJson(e.toString()))
      .toList();
}

String? scheduledTransactionDetailFlagColorToJson(
    enums.ScheduledTransactionDetailFlagColor?
        scheduledTransactionDetailFlagColor) {
  return scheduledTransactionDetailFlagColor?.value;
}

enums.ScheduledTransactionDetailFlagColor
    scheduledTransactionDetailFlagColorFromJson(
  Object? scheduledTransactionDetailFlagColor, [
  enums.ScheduledTransactionDetailFlagColor? defaultValue,
]) {
  return enums.ScheduledTransactionDetailFlagColor.values.firstWhereOrNull(
          (e) => e.value == scheduledTransactionDetailFlagColor) ??
      defaultValue ??
      enums.ScheduledTransactionDetailFlagColor.swaggerGeneratedUnknown;
}

List<String> scheduledTransactionDetailFlagColorListToJson(
    List<enums.ScheduledTransactionDetailFlagColor>?
        scheduledTransactionDetailFlagColor) {
  if (scheduledTransactionDetailFlagColor == null) {
    return [];
  }

  return scheduledTransactionDetailFlagColor.map((e) => e.value!).toList();
}

List<enums.ScheduledTransactionDetailFlagColor>
    scheduledTransactionDetailFlagColorListFromJson(
  List? scheduledTransactionDetailFlagColor, [
  List<enums.ScheduledTransactionDetailFlagColor>? defaultValue,
]) {
  if (scheduledTransactionDetailFlagColor == null) {
    return defaultValue ?? [];
  }

  return scheduledTransactionDetailFlagColor
      .map((e) => scheduledTransactionDetailFlagColorFromJson(e.toString()))
      .toList();
}

List<enums.ScheduledTransactionDetailFlagColor>?
    scheduledTransactionDetailFlagColorNullableListFromJson(
  List? scheduledTransactionDetailFlagColor, [
  List<enums.ScheduledTransactionDetailFlagColor>? defaultValue,
]) {
  if (scheduledTransactionDetailFlagColor == null) {
    return defaultValue;
  }

  return scheduledTransactionDetailFlagColor
      .map((e) => scheduledTransactionDetailFlagColorFromJson(e.toString()))
      .toList();
}

// ignore: unused_element
String? _dateToJson(DateTime? date) {
  if (date == null) {
    return null;
  }

  final year = date.year.toString();
  final month = date.month < 10 ? '0${date.month}' : date.month.toString();
  final day = date.day < 10 ? '0${date.day}' : date.day.toString();

  return '$year-$month-$day';
}

class Wrapped<T> {
  final T value;
  const Wrapped.value(this.value);
}
