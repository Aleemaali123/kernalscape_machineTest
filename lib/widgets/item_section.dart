import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/invoice_controller.dart';

final InvoiceController c = Get.put(InvoiceController());

Widget itemsSection(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Tabs
        Container(
          color: Color(0xFFF5F9F8),
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF20B2AA),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'ITEMS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Text(
                'CHARGES',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),

        // Table Header with borders (all equal flex)
        Container(
          color: Color(0xFFEFF9F7),
          child: Row(
            children: [
              _tableHeader('Expense Code'),
              _tableHeader('Description'),
              _tableHeader('Ref'),
              _tableHeader('Tax'),
              _tableHeader('Quantity'),
              _tableHeader('Amount'),
            ],
          ),
        ),

        // Table Body with equal flex
        Obx(
              () => Column(
            children: c.items.asMap().entries.map((entry) {
              int index = entry.key;
              Map<String, dynamic> item = entry.value;
              return _tableRow(item, index);
            }).toList(),
          ),
        ),

        // Blank space after table
        SizedBox(height: 200),
      ],
    ),
  );
}

// Table header cell (equal flex)
Widget _tableHeader(String title) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey[400]!, width: 0.5),
          bottom: BorderSide(color: Colors.grey[400]!, width: 0.5),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 12, fontWeight: FontWeight.bold, color: Colors.grey[700]),
      ),
    ),
  );
}

// Table row (equal flex)
Widget _tableRow(Map<String, dynamic> item, int index) {
  return Row(
    children: [
      _tableCellTextField(item['expenseCode'], (val) => item['expenseCode'] = val),
      _tableCellTextField(item['description'], (val) => item['description'] = val),
      _tableCellTextField(item['ref'], (val) => item['ref'] = val),
      _tableCellText(item['tax'].toString()),
      _tableCellText(item['quantity'].toString()),
      _tableCellText(item['amount'].toStringAsFixed(2)),
    ],
  );
}

// Editable cell
Widget _tableCellTextField(String value, Function(String) onChanged) {
  TextEditingController controller = TextEditingController(text: value);
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey[400]!, width: 0.5),
          bottom: BorderSide(color: Colors.grey[200]!, width: 0.5),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        ),
        style: TextStyle(fontSize: 12),
        onChanged: onChanged,
      ),
    ),
  );
}

// Read-only cell
Widget _tableCellText(String value) {
  return Expanded(
    child: Container(
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(color: Colors.grey[400]!, width: 0.5),
          bottom: BorderSide(color: Colors.grey[200]!, width: 0.5),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Text(
        value,
        style: TextStyle(fontSize: 12),
      ),
    ),
  );
}
