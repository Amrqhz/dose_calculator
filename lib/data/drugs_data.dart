import '../models/drug.dart';

final List<Drug> drugs = [


  Drug(
    name: "Acetaminophen",
    dosageform: "Syr",
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
    name: "Acetaminophen (parakid)",
    dosageform: "Susp",
    concentration: "100mg/1ml",
    calculationType: "weightDivision",
    parameters: {
      "divisor": 0.66, // 
      "maxDose": 4000.0, // 1000mg maximum
      "frequency": 6, // every 6 hours
    },
    
    note: "در درمان OTC طول دوره درمان با استامینوفن در نوزادان 3 روز و در نوجوانان 5 روز است.",
  ),


  Drug(
    name: "Amoxicillin (فارنژیت، سینوزیت)",
    concentration: "250mg/5ml",
    calculationType: "weightBased",
    dosageform: "Syr",
    parameters: {
      "dosePerKg": 50.0, // 25mg per kg
      "maxDose": 1000.0, // 500mg maximum
      "frequency": 24, // every 8 hours
    },
    //forms: ["شربت", "قرص"],
    note: "به مدت 10 روز مصرف گردد. میتوان دوز را به صورت دو بار در روز هم تجویز کرد",
  ),
                                                                      
  Drug(                 
    name: "Amoxicillin (AOM)",
    dosageform: "Syr",
    concentration: "250mg/5ml",
    calculationType: "weightBased",
    //dosageCalculation: "weight/4",
    parameters: {
      "dosePerKg": 80.0, // 25mg per kg
      "maxDose": 1000.0, // 500mg maximum
      "frequency": 12, // every 8 hours
    },
    
    //forms: ["شربت", "قرص"],
  ),

  Drug(
    name: "Azithromycin",
    dosageform: "Syr",
    concentration: "100mg/5ml",
    calculationType: "weightDivision",
    parameters: {
      "divisor": 2.0, // 
      "maxDose": 500.0, // 1000mg maximum
      "frequency": 24, // every 6 hours
    },
    note: "در روز اول دو برابر دوز مصرف گردد"
  ),
  Drug(
    name: "Azithromycin",
    dosageform: "Syr",
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
    name: "Cephalexin",
    dosageform: "Syr",
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
    name: "Diphenhydramine",
    dosageform: "Syr",
    concentration: "12.5mg/5ml",
    calculationType: "weightDivision",
    parameters: {
      "divisor": 2.0, // 
      "maxDose": 4000.0, // 1000mg maximum
      "frequency": 8, // every 6 hours
    },
    
    note: "در درمان OTC طول دوره درمان با استامینوفن در نوزادان 3 روز و در نوجوانان 5 روز است.",
  ),
  Drug(
    name: "Diphenhydramine Compound",
    dosageform: "Syr",
    concentration: "12.5mg/5ml",
    calculationType: "standard",
  ),


  Drug(
    name: "Ibuprofen",
    dosageform: "Syr",
    concentration: "100mg/5ml",
    calculationType: "weightAndAge",
    parameters: {
      "childDosePerKg": 10.0, // 10mg per kg for children
      "adultDose": 400.0, // 400mg for adults
      "minAge": 3, // minimum age in years
      "frequency": 8, // every 8 hours
    },
    note: "همراه با غذا مصرف گردد. در موارد خونریزی گوارشی همراه با پنتاپرازول یا امپرازول تجویز گردد",
  ),

  Drug(
    name: "Lactolose",
    dosageform: "Syr",
    concentration: "10g/15ml",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
    note: "میتوان تا حجم 60 میلی لیتر در روز افزایش داد",
    //forms: ["شربت", "قرص"],
  ),





  Drug(
    name: "Pedilact",
    dosageform: "Syr",
    concentration: "10g/15ml",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
    parameters: {
      "minAge": 2,
    },
    //forms: ["شربت", "قرص"],
  ),

  Drug(
    name: "Acetaminophen",
    dosageform: "Tab",
    concentration: "325mg",
    calculationType: "standard",
    //dosageCalculation: "weight/4",
    parameters: {
      "minAge": 5,
    },
    //forms: ["شربت", "قرص"],
  ),
  // Add more drugs as needed
];
