import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart' show GetMaterialApp;
import 'package:kernalscape/view/invoice_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Invoice UI - Web (MVC + GetX)',
      debugShowCheckedModeBanner: false,
      home: InvoicePage(),
    );
  }
}

// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Payment Term:', style: TextStyle(fontSize: 12, color: Colors.grey[700])),
// SizedBox(width: 8),
// Expanded(child: smallTextField(c.paymentTermController, isDropdown: true)),
// ],
// ),
// SizedBox(height: 12),
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Due Date:', style: TextStyle(fontSize: 12, color: Colors.grey[700])),
// SizedBox(width: 8),
// Expanded(child: smallTextField(c.dueDateController)),
// ],
// ),
// SizedBox(height: 12),
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text('Tax Group:', style: TextStyle(fontSize: 12, color: Colors.grey[700])),
// SizedBox(width: 8),
// Expanded(child: smallTextField(c.taxGroupController, isDropdown: true)),
// ],
// ),