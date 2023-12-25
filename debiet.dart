import 'dart:io';

void main() {
  // customer();
  var c1 = Customer();
  c1.addCustomer();
  c1.numberOfItems();
  c1.addMaterial();
  c1.addMaterialPrice();
  c1.addMaterialQuantity();
  c1.display();
  //
  // var c2 = Customer();
  // c2.addCustomer();
  // c2.addMaterial();
  // c2.addMaterialPrice();
  // c2.addMaterialQuantity();
  // c2.display();
}

// void customer() {
//   print("Input Customer Name");
//   String name = stdin.readLineSync()!;
//   //
//   print("Input Material name");
//   String matName = stdin.readLineSync()!;
//   //
//   print("Material price");
//   double matPrice = double.parse(stdin.readLineSync()!);
//   //
//   print("Choose How Many Material");
//   int quantity = int.parse(stdin.readLineSync()!);
//   //

//   if (matPrice <= 1) {
//     matPrice = matPrice;
//   } else {
//     matPrice *= quantity;
//   }
//   //
//   print("$name has borrowed $matName total price $matPrice");
// }

class Customer {
  String? name;
  List<String>? materialName = [];
  List<num>? materialPrice = [];
  num? materialQuantity;
  int? items;
  List<int>? temp = [];
  // Customer(
  //     this.name, this.materialName, this.materialPrice, this.materialQuantity);
  void addCustomer() {
    print("Input Customer Name");
    name = stdin.readLineSync()!;
  }

  void numberOfItems() {
    print("Input Number of Items");
    items = int.parse(stdin.readLineSync()!);
  }

  void addMaterial() {
    String materialNames;
    for (int i = 1; i <= items!; i++) {
      print("Input Material name");
      materialNames = stdin.readLineSync()!;
      materialName!.add(materialNames);
    }
  }

  void addMaterialPrice() {
    double materialPrices;
    for (int i = 1; i <= items!; i++) {
      print("Material price ${materialName!}");
      materialPrices = double.parse(stdin.readLineSync()!);
      materialPrice!.add(materialPrices);
    }
  }

  void addMaterialQuantity() {
    print("Choose How Many Material");
    materialQuantity = int.parse(stdin.readLineSync()!);
  }

  void display() {
    // num a = 0;
    // for (materialPrice in a) {
    //   if (a <= 1) {
    //     materialPrice = materialPrice;
    //   } else {
    //     a *= materialQuantity!;
    //     materialPrice!.add(a);
    //     // materialPrice *= materialPrice! * materialQuantity!;
    //   }
    // }
    for (int i = 0; i < materialPrice!.length; i++) {
      if (materialPrice!.length <= 1) {
        materialPrice = materialPrice!;
      } else {
        materialPrice![i] *= materialQuantity!;
      }
    }
    var totalValue = materialPrice!.reduce((value, element) => value + element);
    print(
        "$name has borrowed $materialName total price $materialPrice \nTotal value is$totalValue");
  }
}
