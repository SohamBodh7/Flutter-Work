import 'package:flutter/material.dart';
import 'widgets/basic_text_field_widget.dart';
import 'widgets/password_text_field_widget.dart';
import 'widgets/number_text_field_widget.dart';
import 'widgets/multiline_text_field_widget.dart';
import 'widgets/email_text_field_widget.dart';
import 'widgets/phone_text_field_widget.dart';
import 'widgets/search_text_field_widget.dart';
import 'widgets/url_text_field_widget.dart';
import 'widgets/date_text_field_widget.dart';
import 'widgets/time_text_field_widget.dart';
import 'widgets/currency_text_field_widget.dart';
import 'widgets/percentage_text_field_widget.dart';
import 'widgets/address_text_field_widget.dart';
import 'widgets/name_text_field_widget.dart';
import 'widgets/street_address_text_field_widget.dart';
import 'widgets/zip_code_text_field_widget.dart';
import 'widgets/output_display_widget.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _basicController = TextEditingController();
  final _passwordController = TextEditingController();
  final _numberController = TextEditingController();
  final _multilineController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _searchController = TextEditingController();
  final _urlController = TextEditingController();
  final _dateController = TextEditingController();
  final _timeController = TextEditingController();
  final _currencyController = TextEditingController();
  final _percentageController = TextEditingController();
  final _addressController = TextEditingController();
  final _nameController = TextEditingController();
  final _streetAddressController = TextEditingController();
  final _zipCodeController = TextEditingController();

  String _basicText = '';
  String _passwordText = '';
  String _numberText = '';
  String _multilineText = '';
  String _emailText = '';
  String _phoneText = '';
  String _searchText = '';
  String _urlText = '';
  String _dateText = '';
  String _timeText = '';
  String _currencyText = '';
  String _percentageText = '';
  String _addressText = '';
  String _nameText = '';
  String _streetAddressText = '';
  String _zipCodeText = '';

  @override
  void dispose() {
    _basicController.dispose();
    _passwordController.dispose();
    _numberController.dispose();
    _multilineController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _searchController.dispose();
    _urlController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _currencyController.dispose();
    _percentageController.dispose();
    _addressController.dispose();
    _nameController.dispose();
    _streetAddressController.dispose();
    _zipCodeController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('=== FORM SUBMITTED ===');
      print('Basic Text: $_basicText');
      print('Password: $_passwordText');
      print('Number: $_numberText');
      print('Multiline: $_multilineText');
      print('Email: $_emailText');
      print('Phone: $_phoneText');
      print('Search: $_searchText');
      print('URL: $_urlText');
      print('Date: $_dateText');
      print('Time: $_timeText');
      print('Currency: $_currencyText');
      print('Percentage: $_percentageText');
      print('Address: $_addressText');
      print('Name: $_nameText');
      print('Street Address: $_streetAddressText');
      print('ZIP Code: $_zipCodeText');
      print('=====================');

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Form submitted successfully!'),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form TextField Demo'),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              theme.colorScheme.surface,
              theme.colorScheme.surfaceContainer,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header Section
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.edit_note,
                        size: 48,
                        color: theme.colorScheme.primary,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Form Field Demonstrations',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Explore different input types and keyboard configurations',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Basic TextField
                BasicTextFieldWidget(
                  controller: _basicController,
                  onChanged: (value) {
                    setState(() {
                      _basicText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Name TextField
                NameTextFieldWidget(
                  controller: _nameController,
                  onChanged: (value) {
                    setState(() {
                      _nameText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Password TextField
                PasswordTextFieldWidget(
                  controller: _passwordController,
                  onChanged: (value) {
                    setState(() {
                      _passwordText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Number TextField
                NumberTextFieldWidget(
                  controller: _numberController,
                  onChanged: (value) {
                    setState(() {
                      _numberText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Multiline TextField
                MultilineTextFieldWidget(
                  controller: _multilineController,
                  onChanged: (value) {
                    setState(() {
                      _multilineText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Address TextField
                AddressTextFieldWidget(
                  controller: _addressController,
                  onChanged: (value) {
                    setState(() {
                      _addressText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Street Address TextField
                StreetAddressTextFieldWidget(
                  controller: _streetAddressController,
                  onChanged: (value) {
                    setState(() {
                      _streetAddressText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // ZIP Code TextField
                ZipCodeTextFieldWidget(
                  controller: _zipCodeController,
                  onChanged: (value) {
                    setState(() {
                      _zipCodeText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Email TextField with validation
                EmailTextFieldWidget(
                  controller: _emailController,
                  onChanged: (value) {
                    setState(() {
                      _emailText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Phone TextField with validation
                PhoneTextFieldWidget(
                  controller: _phoneController,
                  onChanged: (value) {
                    setState(() {
                      _phoneText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Search TextField
                SearchTextFieldWidget(
                  controller: _searchController,
                  onChanged: (value) {
                    setState(() {
                      _searchText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // URL TextField
                UrlTextFieldWidget(
                  controller: _urlController,
                  onChanged: (value) {
                    setState(() {
                      _urlText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Date Picker
                DateTextFieldWidget(
                  controller: _dateController,
                  onChanged: (value) {
                    setState(() {
                      _dateText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Time Picker
                TimeTextFieldWidget(
                  controller: _timeController,
                  onChanged: (value) {
                    setState(() {
                      _timeText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Currency Selector
                CurrencyTextFieldWidget(
                  controller: _currencyController,
                  onChanged: (value) {
                    setState(() {
                      _currencyText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Percentage Slider
                PercentageTextFieldWidget(
                  controller: _percentageController,
                  onChanged: (value) {
                    setState(() {
                      _percentageText = value;
                    });
                  },
                ),
                const SizedBox(height: 20),

                // Submit Button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: _submitForm,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.send, size: 20),
                        const SizedBox(width: 8),
                        Text(
                          'Submit Form',
                          style: theme.textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Output Display
                OutputDisplayWidget(
                  basicText: _basicText,
                  passwordText: _passwordText,
                  numberText: _numberText,
                  multilineText: _multilineText,
                  emailText: _emailText,
                  phoneText: _phoneText,
                  searchText: _searchText,
                  urlText: _urlText,
                  dateText: _dateText,
                  timeText: _timeText,
                  currencyText: _currencyText,
                  percentageText: _percentageText,
                  addressText: _addressText,
                  nameText: _nameText,
                  streetAddressText: _streetAddressText,
                  zipCodeText: _zipCodeText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
