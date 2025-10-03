import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/invoice_model.dart';

class InvoiceController extends GetxController{
final model = InvoiceModel().obs;

// Header form controllers
final docIdController = TextEditingController();
final customerIdController = TextEditingController();
final billToController = TextEditingController();
final shippingMethodController = TextEditingController();
final voucherController = TextEditingController();
final shipToController = TextEditingController();
final paymentTermController = TextEditingController();
final dueDateController = TextEditingController();
final taxGroupController = TextEditingController();
final dateController = TextEditingController();
final reference1Controller = TextEditingController();
final reference2Controller = TextEditingController();
final customerPOController = TextEditingController();
final salespersonController = TextEditingController();
final currencyController = TextEditingController();
final driverController = TextEditingController();
final vehicleController = TextEditingController();
final vehicleNameController = TextEditingController();

// Bottom section controllers
final noteController = TextEditingController();
final selectedFileController = TextEditingController();
final subtotalController = TextEditingController();
final discountController = TextEditingController();
final discountPercentController = TextEditingController();
final chargesController = TextEditingController();
final taxController = TextEditingController();
final roundOffController = TextEditingController();
final totalController = TextEditingController();

final items = <Map<String,dynamic>> [].obs;

void addEmptyRow(){
  items.add({
    'expenseCode': '',
    'description': '',
    'ref': '',
    'tax': 0,
    'quantity': 0,
    'amount': 0.0
  });
}

void save(){
  debugPrint('Saved: ${model.value.toString()}');
  Get.snackbar('Saved', 'Invoice saved successfully',snackPosition: SnackPosition.BOTTOM,backgroundColor: Colors.green,colorText: Colors.white);
}

void cancel(){
  // Clear all controllers
  docIdController.clear();
  customerIdController.clear();
  billToController.clear();
  shippingMethodController.clear();
  voucherController.clear();
  shipToController.clear();
  paymentTermController.clear();
  dueDateController.clear();
  taxGroupController.clear();
  dateController.clear();
  reference1Controller.clear();
  reference2Controller.clear();
  customerPOController.clear();
  salespersonController.clear();
  currencyController.clear();
  driverController.clear();
  vehicleController.clear();
  vehicleNameController.clear();
  noteController.clear();
  selectedFileController.clear();
  subtotalController.clear();
  discountController.clear();
  discountPercentController.clear();
  chargesController.clear();
  taxController.clear();
  roundOffController.clear();
  totalController.clear();
  items.clear();
}

@override
void onInit() {
  super.onInit();
// initialise one empty row to match screenshot
  addEmptyRow();
}
}