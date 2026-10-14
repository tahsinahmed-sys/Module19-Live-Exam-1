
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BloodRequestsPage(),
  ));
}

class BloodRequestsPage extends StatelessWidget {
  const BloodRequestsPage({super.key});

  static const Color navy = Colors.indigo;
  static const Color red = Colors.red;
  static const Color grey = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            children: [
              const SizedBox(height: 35),

              const Text(
                'Blood Requests',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 38),

              const BloodRequestCard(
                bloodGroup: 'O-',
                units: 3,
              ),

              const SizedBox(height: 24),

              const BloodRequestCard(
                bloodGroup: 'O+',
                units: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BloodRequestCard extends StatelessWidget {
  final String bloodGroup;
  final int units;

  const BloodRequestCard({
    super.key,
    required this.bloodGroup,
    required this.units,
  });

  static const Color navy = Color.fromRGBO(8, 13, 50, 1);
  static const Color red = Colors.red;
  static const Color grey = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 17, 16, 15),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(
            color: red,
            width: 5,
          ),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'URGENT',
                style: TextStyle(
                  color: red,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.4,
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.water_drop,
                    color: red,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$units Units',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 16),

          Text(
            '$bloodGroup Blood Needed',
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: navy,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 18,
                color: grey,
              ),
              const SizedBox(width: 7),
              const Expanded(
                child: Text(
                  'Khulna City Medical College Hospital, KDA Ave...',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: grey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          Container(
            width: double.infinity,
            height: 48,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: navy,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'View Details',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
