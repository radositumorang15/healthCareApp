import 'package:flutter/material.dart';

 class CanceledTab extends StatelessWidget {
  const CanceledTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [   
          Icon(Icons.cancel_outlined, size: 64, color: Colors.grey[400]),
          SizedBox(height: 16),
          Text(
            'No Cancelled Visits',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Your cancelled appointments will appear here',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}