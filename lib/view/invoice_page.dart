import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/invoice_controller.dart';
import '../widgets/bottom_buttons.dart';
import '../widgets/bottom_notes.dart';
import '../widgets/header_form.dart';
import '../widgets/item_section.dart';
import '../widgets/top_bar.dart';

class InvoicePage extends StatelessWidget {
   InvoicePage({super.key});

  final InvoiceController  c= Get.put(InvoiceController());

  final headerFieldDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(4.0)
    ),
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    fillColor: Colors.white,
    filled: true
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F4F3),
      body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(14),
            child: Column(
              children: [
                topToolBar(context),
                SizedBox(height: 12),
                headerForm(context),
                SizedBox(height: 12),
                itemsSection(context),
                SizedBox(height: 14),
                bottomNotesAndSummary(context),
                SizedBox(height: 16),
                bottomButtons(context),
              ],
            ),
          )
      ),
    );
  }


}

