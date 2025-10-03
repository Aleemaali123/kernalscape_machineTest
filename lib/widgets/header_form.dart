import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kernalscape/widgets/text_field.dart';

import '../controller/invoice_controller.dart';

final InvoiceController c = Get.put(InvoiceController());

Widget headerForm(BuildContext context) {
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
        // Column 1 (Leftmost)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Doc ID:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.docIdController, isDropdown: true),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Customer ID:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(
                      c.customerIdController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bill to:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.billToController, isDropdown: true),
                  ),
                ],
              ),
              SizedBox(height: 6),
              // Large multi-line text area for Bill to
              Container(
                height: 60,
                child: TextField(
                  maxLines: 3,
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
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Method:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(
                      c.shippingMethodController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(width: 16),

        // Column 2 (Second from Left)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voucher Number:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: smallTextField(c.voucherController)),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  // TextField container
                  Expanded(
                    child: Container(
                      height: 30,
                      child: TextField(
                        maxLines: 3,
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
                  ),

                  SizedBox(
                    width: 8,
                  ), // space between TextField and 3-dot container
                  // 3-dot container
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF8ED1C6), // light blue-green
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _dot(),
                        SizedBox(width: 2),
                        _dot(),
                        SizedBox(width: 2),
                        _dot(),
                      ],
                    ),
                  ),
                ],
              ),

              // Helper function for a single dot
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ship to:',
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.shipToController, isDropdown: true),
                  ),
                ],
              ),
              SizedBox(height: 6),
              // Large multi-line text area for Ship to
              Container(
                height: 60,
                child: TextField(
                  maxLines: 3,
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
              SizedBox(height: 12),
            ],
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 100),

              // Payment Term
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80, // fixed width for label
                    child: Text(
                      'Payment Term:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(
                      c.paymentTermController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 12),

              // Due Date
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80, // same width as label above
                    child: Text(
                      'Due Date:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(child: smallTextField(c.dueDateController)),
                ],
              ),

              SizedBox(height: 10),

              // Tax Group
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80, // same width for all labels
                    child: Text(
                      'Tax Group:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(
                      c.taxGroupController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(width: 16),

        // Column 3 (Third from Left)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100, // fixed width for label
                    child: Text(
                      'Date:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(child: smallTextField(c.dateController)),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Reference 1:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(child: smallTextField(c.reference1Controller)),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Reference 2:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(child: smallTextField(c.reference2Controller)),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Customer PO#:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(child: smallTextField(c.customerPOController)),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Salesperson:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: smallTextField(
                      c.salespersonController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Currency:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: smallTextField(
                      c.currencyController,
                      isDropdown: true,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        SizedBox(width: 16),

        // Column 4 (Rightmost)
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(
                  height: 15,
                ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100, // fixed width for all labels
                    child: Text(
                      'Driver:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.driverController, isDropdown: true),
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Vehicle
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Vehicle:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.vehicleController, isDropdown: true),
                  ),
                ],
              ),
              SizedBox(height: 12),

              // Vehicle Name
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    child: Text(
                      'Vehicle Name:',
                      style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: smallTextField(c.vehicleNameController),
                  ),
                ],
              ),
            ],
          ),
        )

      ],
    ),
  );
}

Widget _dot() {
  return Container(
    width: 4,
    height: 4,
    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
  );
}
