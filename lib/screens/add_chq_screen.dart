import 'package:chqapp/widget.dart/comstom_textfield.dart';
import 'package:flutter/material.dart';

class AddChqScreen extends StatelessWidget {
  const AddChqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          // Ensure the background image is correctly placed and fills the entire screen.
          Positioned.fill(
            child: Image.asset(
              'assets/images/light_baground.png',
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text("Image failed to load"));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Add Cheque",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                CustomTextfield(
                    text: "Payee Name",
                    hintText: "enter name",
                    controller: controller,
                    keyboardType: TextInputType.text,
                    validator: null),
                CustomTextfield(
                  text: "Date",
                  hintText: "select date",
                  controller: controller,
                  keyboardType: TextInputType.none,
                  validator: null,
                  isDateField: true,
                  icon: Icon(Icons.calendar_month),
                ),
                CustomTextfield(
                    text: "Amount",
                    hintText: "enter amount",
                    controller: controller,
                    keyboardType: TextInputType.number,
                    validator: null),
                CustomTextfield(
                    text: "Cheque Number",
                    hintText: "enter number",
                    controller: controller,
                    keyboardType: TextInputType.text,
                    validator: null),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text(
                    "Add Cheque",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                )),
          )
        ],
      ),
    );
  }
}
