import 'package:flutter/material.dart';

class FirstView extends StatefulWidget {
  const FirstView({super.key});

  @override
  State<FirstView> createState() => _FirstViewState();
}

class _FirstViewState extends State<FirstView> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();
  String _result = '';

  void _addNumbers() {
    final String firstNumberText = _firstNumberController.text;
    final String secondNumberText = _secondNumberController.text;

    if (firstNumberText.isNotEmpty && secondNumberText.isNotEmpty) {
      final double firstNumber = double.tryParse(firstNumberText) ?? 0;
      final double secondNumber = double.tryParse(secondNumberText) ?? 0;

      setState(() {
        _result = 'Result: ${firstNumber + secondNumber}';
      });
    } else {
      setState(() {
        _result = 'Please enter both numbers.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _firstNumberController,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                hintText: 'Type a number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _secondNumberController,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                hintText: 'Type a number',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addNumbers,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                backgroundColor: Colors.teal,
              ),
              child: const Text('Add'),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                _result,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
