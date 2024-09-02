class TransactionHistoryModel {
  final String title, date, cost;
  final bool profit;
  const TransactionHistoryModel(this.profit,
      {required this.title, required this.date, required this.cost});
}
