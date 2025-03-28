import 'package:flutter/material.dart';

class ShippingInfoWidget extends StatefulWidget {
  const ShippingInfoWidget({super.key});

  @override
  _ShippingInfoWidgetState createState() => _ShippingInfoWidgetState();
}

class _ShippingInfoWidgetState extends State<ShippingInfoWidget> {
  int _selectedShipping = 0;

  final List<Map<String, dynamic>> _shippingOptions = [
    {
      'title': 'Standard Shipping: \$5.99',
      'subtitle': '5-7 business days',
      'value': 0
    },
    {
      'title': 'Expedited Shipping: \$12.99',
      'subtitle': '2-3 business days',
      'value': 1
    },
    {
      'title': 'Overnight Shipping: \$19.99',
      'subtitle': '1 business day',
      'value': 2
    },
    {
      'title': 'Local Pick Up: Free',
      'subtitle': 'Pickup at Los Angeles Elementary School,\n123 Central Street, Los Angeles, CA 90001.',
      'value': 3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Matches dark background from Figma
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[900], // Dark background inside container
            border: Border.all(color: Colors.grey.shade900),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Shipping Information',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 8),
              Text('Package Includes', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              Text('1 jersey, 1 pair of shorts, and 2 socks.', style: TextStyle(color: Colors.white70)),
              SizedBox(height: 12),
              Text('Shipping Options', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              ..._shippingOptions.map((option) => RadioListTile(
                    title: Text(option['title'], style: TextStyle(color: Colors.white)),
                    subtitle: Text(option['subtitle'], style: TextStyle(color: Colors.white70)),
                    value: option['value'],
                    groupValue: _selectedShipping,
                    activeColor: Colors.redAccent, // Matches red radio button color from Figma
                    onChanged: (value) {
                      setState(() {
                        _selectedShipping = value as int;
                      });
                    },
                  )),
              SizedBox(height: 12),
              Text('Processing Time', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              Text('All orders are processed within 1-2 business days.', style: TextStyle(color: Colors.white70)),
              SizedBox(height: 12),
              Text('Tracking Information', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
              Text(
                "Your order details can be found in the 'Orders' section under 'My Stuff'. From there, you can track all activities related to your order in real time.",
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
