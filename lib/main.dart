import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FORM PAGE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyForm(),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _middlenameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _genderController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _additionalphoneNumberController =TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _nationalityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();

  @override
   build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        backgroundColor:const Color.fromARGB(255, 18, 2, 123),
        title: const Text('FORM PAGE'),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _firstnameController,
                  decoration: const InputDecoration(
                      labelText: 'First Name', prefixIcon: Icon(Icons.person)),
                ),
                TextFormField(
                  controller: _middlenameController,
                  decoration: const InputDecoration(
                      labelText: 'Middle Name', prefixIcon: Icon(Icons.person)),
                ),
                TextFormField(
                  controller: _lastnameController,
                  decoration: const InputDecoration(
                      labelText: 'Last Name', prefixIcon: Icon(Icons.person)),
                ),
                TextFormField(
                  controller: _emailController,
                  decoration:const  InputDecoration(
                      labelText: 'Email', prefixIcon: Icon(Icons.email_outlined)),
                ),
                TextFormField(
                  controller: _genderController,
                  decoration:const  InputDecoration(
                      labelText: 'Gender', prefixIcon: Icon(Icons.face)),
                ),
                TextFormField(
                  controller: _ageController,
                  keyboardType: TextInputType.number,
                  decoration:const  InputDecoration(
                      labelText: 'Age', prefixIcon: Icon(Icons.calendar_today)),
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration:const  InputDecoration(
                      labelText: 'Phone Number', prefixIcon: Icon(Icons.phone)),
                ),
                TextFormField(
                  controller: _additionalphoneNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: 'Additional Phone Number',
                      prefixIcon: Icon(Icons.phone)),
                ),
                TextFormField(
                  controller: _addressController,
                  decoration: const InputDecoration(
                      labelText: 'Address', prefixIcon: Icon(Icons.house)),
                ),
                TextFormField(
                  controller: _nationalityController,
                  decoration: const InputDecoration(
                      labelText: 'Nationality', prefixIcon: Icon(Icons.flag_outlined)),
                ),
                TextFormField(
                  controller: _stateController,
                  decoration: const InputDecoration(
                      labelText: 'State',
                      prefixIcon: Icon(Icons.location_city)),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    String first = _firstnameController.text;
                    String middle = _middlenameController.text;
                    String last = _lastnameController.text;
                    String email = _emailController.text;
                    String gender = _genderController.text;
                    String age = _ageController.text;
                    String phoneNumber = _phoneNumberController.text;
                    String additionalphoneNumber = _additionalphoneNumberController.text;
                    String address = _addressController.text;
                    String nationality = _nationalityController.text;
                    String state = _stateController.text;

                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Form Data'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('First Name: $first'),
                              Text('Middle Name: $middle'),
                              Text('Last Name: $last'),
                              Text('Email: $email'),
                              Text('Gender: $gender'),
                              Text('Age: $age'),
                              Text('Phone Number: $phoneNumber'),
                              Text('Additional Phone Number: $additionalphoneNumber'),
                              Text('Address: $address'),
                              Text('Nationality: $nationality'),
                              Text('State: $state'),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                 Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                            
                          ],
                        );
                      },
                    );
                  },
                  child:const Text('SUBMIT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
