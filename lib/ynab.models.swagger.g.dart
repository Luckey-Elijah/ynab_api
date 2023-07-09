// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ynab.models.swagger.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      error: ErrorDetail.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'error': instance.error.toJson(),
    };

ErrorDetail _$ErrorDetailFromJson(Map<String, dynamic> json) => ErrorDetail(
      id: json['id'] as String,
      name: json['name'] as String,
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$ErrorDetailToJson(ErrorDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      data: UserResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
    };

DateFormat _$DateFormatFromJson(Map<String, dynamic> json) => DateFormat(
      format: json['format'] as String,
    );

Map<String, dynamic> _$DateFormatToJson(DateFormat instance) =>
    <String, dynamic>{
      'format': instance.format,
    };

CurrencyFormat _$CurrencyFormatFromJson(Map<String, dynamic> json) =>
    CurrencyFormat(
      isoCode: json['iso_code'] as String,
      exampleFormat: json['example_format'] as String,
      decimalDigits: json['decimal_digits'] as int,
      decimalSeparator: json['decimal_separator'] as String,
      symbolFirst: json['symbol_first'] as bool,
      groupSeparator: json['group_separator'] as String,
      currencySymbol: json['currency_symbol'] as String,
      displaySymbol: json['display_symbol'] as bool,
    );

Map<String, dynamic> _$CurrencyFormatToJson(CurrencyFormat instance) =>
    <String, dynamic>{
      'iso_code': instance.isoCode,
      'example_format': instance.exampleFormat,
      'decimal_digits': instance.decimalDigits,
      'decimal_separator': instance.decimalSeparator,
      'symbol_first': instance.symbolFirst,
      'group_separator': instance.groupSeparator,
      'currency_symbol': instance.currencySymbol,
      'display_symbol': instance.displaySymbol,
    };

BudgetSummaryResponse _$BudgetSummaryResponseFromJson(
        Map<String, dynamic> json) =>
    BudgetSummaryResponse(
      data: BudgetSummaryResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetSummaryResponseToJson(
        BudgetSummaryResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

BudgetSummary _$BudgetSummaryFromJson(Map<String, dynamic> json) =>
    BudgetSummary(
      id: json['id'] as String,
      name: json['name'] as String,
      lastModifiedOn: json['last_modified_on'] == null
          ? null
          : DateTime.parse(json['last_modified_on'] as String),
      firstMonth: json['first_month'] == null
          ? null
          : DateTime.parse(json['first_month'] as String),
      lastMonth: json['last_month'] == null
          ? null
          : DateTime.parse(json['last_month'] as String),
      dateFormat: json['date_format'] == null
          ? null
          : DateFormat.fromJson(json['date_format'] as Map<String, dynamic>),
      currencyFormat: json['currency_format'] == null
          ? null
          : CurrencyFormat.fromJson(
              json['currency_format'] as Map<String, dynamic>),
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BudgetSummaryToJson(BudgetSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_modified_on': instance.lastModifiedOn?.toIso8601String(),
      'first_month': _dateToJson(instance.firstMonth),
      'last_month': _dateToJson(instance.lastMonth),
      'date_format': instance.dateFormat?.toJson(),
      'currency_format': instance.currencyFormat?.toJson(),
      'accounts': instance.accounts?.map((e) => e.toJson()).toList(),
    };

BudgetDetailResponse _$BudgetDetailResponseFromJson(
        Map<String, dynamic> json) =>
    BudgetDetailResponse(
      data: BudgetDetailResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetDetailResponseToJson(
        BudgetDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

BudgetDetail _$BudgetDetailFromJson(Map<String, dynamic> json) => BudgetDetail(
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      payees: (json['payees'] as List<dynamic>?)
              ?.map((e) => Payee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      payeeLocations: (json['payee_locations'] as List<dynamic>?)
              ?.map((e) => PayeeLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      categoryGroups: (json['category_groups'] as List<dynamic>?)
              ?.map((e) => CategoryGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      months: (json['months'] as List<dynamic>?)
              ?.map((e) => MonthDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map((e) => SubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      scheduledTransactions: (json['scheduled_transactions'] as List<dynamic>?)
              ?.map((e) => ScheduledTransactionSummary.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      scheduledSubtransactions: (json['scheduled_subtransactions']
                  as List<dynamic>?)
              ?.map((e) =>
                  ScheduledSubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String,
      name: json['name'] as String,
      lastModifiedOn: json['last_modified_on'] == null
          ? null
          : DateTime.parse(json['last_modified_on'] as String),
      firstMonth: json['first_month'] == null
          ? null
          : DateTime.parse(json['first_month'] as String),
      lastMonth: json['last_month'] == null
          ? null
          : DateTime.parse(json['last_month'] as String),
      dateFormat: json['date_format'] == null
          ? null
          : DateFormat.fromJson(json['date_format'] as Map<String, dynamic>),
      currencyFormat: json['currency_format'] == null
          ? null
          : CurrencyFormat.fromJson(
              json['currency_format'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetDetailToJson(BudgetDetail instance) =>
    <String, dynamic>{
      'accounts': instance.accounts?.map((e) => e.toJson()).toList(),
      'payees': instance.payees?.map((e) => e.toJson()).toList(),
      'payee_locations':
          instance.payeeLocations?.map((e) => e.toJson()).toList(),
      'category_groups':
          instance.categoryGroups?.map((e) => e.toJson()).toList(),
      'categories': instance.categories?.map((e) => e.toJson()).toList(),
      'months': instance.months?.map((e) => e.toJson()).toList(),
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
      'subtransactions':
          instance.subtransactions?.map((e) => e.toJson()).toList(),
      'scheduled_transactions':
          instance.scheduledTransactions?.map((e) => e.toJson()).toList(),
      'scheduled_subtransactions':
          instance.scheduledSubtransactions?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'last_modified_on': instance.lastModifiedOn?.toIso8601String(),
      'first_month': _dateToJson(instance.firstMonth),
      'last_month': _dateToJson(instance.lastMonth),
      'date_format': instance.dateFormat?.toJson(),
      'currency_format': instance.currencyFormat?.toJson(),
    };

BudgetSettingsResponse _$BudgetSettingsResponseFromJson(
        Map<String, dynamic> json) =>
    BudgetSettingsResponse(
      data: BudgetSettingsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetSettingsResponseToJson(
        BudgetSettingsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

BudgetSettings _$BudgetSettingsFromJson(Map<String, dynamic> json) =>
    BudgetSettings(
      dateFormat:
          DateFormat.fromJson(json['date_format'] as Map<String, dynamic>),
      currencyFormat: CurrencyFormat.fromJson(
          json['currency_format'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetSettingsToJson(BudgetSettings instance) =>
    <String, dynamic>{
      'date_format': instance.dateFormat.toJson(),
      'currency_format': instance.currencyFormat.toJson(),
    };

AccountsResponse _$AccountsResponseFromJson(Map<String, dynamic> json) =>
    AccountsResponse(
      data:
          AccountsResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountsResponseToJson(AccountsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

AccountResponse _$AccountResponseFromJson(Map<String, dynamic> json) =>
    AccountResponse(
      data: AccountResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountResponseToJson(AccountResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

Account _$AccountFromJson(Map<String, dynamic> json) => Account(
      id: json['id'] as String,
      name: json['name'] as String,
      type: accountTypeFromJson(json['type']),
      onBudget: json['on_budget'] as bool,
      closed: json['closed'] as bool,
      note: json['note'] as String?,
      balance: json['balance'] as int,
      clearedBalance: json['cleared_balance'] as int,
      unclearedBalance: json['uncleared_balance'] as int,
      transferPayeeId: json['transfer_payee_id'] as String,
      directImportLinked: json['direct_import_linked'] as bool?,
      directImportInError: json['direct_import_in_error'] as bool?,
      lastReconciledAt: json['last_reconciled_at'] == null
          ? null
          : DateTime.parse(json['last_reconciled_at'] as String),
      debtOriginalBalance: json['debt_original_balance'] as int?,
      debtInterestRates: json['debt_interest_rates'] == null
          ? null
          : LoanAccountPeriodicValue.fromJson(
              json['debt_interest_rates'] as Map<String, dynamic>),
      debtMinimumPayments: json['debt_minimum_payments'] == null
          ? null
          : LoanAccountPeriodicValue.fromJson(
              json['debt_minimum_payments'] as Map<String, dynamic>),
      debtEscrowAmounts: json['debt_escrow_amounts'] == null
          ? null
          : LoanAccountPeriodicValue.fromJson(
              json['debt_escrow_amounts'] as Map<String, dynamic>),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$AccountToJson(Account instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': accountTypeToJson(instance.type),
      'on_budget': instance.onBudget,
      'closed': instance.closed,
      'note': instance.note,
      'balance': instance.balance,
      'cleared_balance': instance.clearedBalance,
      'uncleared_balance': instance.unclearedBalance,
      'transfer_payee_id': instance.transferPayeeId,
      'direct_import_linked': instance.directImportLinked,
      'direct_import_in_error': instance.directImportInError,
      'last_reconciled_at': instance.lastReconciledAt?.toIso8601String(),
      'debt_original_balance': instance.debtOriginalBalance,
      'debt_interest_rates': instance.debtInterestRates?.toJson(),
      'debt_minimum_payments': instance.debtMinimumPayments?.toJson(),
      'debt_escrow_amounts': instance.debtEscrowAmounts?.toJson(),
      'deleted': instance.deleted,
    };

PostAccountWrapper _$PostAccountWrapperFromJson(Map<String, dynamic> json) =>
    PostAccountWrapper(
      account: SaveAccount.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostAccountWrapperToJson(PostAccountWrapper instance) =>
    <String, dynamic>{
      'account': instance.account.toJson(),
    };

SaveAccount _$SaveAccountFromJson(Map<String, dynamic> json) => SaveAccount(
      name: json['name'] as String,
      type: accountTypeFromJson(json['type']),
      balance: json['balance'] as int,
    );

Map<String, dynamic> _$SaveAccountToJson(SaveAccount instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': accountTypeToJson(instance.type),
      'balance': instance.balance,
    };

LoanAccountPeriodicValue _$LoanAccountPeriodicValueFromJson(
        Map<String, dynamic> json) =>
    LoanAccountPeriodicValue();

Map<String, dynamic> _$LoanAccountPeriodicValueToJson(
        LoanAccountPeriodicValue instance) =>
    <String, dynamic>{};

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    CategoriesResponse(
      data: CategoriesResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesResponseToJson(CategoriesResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) =>
    CategoryResponse(
      data:
          CategoryResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

CategoryGroupWithCategories _$CategoryGroupWithCategoriesFromJson(
        Map<String, dynamic> json) =>
    CategoryGroupWithCategories(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String,
      name: json['name'] as String,
      hidden: json['hidden'] as bool,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$CategoryGroupWithCategoriesToJson(
        CategoryGroupWithCategories instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'hidden': instance.hidden,
      'deleted': instance.deleted,
    };

CategoryGroup _$CategoryGroupFromJson(Map<String, dynamic> json) =>
    CategoryGroup(
      id: json['id'] as String,
      name: json['name'] as String,
      hidden: json['hidden'] as bool,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$CategoryGroupToJson(CategoryGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'hidden': instance.hidden,
      'deleted': instance.deleted,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String,
      categoryGroupId: json['category_group_id'] as String,
      categoryGroupName: json['category_group_name'] as String?,
      name: json['name'] as String,
      hidden: json['hidden'] as bool,
      originalCategoryGroupId: json['original_category_group_id'] as String?,
      note: json['note'] as String?,
      budgeted: json['budgeted'] as int,
      activity: json['activity'] as int,
      balance: json['balance'] as int,
      goalType: categoryGoalTypeFromJson(json['goal_type']),
      goalDay: json['goal_day'] as int?,
      goalCadence: json['goal_cadence'] as int?,
      goalCadenceFrequency: json['goal_cadence_frequency'] as int?,
      goalCreationMonth: json['goal_creation_month'] == null
          ? null
          : DateTime.parse(json['goal_creation_month'] as String),
      goalTarget: json['goal_target'] as int?,
      goalTargetMonth: json['goal_target_month'] == null
          ? null
          : DateTime.parse(json['goal_target_month'] as String),
      goalPercentageComplete: json['goal_percentage_complete'] as int?,
      goalMonthsToBudget: json['goal_months_to_budget'] as int?,
      goalUnderFunded: json['goal_under_funded'] as int?,
      goalOverallFunded: json['goal_overall_funded'] as int?,
      goalOverallLeft: json['goal_overall_left'] as int?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'category_group_id': instance.categoryGroupId,
      'category_group_name': instance.categoryGroupName,
      'name': instance.name,
      'hidden': instance.hidden,
      'original_category_group_id': instance.originalCategoryGroupId,
      'note': instance.note,
      'budgeted': instance.budgeted,
      'activity': instance.activity,
      'balance': instance.balance,
      'goal_type': categoryGoalTypeToJson(instance.goalType),
      'goal_day': instance.goalDay,
      'goal_cadence': instance.goalCadence,
      'goal_cadence_frequency': instance.goalCadenceFrequency,
      'goal_creation_month': _dateToJson(instance.goalCreationMonth),
      'goal_target': instance.goalTarget,
      'goal_target_month': _dateToJson(instance.goalTargetMonth),
      'goal_percentage_complete': instance.goalPercentageComplete,
      'goal_months_to_budget': instance.goalMonthsToBudget,
      'goal_under_funded': instance.goalUnderFunded,
      'goal_overall_funded': instance.goalOverallFunded,
      'goal_overall_left': instance.goalOverallLeft,
      'deleted': instance.deleted,
    };

SaveCategoryResponse _$SaveCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    SaveCategoryResponse(
      data: SaveCategoryResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaveCategoryResponseToJson(
        SaveCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

PayeesResponse _$PayeesResponseFromJson(Map<String, dynamic> json) =>
    PayeesResponse(
      data: PayeesResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeesResponseToJson(PayeesResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

PayeeResponse _$PayeeResponseFromJson(Map<String, dynamic> json) =>
    PayeeResponse(
      data: PayeeResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeeResponseToJson(PayeeResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

Payee _$PayeeFromJson(Map<String, dynamic> json) => Payee(
      id: json['id'] as String,
      name: json['name'] as String,
      transferAccountId: json['transfer_account_id'] as String?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$PayeeToJson(Payee instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transfer_account_id': instance.transferAccountId,
      'deleted': instance.deleted,
    };

PayeeLocationsResponse _$PayeeLocationsResponseFromJson(
        Map<String, dynamic> json) =>
    PayeeLocationsResponse(
      data: PayeeLocationsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeeLocationsResponseToJson(
        PayeeLocationsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

PayeeLocationResponse _$PayeeLocationResponseFromJson(
        Map<String, dynamic> json) =>
    PayeeLocationResponse(
      data: PayeeLocationResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeeLocationResponseToJson(
        PayeeLocationResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

PayeeLocation _$PayeeLocationFromJson(Map<String, dynamic> json) =>
    PayeeLocation(
      id: json['id'] as String,
      payeeId: json['payee_id'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$PayeeLocationToJson(PayeeLocation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payee_id': instance.payeeId,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'deleted': instance.deleted,
    };

TransactionsResponse _$TransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionsResponse(
      data: TransactionsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionsResponseToJson(
        TransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

HybridTransactionsResponse _$HybridTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    HybridTransactionsResponse(
      data: HybridTransactionsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HybridTransactionsResponseToJson(
        HybridTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

PutTransactionWrapper _$PutTransactionWrapperFromJson(
        Map<String, dynamic> json) =>
    PutTransactionWrapper(
      transaction:
          SaveTransaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PutTransactionWrapperToJson(
        PutTransactionWrapper instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
    };

PostTransactionsWrapper _$PostTransactionsWrapperFromJson(
        Map<String, dynamic> json) =>
    PostTransactionsWrapper(
      transaction: json['transaction'] == null
          ? null
          : SaveTransaction.fromJson(
              json['transaction'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => SaveTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PostTransactionsWrapperToJson(
        PostTransactionsWrapper instance) =>
    <String, dynamic>{
      'transaction': instance.transaction?.toJson(),
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
    };

SaveTransaction _$SaveTransactionFromJson(Map<String, dynamic> json) =>
    SaveTransaction(
      accountId: json['account_id'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      payeeId: json['payee_id'] as String?,
      payeeName: json['payee_name'] as String?,
      categoryId: json['category_id'] as String?,
      memo: json['memo'] as String?,
      cleared: saveTransactionClearedFromJson(json['cleared']),
      approved: json['approved'] as bool?,
      flagColor: saveTransactionFlagColorFromJson(json['flag_color']),
      importId: json['import_id'] as String?,
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map(
                  (e) => SaveSubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SaveTransactionToJson(SaveTransaction instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'payee_id': instance.payeeId,
      'payee_name': instance.payeeName,
      'category_id': instance.categoryId,
      'memo': instance.memo,
      'cleared': saveTransactionClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color': saveTransactionFlagColorToJson(instance.flagColor),
      'import_id': instance.importId,
      'subtransactions':
          instance.subtransactions?.map((e) => e.toJson()).toList(),
    };

PatchTransactionsWrapper _$PatchTransactionsWrapperFromJson(
        Map<String, dynamic> json) =>
    PatchTransactionsWrapper(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) =>
                  SaveTransactionWithId.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PatchTransactionsWrapperToJson(
        PatchTransactionsWrapper instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };

SaveTransactionWithId _$SaveTransactionWithIdFromJson(
        Map<String, dynamic> json) =>
    SaveTransactionWithId(
      id: json['id'] as String?,
      accountId: json['account_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: json['amount'] as int?,
      payeeId: json['payee_id'] as String?,
      payeeName: json['payee_name'] as String?,
      categoryId: json['category_id'] as String?,
      memo: json['memo'] as String?,
      cleared: saveTransactionWithIdClearedFromJson(json['cleared']),
      approved: json['approved'] as bool?,
      flagColor: saveTransactionWithIdFlagColorFromJson(json['flag_color']),
      importId: json['import_id'] as String?,
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map(
                  (e) => SaveSubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SaveTransactionWithIdToJson(
        SaveTransactionWithId instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_id': instance.accountId,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'payee_id': instance.payeeId,
      'payee_name': instance.payeeName,
      'category_id': instance.categoryId,
      'memo': instance.memo,
      'cleared': saveTransactionWithIdClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color': saveTransactionWithIdFlagColorToJson(instance.flagColor),
      'import_id': instance.importId,
      'subtransactions':
          instance.subtransactions?.map((e) => e.toJson()).toList(),
    };

SaveTransactionWithOptionalFields _$SaveTransactionWithOptionalFieldsFromJson(
        Map<String, dynamic> json) =>
    SaveTransactionWithOptionalFields(
      accountId: json['account_id'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      amount: json['amount'] as int?,
      payeeId: json['payee_id'] as String?,
      payeeName: json['payee_name'] as String?,
      categoryId: json['category_id'] as String?,
      memo: json['memo'] as String?,
      cleared:
          saveTransactionWithOptionalFieldsClearedFromJson(json['cleared']),
      approved: json['approved'] as bool?,
      flagColor: saveTransactionWithOptionalFieldsFlagColorFromJson(
          json['flag_color']),
      importId: json['import_id'] as String?,
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map(
                  (e) => SaveSubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$SaveTransactionWithOptionalFieldsToJson(
        SaveTransactionWithOptionalFields instance) =>
    <String, dynamic>{
      'account_id': instance.accountId,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'payee_id': instance.payeeId,
      'payee_name': instance.payeeName,
      'category_id': instance.categoryId,
      'memo': instance.memo,
      'cleared':
          saveTransactionWithOptionalFieldsClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color':
          saveTransactionWithOptionalFieldsFlagColorToJson(instance.flagColor),
      'import_id': instance.importId,
      'subtransactions':
          instance.subtransactions?.map((e) => e.toJson()).toList(),
    };

SaveSubTransaction _$SaveSubTransactionFromJson(Map<String, dynamic> json) =>
    SaveSubTransaction(
      amount: json['amount'] as int,
      payeeId: json['payee_id'] as String?,
      payeeName: json['payee_name'] as String?,
      categoryId: json['category_id'] as String?,
      memo: json['memo'] as String?,
    );

Map<String, dynamic> _$SaveSubTransactionToJson(SaveSubTransaction instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payee_id': instance.payeeId,
      'payee_name': instance.payeeName,
      'category_id': instance.categoryId,
      'memo': instance.memo,
    };

SaveTransactionsResponse _$SaveTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    SaveTransactionsResponse(
      data: SaveTransactionsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaveTransactionsResponseToJson(
        SaveTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

TransactionResponse _$TransactionResponseFromJson(Map<String, dynamic> json) =>
    TransactionResponse(
      data: TransactionResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionResponseToJson(
        TransactionResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

TransactionSummary _$TransactionSummaryFromJson(Map<String, dynamic> json) =>
    TransactionSummary(
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      cleared: transactionSummaryClearedFromJson(json['cleared']),
      approved: json['approved'] as bool,
      flagColor: transactionSummaryFlagColorFromJson(json['flag_color']),
      accountId: json['account_id'] as String,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      transferTransactionId: json['transfer_transaction_id'] as String?,
      matchedTransactionId: json['matched_transaction_id'] as String?,
      importId: json['import_id'] as String?,
      importPayeeName: json['import_payee_name'] as String?,
      importPayeeNameOriginal: json['import_payee_name_original'] as String?,
      debtTransactionType: transactionSummaryDebtTransactionTypeFromJson(
          json['debt_transaction_type']),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$TransactionSummaryToJson(TransactionSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'memo': instance.memo,
      'cleared': transactionSummaryClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color': transactionSummaryFlagColorToJson(instance.flagColor),
      'account_id': instance.accountId,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'transfer_transaction_id': instance.transferTransactionId,
      'matched_transaction_id': instance.matchedTransactionId,
      'import_id': instance.importId,
      'import_payee_name': instance.importPayeeName,
      'import_payee_name_original': instance.importPayeeNameOriginal,
      'debt_transaction_type': transactionSummaryDebtTransactionTypeToJson(
          instance.debtTransactionType),
      'deleted': instance.deleted,
    };

TransactionDetail _$TransactionDetailFromJson(Map<String, dynamic> json) =>
    TransactionDetail(
      accountName: json['account_name'] as String,
      payeeName: json['payee_name'] as String?,
      categoryName: json['category_name'] as String?,
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map((e) => SubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      cleared: transactionDetailClearedFromJson(json['cleared']),
      approved: json['approved'] as bool,
      flagColor: transactionDetailFlagColorFromJson(json['flag_color']),
      accountId: json['account_id'] as String,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      transferTransactionId: json['transfer_transaction_id'] as String?,
      matchedTransactionId: json['matched_transaction_id'] as String?,
      importId: json['import_id'] as String?,
      importPayeeName: json['import_payee_name'] as String?,
      importPayeeNameOriginal: json['import_payee_name_original'] as String?,
      debtTransactionType: transactionDetailDebtTransactionTypeFromJson(
          json['debt_transaction_type']),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$TransactionDetailToJson(TransactionDetail instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'payee_name': instance.payeeName,
      'category_name': instance.categoryName,
      'subtransactions':
          instance.subtransactions.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'memo': instance.memo,
      'cleared': transactionDetailClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color': transactionDetailFlagColorToJson(instance.flagColor),
      'account_id': instance.accountId,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'transfer_transaction_id': instance.transferTransactionId,
      'matched_transaction_id': instance.matchedTransactionId,
      'import_id': instance.importId,
      'import_payee_name': instance.importPayeeName,
      'import_payee_name_original': instance.importPayeeNameOriginal,
      'debt_transaction_type': transactionDetailDebtTransactionTypeToJson(
          instance.debtTransactionType),
      'deleted': instance.deleted,
    };

HybridTransaction _$HybridTransactionFromJson(Map<String, dynamic> json) =>
    HybridTransaction(
      type: hybridTransactionTypeFromJson(json['type']),
      parentTransactionId: json['parent_transaction_id'] as String?,
      accountName: json['account_name'] as String,
      payeeName: json['payee_name'] as String?,
      categoryName: json['category_name'] as String?,
      id: json['id'] as String,
      date: DateTime.parse(json['date'] as String),
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      cleared: hybridTransactionClearedFromJson(json['cleared']),
      approved: json['approved'] as bool,
      flagColor: hybridTransactionFlagColorFromJson(json['flag_color']),
      accountId: json['account_id'] as String,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      transferTransactionId: json['transfer_transaction_id'] as String?,
      matchedTransactionId: json['matched_transaction_id'] as String?,
      importId: json['import_id'] as String?,
      importPayeeName: json['import_payee_name'] as String?,
      importPayeeNameOriginal: json['import_payee_name_original'] as String?,
      debtTransactionType: hybridTransactionDebtTransactionTypeFromJson(
          json['debt_transaction_type']),
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$HybridTransactionToJson(HybridTransaction instance) =>
    <String, dynamic>{
      'type': hybridTransactionTypeToJson(instance.type),
      'parent_transaction_id': instance.parentTransactionId,
      'account_name': instance.accountName,
      'payee_name': instance.payeeName,
      'category_name': instance.categoryName,
      'id': instance.id,
      'date': _dateToJson(instance.date),
      'amount': instance.amount,
      'memo': instance.memo,
      'cleared': hybridTransactionClearedToJson(instance.cleared),
      'approved': instance.approved,
      'flag_color': hybridTransactionFlagColorToJson(instance.flagColor),
      'account_id': instance.accountId,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'transfer_transaction_id': instance.transferTransactionId,
      'matched_transaction_id': instance.matchedTransactionId,
      'import_id': instance.importId,
      'import_payee_name': instance.importPayeeName,
      'import_payee_name_original': instance.importPayeeNameOriginal,
      'debt_transaction_type': hybridTransactionDebtTransactionTypeToJson(
          instance.debtTransactionType),
      'deleted': instance.deleted,
    };

PatchMonthCategoryWrapper _$PatchMonthCategoryWrapperFromJson(
        Map<String, dynamic> json) =>
    PatchMonthCategoryWrapper(
      category:
          SaveMonthCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PatchMonthCategoryWrapperToJson(
        PatchMonthCategoryWrapper instance) =>
    <String, dynamic>{
      'category': instance.category.toJson(),
    };

SaveMonthCategory _$SaveMonthCategoryFromJson(Map<String, dynamic> json) =>
    SaveMonthCategory(
      budgeted: json['budgeted'] as int,
    );

Map<String, dynamic> _$SaveMonthCategoryToJson(SaveMonthCategory instance) =>
    <String, dynamic>{
      'budgeted': instance.budgeted,
    };

TransactionsImportResponse _$TransactionsImportResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionsImportResponse(
      data: TransactionsImportResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionsImportResponseToJson(
        TransactionsImportResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

BulkResponse _$BulkResponseFromJson(Map<String, dynamic> json) => BulkResponse(
      data: BulkResponse$Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BulkResponseToJson(BulkResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

BulkTransactions _$BulkTransactionsFromJson(Map<String, dynamic> json) =>
    BulkTransactions(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map((e) => SaveTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$BulkTransactionsToJson(BulkTransactions instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
    };

SubTransaction _$SubTransactionFromJson(Map<String, dynamic> json) =>
    SubTransaction(
      id: json['id'] as String,
      transactionId: json['transaction_id'] as String,
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      payeeId: json['payee_id'] as String?,
      payeeName: json['payee_name'] as String?,
      categoryId: json['category_id'] as String?,
      categoryName: json['category_name'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      transferTransactionId: json['transfer_transaction_id'] as String?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$SubTransactionToJson(SubTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'memo': instance.memo,
      'payee_id': instance.payeeId,
      'payee_name': instance.payeeName,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'transfer_account_id': instance.transferAccountId,
      'transfer_transaction_id': instance.transferTransactionId,
      'deleted': instance.deleted,
    };

ScheduledTransactionsResponse _$ScheduledTransactionsResponseFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionsResponse(
      data: ScheduledTransactionsResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduledTransactionsResponseToJson(
        ScheduledTransactionsResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

ScheduledTransactionResponse _$ScheduledTransactionResponseFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionResponse(
      data: ScheduledTransactionResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduledTransactionResponseToJson(
        ScheduledTransactionResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

ScheduledTransactionSummary _$ScheduledTransactionSummaryFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionSummary(
      id: json['id'] as String,
      dateFirst: DateTime.parse(json['date_first'] as String),
      dateNext: DateTime.parse(json['date_next'] as String),
      frequency:
          scheduledTransactionSummaryFrequencyFromJson(json['frequency']),
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      flagColor:
          scheduledTransactionSummaryFlagColorFromJson(json['flag_color']),
      accountId: json['account_id'] as String,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$ScheduledTransactionSummaryToJson(
        ScheduledTransactionSummary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_first': _dateToJson(instance.dateFirst),
      'date_next': _dateToJson(instance.dateNext),
      'frequency':
          scheduledTransactionSummaryFrequencyToJson(instance.frequency),
      'amount': instance.amount,
      'memo': instance.memo,
      'flag_color':
          scheduledTransactionSummaryFlagColorToJson(instance.flagColor),
      'account_id': instance.accountId,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'deleted': instance.deleted,
    };

ScheduledTransactionDetail _$ScheduledTransactionDetailFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionDetail(
      accountName: json['account_name'] as String,
      payeeName: json['payee_name'] as String?,
      categoryName: json['category_name'] as String?,
      subtransactions: (json['subtransactions'] as List<dynamic>?)
              ?.map((e) =>
                  ScheduledSubTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      id: json['id'] as String,
      dateFirst: DateTime.parse(json['date_first'] as String),
      dateNext: DateTime.parse(json['date_next'] as String),
      frequency: scheduledTransactionDetailFrequencyFromJson(json['frequency']),
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      flagColor:
          scheduledTransactionDetailFlagColorFromJson(json['flag_color']),
      accountId: json['account_id'] as String,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$ScheduledTransactionDetailToJson(
        ScheduledTransactionDetail instance) =>
    <String, dynamic>{
      'account_name': instance.accountName,
      'payee_name': instance.payeeName,
      'category_name': instance.categoryName,
      'subtransactions':
          instance.subtransactions.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'date_first': _dateToJson(instance.dateFirst),
      'date_next': _dateToJson(instance.dateNext),
      'frequency':
          scheduledTransactionDetailFrequencyToJson(instance.frequency),
      'amount': instance.amount,
      'memo': instance.memo,
      'flag_color':
          scheduledTransactionDetailFlagColorToJson(instance.flagColor),
      'account_id': instance.accountId,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'deleted': instance.deleted,
    };

ScheduledSubTransaction _$ScheduledSubTransactionFromJson(
        Map<String, dynamic> json) =>
    ScheduledSubTransaction(
      id: json['id'] as String,
      scheduledTransactionId: json['scheduled_transaction_id'] as String,
      amount: json['amount'] as int,
      memo: json['memo'] as String?,
      payeeId: json['payee_id'] as String?,
      categoryId: json['category_id'] as String?,
      transferAccountId: json['transfer_account_id'] as String?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$ScheduledSubTransactionToJson(
        ScheduledSubTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scheduled_transaction_id': instance.scheduledTransactionId,
      'amount': instance.amount,
      'memo': instance.memo,
      'payee_id': instance.payeeId,
      'category_id': instance.categoryId,
      'transfer_account_id': instance.transferAccountId,
      'deleted': instance.deleted,
    };

MonthSummariesResponse _$MonthSummariesResponseFromJson(
        Map<String, dynamic> json) =>
    MonthSummariesResponse(
      data: MonthSummariesResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonthSummariesResponseToJson(
        MonthSummariesResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

MonthDetailResponse _$MonthDetailResponseFromJson(Map<String, dynamic> json) =>
    MonthDetailResponse(
      data: MonthDetailResponse$Data.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonthDetailResponseToJson(
        MonthDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

MonthSummary _$MonthSummaryFromJson(Map<String, dynamic> json) => MonthSummary(
      month: DateTime.parse(json['month'] as String),
      note: json['note'] as String?,
      income: json['income'] as int,
      budgeted: json['budgeted'] as int,
      activity: json['activity'] as int,
      toBeBudgeted: json['to_be_budgeted'] as int,
      ageOfMoney: json['age_of_money'] as int?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$MonthSummaryToJson(MonthSummary instance) =>
    <String, dynamic>{
      'month': _dateToJson(instance.month),
      'note': instance.note,
      'income': instance.income,
      'budgeted': instance.budgeted,
      'activity': instance.activity,
      'to_be_budgeted': instance.toBeBudgeted,
      'age_of_money': instance.ageOfMoney,
      'deleted': instance.deleted,
    };

MonthDetail _$MonthDetailFromJson(Map<String, dynamic> json) => MonthDetail(
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      month: DateTime.parse(json['month'] as String),
      note: json['note'] as String?,
      income: json['income'] as int,
      budgeted: json['budgeted'] as int,
      activity: json['activity'] as int,
      toBeBudgeted: json['to_be_budgeted'] as int,
      ageOfMoney: json['age_of_money'] as int?,
      deleted: json['deleted'] as bool,
    );

Map<String, dynamic> _$MonthDetailToJson(MonthDetail instance) =>
    <String, dynamic>{
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'month': _dateToJson(instance.month),
      'note': instance.note,
      'income': instance.income,
      'budgeted': instance.budgeted,
      'activity': instance.activity,
      'to_be_budgeted': instance.toBeBudgeted,
      'age_of_money': instance.ageOfMoney,
      'deleted': instance.deleted,
    };

UserResponse$Data _$UserResponse$DataFromJson(Map<String, dynamic> json) =>
    UserResponse$Data(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserResponse$DataToJson(UserResponse$Data instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };

BudgetSummaryResponse$Data _$BudgetSummaryResponse$DataFromJson(
        Map<String, dynamic> json) =>
    BudgetSummaryResponse$Data(
      budgets: (json['budgets'] as List<dynamic>?)
              ?.map((e) => BudgetSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      defaultBudget: json['default_budget'] == null
          ? null
          : BudgetSummary.fromJson(
              json['default_budget'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetSummaryResponse$DataToJson(
        BudgetSummaryResponse$Data instance) =>
    <String, dynamic>{
      'budgets': instance.budgets.map((e) => e.toJson()).toList(),
      'default_budget': instance.defaultBudget?.toJson(),
    };

BudgetDetailResponse$Data _$BudgetDetailResponse$DataFromJson(
        Map<String, dynamic> json) =>
    BudgetDetailResponse$Data(
      budget: BudgetDetail.fromJson(json['budget'] as Map<String, dynamic>),
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$BudgetDetailResponse$DataToJson(
        BudgetDetailResponse$Data instance) =>
    <String, dynamic>{
      'budget': instance.budget.toJson(),
      'server_knowledge': instance.serverKnowledge,
    };

BudgetSettingsResponse$Data _$BudgetSettingsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    BudgetSettingsResponse$Data(
      settings:
          BudgetSettings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BudgetSettingsResponse$DataToJson(
        BudgetSettingsResponse$Data instance) =>
    <String, dynamic>{
      'settings': instance.settings.toJson(),
    };

AccountsResponse$Data _$AccountsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    AccountsResponse$Data(
      accounts: (json['accounts'] as List<dynamic>?)
              ?.map((e) => Account.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$AccountsResponse$DataToJson(
        AccountsResponse$Data instance) =>
    <String, dynamic>{
      'accounts': instance.accounts.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

AccountResponse$Data _$AccountResponse$DataFromJson(
        Map<String, dynamic> json) =>
    AccountResponse$Data(
      account: Account.fromJson(json['account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AccountResponse$DataToJson(
        AccountResponse$Data instance) =>
    <String, dynamic>{
      'account': instance.account.toJson(),
    };

CategoriesResponse$Data _$CategoriesResponse$DataFromJson(
        Map<String, dynamic> json) =>
    CategoriesResponse$Data(
      categoryGroups: (json['category_groups'] as List<dynamic>?)
              ?.map((e) => CategoryGroupWithCategories.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$CategoriesResponse$DataToJson(
        CategoriesResponse$Data instance) =>
    <String, dynamic>{
      'category_groups':
          instance.categoryGroups.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

CategoryResponse$Data _$CategoryResponse$DataFromJson(
        Map<String, dynamic> json) =>
    CategoryResponse$Data(
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoryResponse$DataToJson(
        CategoryResponse$Data instance) =>
    <String, dynamic>{
      'category': instance.category.toJson(),
    };

SaveCategoryResponse$Data _$SaveCategoryResponse$DataFromJson(
        Map<String, dynamic> json) =>
    SaveCategoryResponse$Data(
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$SaveCategoryResponse$DataToJson(
        SaveCategoryResponse$Data instance) =>
    <String, dynamic>{
      'category': instance.category.toJson(),
      'server_knowledge': instance.serverKnowledge,
    };

PayeesResponse$Data _$PayeesResponse$DataFromJson(Map<String, dynamic> json) =>
    PayeesResponse$Data(
      payees: (json['payees'] as List<dynamic>?)
              ?.map((e) => Payee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$PayeesResponse$DataToJson(
        PayeesResponse$Data instance) =>
    <String, dynamic>{
      'payees': instance.payees.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

PayeeResponse$Data _$PayeeResponse$DataFromJson(Map<String, dynamic> json) =>
    PayeeResponse$Data(
      payee: Payee.fromJson(json['payee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeeResponse$DataToJson(PayeeResponse$Data instance) =>
    <String, dynamic>{
      'payee': instance.payee.toJson(),
    };

PayeeLocationsResponse$Data _$PayeeLocationsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    PayeeLocationsResponse$Data(
      payeeLocations: (json['payee_locations'] as List<dynamic>?)
              ?.map((e) => PayeeLocation.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$PayeeLocationsResponse$DataToJson(
        PayeeLocationsResponse$Data instance) =>
    <String, dynamic>{
      'payee_locations':
          instance.payeeLocations.map((e) => e.toJson()).toList(),
    };

PayeeLocationResponse$Data _$PayeeLocationResponse$DataFromJson(
        Map<String, dynamic> json) =>
    PayeeLocationResponse$Data(
      payeeLocation: PayeeLocation.fromJson(
          json['payee_location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PayeeLocationResponse$DataToJson(
        PayeeLocationResponse$Data instance) =>
    <String, dynamic>{
      'payee_location': instance.payeeLocation.toJson(),
    };

TransactionsResponse$Data _$TransactionsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    TransactionsResponse$Data(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$TransactionsResponse$DataToJson(
        TransactionsResponse$Data instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

HybridTransactionsResponse$Data _$HybridTransactionsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    HybridTransactionsResponse$Data(
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map(
                  (e) => HybridTransaction.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int?,
    );

Map<String, dynamic> _$HybridTransactionsResponse$DataToJson(
        HybridTransactionsResponse$Data instance) =>
    <String, dynamic>{
      'transactions': instance.transactions.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

SaveTransactionsResponse$Data _$SaveTransactionsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    SaveTransactionsResponse$Data(
      transactionIds: (json['transaction_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      transaction: json['transaction'] == null
          ? null
          : TransactionDetail.fromJson(
              json['transaction'] as Map<String, dynamic>),
      transactions: (json['transactions'] as List<dynamic>?)
              ?.map(
                  (e) => TransactionDetail.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      duplicateImportIds: (json['duplicate_import_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$SaveTransactionsResponse$DataToJson(
        SaveTransactionsResponse$Data instance) =>
    <String, dynamic>{
      'transaction_ids': instance.transactionIds,
      'transaction': instance.transaction?.toJson(),
      'transactions': instance.transactions?.map((e) => e.toJson()).toList(),
      'duplicate_import_ids': instance.duplicateImportIds,
      'server_knowledge': instance.serverKnowledge,
    };

TransactionResponse$Data _$TransactionResponse$DataFromJson(
        Map<String, dynamic> json) =>
    TransactionResponse$Data(
      transaction: TransactionDetail.fromJson(
          json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionResponse$DataToJson(
        TransactionResponse$Data instance) =>
    <String, dynamic>{
      'transaction': instance.transaction.toJson(),
    };

TransactionsImportResponse$Data _$TransactionsImportResponse$DataFromJson(
        Map<String, dynamic> json) =>
    TransactionsImportResponse$Data(
      transactionIds: (json['transaction_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$TransactionsImportResponse$DataToJson(
        TransactionsImportResponse$Data instance) =>
    <String, dynamic>{
      'transaction_ids': instance.transactionIds,
    };

BulkResponse$Data _$BulkResponse$DataFromJson(Map<String, dynamic> json) =>
    BulkResponse$Data(
      bulk:
          BulkResponse$Data$Bulk.fromJson(json['bulk'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BulkResponse$DataToJson(BulkResponse$Data instance) =>
    <String, dynamic>{
      'bulk': instance.bulk.toJson(),
    };

ScheduledTransactionsResponse$Data _$ScheduledTransactionsResponse$DataFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionsResponse$Data(
      scheduledTransactions: (json['scheduled_transactions'] as List<dynamic>?)
              ?.map((e) => ScheduledTransactionDetail.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$ScheduledTransactionsResponse$DataToJson(
        ScheduledTransactionsResponse$Data instance) =>
    <String, dynamic>{
      'scheduled_transactions':
          instance.scheduledTransactions.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

ScheduledTransactionResponse$Data _$ScheduledTransactionResponse$DataFromJson(
        Map<String, dynamic> json) =>
    ScheduledTransactionResponse$Data(
      scheduledTransaction: ScheduledTransactionDetail.fromJson(
          json['scheduled_transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScheduledTransactionResponse$DataToJson(
        ScheduledTransactionResponse$Data instance) =>
    <String, dynamic>{
      'scheduled_transaction': instance.scheduledTransaction.toJson(),
    };

MonthSummariesResponse$Data _$MonthSummariesResponse$DataFromJson(
        Map<String, dynamic> json) =>
    MonthSummariesResponse$Data(
      months: (json['months'] as List<dynamic>?)
              ?.map((e) => MonthSummary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      serverKnowledge: json['server_knowledge'] as int,
    );

Map<String, dynamic> _$MonthSummariesResponse$DataToJson(
        MonthSummariesResponse$Data instance) =>
    <String, dynamic>{
      'months': instance.months.map((e) => e.toJson()).toList(),
      'server_knowledge': instance.serverKnowledge,
    };

MonthDetailResponse$Data _$MonthDetailResponse$DataFromJson(
        Map<String, dynamic> json) =>
    MonthDetailResponse$Data(
      month: MonthDetail.fromJson(json['month'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MonthDetailResponse$DataToJson(
        MonthDetailResponse$Data instance) =>
    <String, dynamic>{
      'month': instance.month.toJson(),
    };

BulkResponse$Data$Bulk _$BulkResponse$Data$BulkFromJson(
        Map<String, dynamic> json) =>
    BulkResponse$Data$Bulk(
      transactionIds: (json['transaction_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      duplicateImportIds: (json['duplicate_import_ids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
    );

Map<String, dynamic> _$BulkResponse$Data$BulkToJson(
        BulkResponse$Data$Bulk instance) =>
    <String, dynamic>{
      'transaction_ids': instance.transactionIds,
      'duplicate_import_ids': instance.duplicateImportIds,
    };
