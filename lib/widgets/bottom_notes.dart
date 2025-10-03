import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kernalscape/widgets/summary_notes.dart';

import 'bottom_buttons.dart';

Widget bottomNotesAndSummary(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4),
      boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
    ),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left side: Notes and Selected File
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Note row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                    child: Text(
                      'Note:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: TextField(
                      controller: c.noteController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        contentPadding: EdgeInsets.all(8),
                        isDense: true,
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Selected File row
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 70,
                    child: Text(
                      'Selected File:',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: TextField(
                      controller: c.selectedFileController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        isDense: true,
                      ),
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // Spacer to push summary to end
        Spacer(),

        // Right side: Financial Summary
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: EdgeInsets.all(12),
            width: 270, // fixed width for summary
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                summaryRow('Subtotal:', c.subtotalController),
                summaryRow('Discount:', c.discountController,
                    percentController: c.discountPercentController),
                summaryRow('Charges:', c.chargesController),
                summaryRow('Tax:', c.taxController),
                summaryRow('Round Off:', c.roundOffController),
                summaryRow('Total:', c.totalController, isTotal: true),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
