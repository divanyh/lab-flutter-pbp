class Budget {
  final String judul;
  final double nominal;
  final String tipe;
  static List<Budget> daftarBudget = [];

  Budget(this.judul, this.nominal, this.tipe);

  static void add(judul, nominal, tipe) {
    daftarBudget.add(Budget(judul, nominal, tipe));
  }
}
