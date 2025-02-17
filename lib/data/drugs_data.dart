import '../models/drug.dart';

final List<Drug> drugs = [

  Drug(
    name: "Amoxicillin (فارنژیت، سینوزیت)",
    concentration: "250mg/5ml",
    calculationType: "weightBased",
    parameters: {
      "dosePerKg": 50.0, // 25mg per kg
      "maxDose": 500.0, // 500mg maximum
      "frequency": 8, // every 8 hours
    },
    //forms: ["شربت", "قرص"],
    note: "همراه با غذا مصرف گردد",
  ),
                                                                      
  Drug(                 
    name: "Amoxicillin (AOM)",
    concentration: "250mg/5ml",
    calculationType: "weightBased",
    //dosageCalculation: "weight/4",
    parameters: {
      "dosePerKg": 80.0, // 25mg per kg
      "maxDose": 500.0, // 500mg maximum
      "frequency": 12, // every 8 hours
    },
    //forms: ["شربت", "قرص"],
  ),

  Drug(
    name: "Azithromycin",
    concentration: "100mg/5ml",
    calculationType: "weightDivision",
    //dosageCalculation: "weight/4",
    note: "در روز اول، دو برابر دوز مصرف شود",
    //forms: ["شربت", "قرص"],
    parameters: {
      "divisor": 2.0,
      "frequency": 24,
    }
  ),
  Drug(
    name: "Azithromycin",
    concentration: "200mg/5ml",
    calculationType: "weightBased",
    parameters: {
      "dosePerKg": 10.0, //10mg/kg
      "frequency": 24,
      "maxDose": 500.0, //daily
    },
    //dosageCalculation: "weight/8",
    note: "در روز اول، دو برابر دوز مصرف شود",
    //forms: ["شربت", "قرص"],
  ),
  Drug(
    name: "Paracetamol",
    concentration: "120mg/5ml",
    calculationType: "weightBased",
    parameters: {
      "dosePerKg": 15.0, // 15mg per kg
      "maxDose": 1000.0, // 1000mg maximum
      "frequency": 6, // every 6 hours
    },
    //forms: ["شربت", "قرص"],
    note: "بیشتر از 4 دوز در طی 24 ساعت مصرف نگردد",
  ),

  Drug(
    name: "Ibuprofen",
    concentration: "100mg/5ml",
    calculationType: "weightAndAge",
    parameters: {
      "childDosePerKg": 10.0, // 10mg per kg for children
      "adultDose": 400.0, // 400mg for adults
      "minAge": 3, // minimum age in years
      "frequency": 8, // every 8 hours
    },
    //forms: ["شربت", "قرص"],
    note: "همراه با غذا مصرف گردد. در موارد خونریزی گوارشی همراه با پنتاپرازول یا امپرازول تجویز گردد",
  ),

  Drug(
    name: "Lactolose",
    concentration: "10g/15ml",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
    note: "میتوان تا حجم 60 میلی لیتر در روز افزایش داد",
    //forms: ["شربت", "قرص"],
  ),



  Drug(
    name: "Cephalexin",
    concentration: "250mg/5ml",
    calculationType: "weightBased",
    //dosageCalculation: "weight/4",
    parameters: {
      "dosePerKg": 50.0, // 25mg per kg
      //"maxDose": 500.0, // 500mg maximum
      "frequency": 24, // every 8 hours
    },
    //forms: ["شربت", "قرص"],
  ),
  Drug(
    name: "Diphenhydramine Compound",
    concentration: "12.5mg/5ml",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
  
    //forms: ["شربت", "قرص"],
  ),
  Drug(
    name: "Pedilact",
    concentration: "10g/15ml",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
    parameters: {
      "minAge": 2,
    },
    //forms: ["شربت", "قرص"],
  ),
  // Add more drugs as needed
];
