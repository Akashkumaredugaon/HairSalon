import 'package:flutter/material.dart';
import 'package:hairsalon/view/utils/colors.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  int _currentStep = 0;
  DateTime selectedDate = DateTime.now();
  List<String> dates = [];


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      body: Container(
        color: primaryColor,
        child: Stepper(

          connectorColor: WidgetStatePropertyAll(primaryColor),
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepTapped: (step) => setState(() => _currentStep = step),
          onStepContinue: _currentStep < 2 ? _nextStep : null,
          onStepCancel: _currentStep > 0 ? _prevStep : null,
          steps: [
            Step(
              title: Text('Book Appointment'),
              content: _buildBookingContent(),
              isActive: _currentStep >= 0,
              state: _currentStep > 0 ? StepState.complete : StepState.indexed,
            ),
            Step(
              title: Text('Payment'),
              content: _buildPaymentContent(),
              isActive: _currentStep >= 1,
              state: _currentStep > 1 ? StepState.complete : StepState.indexed,
            ),
            Step(
              title: Text('Finished'),
              content: _buildFinishedContent(),
              isActive: _currentStep >= 2,
              state: _currentStep == 2 ? StepState.complete : StepState.indexed,
            ),
          ],

        ),
      ),
    );
  }

  void _nextStep() {
    setState(() {
      if (_currentStep < 2) {
        _currentStep += 1;
      }
    });
  }

  void _prevStep() {
    setState(() {
      if (_currentStep > 0) {
        _currentStep -= 1;
      }
    });
  }

  Widget _buildBookingContent() {
    DateTime _selectedDate = DateTime.now();


    return Container(
      width: 200,
      height: 300,
      color: Colors.grey,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => _selectDate(context),
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.blueAccent,
              child: Center(
                child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Date->',
                      style: TextStyle(color: Colors.white),
                    ),
                  IconButton(onPressed: () {

                }, icon: Icon(Icons.arrow_drop_down_outlined))
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        dates.add("${picked.toLocal()}".split(' ')[0]);
      });
    }
  }


  Widget _buildPaymentContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Payment Details Here"),
        // Add your payment content here
      ],
    );
  }

  Widget _buildFinishedContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Booking Finished!"),
        // Add your finished content here
      ],
    );
  }
}