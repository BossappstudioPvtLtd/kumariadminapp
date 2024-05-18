import 'package:flutter/material.dart';
import 'package:kumari_admin_web/common_methods.dart';
import 'package:kumari_admin_web/data_fatching/driver_data.dart';

class DriversPage extends StatefulWidget
{
  static const String id = "\"webPageDrivers";

  const DriversPage({super.key});

  @override
  State<DriversPage> createState() => _DriversPageState();
}

class _DriversPageState extends State<DriversPage>
{
  CommonMethods cMethods = CommonMethods();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Manage Drivers",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(
                height: 18,
              ),

              Row(
                children: [
                  cMethods.header(2, "DRIVER ID"),
                  cMethods.header(1, "PICTURE"),
                  cMethods.header(1, "NAME"),
                  cMethods.header(1, "CAR DETAILS"),
                  cMethods.header(1, "PHONE"),
                  cMethods.header(1, "TOTAL EARNINGS"),
                  cMethods.header(1, "ACTION"),
                ],
              ),

              //display data
              const DriversDataList(),
            ],
          ),
        ),
      ),
    );
  }
}