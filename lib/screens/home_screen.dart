import 'dart:ui';
import 'package:chqapp/screens/add_chq_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/light_baground.png',
              fit: BoxFit.cover,
            ),
          ),

          // Glass effect container
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Cheque Tracker",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Expanded(
                        child: cont("Pending",
                            Icon(Icons.pending_actions_outlined), true)),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: cont("Cleared",
                            Icon(Icons.check_circle_outline_outlined), false))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SoftGlassCard(),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddChqScreen()),
                    );
                  },
                  child: floatingIcon()),
            ),
          )
        ],
      ),
    );
  }
}

Widget floatingIcon() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255)
                .withValues(alpha: 0.6), // subtle white tint
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                color:
                    const Color.fromARGB(255, 6, 6, 6).withValues(alpha: 0.5),
                width: 1),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 4,
                  offset: Offset(4, 4)),
            ],
          ),
          child: Icon(
            Icons.add,
          )),
    ),
  );
}

Widget cont(String status, Icon icon, bool isSelected) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        height: 100,
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.purple.shade100
              : const Color.fromARGB(255, 255, 255, 255)
                  .withValues(alpha: 0.6), // subtle white tint
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
              color: const Color.fromARGB(255, 6, 6, 6).withValues(alpha: 0.5),
              width: 1),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 4,
                offset: Offset(4, 4)),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            icon,
            SizedBox(
              height: 8,
            ),
            Text(
              status,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class SoftGlassCard extends StatelessWidget {
  const SoftGlassCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          //padding: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255)
                .withValues(alpha: 0.6), // subtle white tint
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color:
                    const Color.fromARGB(255, 6, 6, 6).withValues(alpha: 0.2)),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(4, 4)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Text(
                      "Sriram Metals",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "1234567",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    border: Border(top: BorderSide(color: Colors.black12)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: Row(
                    children: [
                      Text(
                        "10 Feb 2025-Monday",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      Spacer(),
                      Text(
                        "₹ 7000",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
