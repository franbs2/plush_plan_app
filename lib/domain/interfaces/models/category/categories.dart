class Category {
  final int idCategory;
  final String nameCategory;
  final String iconCode;
  int quantItems = 0;

  Category({
    required this.idCategory,
    required this.nameCategory,
    required this.iconCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'idCategory': idCategory,
      'nameCategory': nameCategory,
      'iconCode': iconCode,
    };
  }
}
