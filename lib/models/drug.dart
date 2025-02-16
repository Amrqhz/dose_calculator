class Drug {
  final String name;
  final String concentration;
  //final String dosageCalculation;
  final String? note;
  //final List<String> forms;
  final String calculationType;
  final Map<String, dynamic>? parameters;

  Drug({
    required this.name,
    required this.concentration,
    //required this.dosageCalculation,
    this.note,
    //required this.forms,
    required this.calculationType,
    this.parameters,
  });
}