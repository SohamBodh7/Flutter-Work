// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

// // Home page widget that holds the calculator UI
// class CalculatorHomePage extends StatefulWidget {
//   const CalculatorHomePage({super.key});

//   @override
//   State<CalculatorHomePage> createState() => _CalculatorHomePageState();
// }

// class _CalculatorHomePageState extends State<CalculatorHomePage> {
//   // Variables to hold the state of the calculator
//   String _output = "0";
//   String _currentInput = "";
//   double _num1 = 0;
//   double _num2 = 0;
//   String _operand = "";

//   // This function is called when any button is pressed
//   void _buttonPressed(String buttonText) {
//     setState(() {
//       if (buttonText == "C") {
//         // Clear all the state
//         _output = "0";
//         _currentInput = "";
//         _num1 = 0;
//         _num2 = 0;
//         _operand = "";
//       } else if (buttonText == "⌫") {
//         // Backspace functionality
//         if (_currentInput.isNotEmpty) {
//           _currentInput = _currentInput.substring(0, _currentInput.length - 1);
//           if (_currentInput.isEmpty) {
//             _output = "0";
//           } else {
//             _output = _currentInput;
//           }
//         }
//       } else if (buttonText == "%") {
//         if (_currentInput.isNotEmpty && _currentInput != "Error") {
//           double currentValue = double.parse(_currentInput);
//           _output = (currentValue / 100).toString();
//           _currentInput = _output;
//         }
//       } else if (buttonText == "+" ||
//           buttonText == "-" ||
//           buttonText == "÷" ||
//           buttonText == "×") {
//         // If an operand is pressed
//         if (_currentInput.isNotEmpty && _currentInput != "Error") {
//           // Allow chaining operations
//           if (_num1 != 0 && _operand.isNotEmpty) {
//             _calculate();
//           }
//           _num1 = double.parse(_currentInput);
//           _operand = buttonText;
//           _currentInput = ""; // Clear for the next number
//         }
//       } else if (buttonText == ".") {
//         // Handle decimal point
//         if (!_currentInput.contains(".")) {
//           // Prepend "0" if input is empty
//           if (_currentInput.isEmpty) {
//             _currentInput = "0.";
//           } else {
//             _currentInput += ".";
//           }
//         }
//         _output = _currentInput;
//       } else if (buttonText == "=") {
//         _calculate();
//       } else {
//         // This handles number inputs
//         if (_currentInput == "0" || _currentInput == "Error") {
//           _currentInput = buttonText;
//         } else {
//           _currentInput += buttonText;
//         }
//         _output = _currentInput;
//       }
//     });
//   }

//   void _calculate() {
//     // When equals is pressed, perform the calculation
//     if (_currentInput.isNotEmpty &&
//         _operand.isNotEmpty &&
//         _currentInput != "Error") {
//       _num2 = double.parse(_currentInput);

//       if (_operand == "+") {
//         _output = (_num1 + _num2).toString();
//       }
//       if (_operand == "-") {
//         _output = (_num1 - _num2).toString();
//       }
//       if (_operand == "×") {
//         _output = (_num1 * _num2).toString();
//       }
//       if (_operand == "÷") {
//         if (_num2 != 0) {
//           _output = (_num1 / _num2).toString();
//         } else {
//           _output = "Error"; // Handle division by zero
//         }
//       }

//       // Clean up the result to remove unnecessary ".0"
//       if (_output.endsWith(".0")) {
//         _output = _output.substring(0, _output.length - 2);
//       }

//       // Reset state for next calculation
//       if (_output != "Error") {
//         _num1 = double.parse(_output);
//       } else {
//         _num1 = 0;
//       }
//       _operand = "";
//       _currentInput = _output;
//     }
//   }

//   // Helper widget to build each calculator button
//   Widget _buildButton(
//     String buttonText, {
//     Color? textColor,
//     Color? backgroundColor,
//   }) {
//     // Default colors
//     textColor ??= Colors.white;
//     backgroundColor ??= const Color(0xFF303030); // Dark grey for numbers

//     if (buttonText == "=") {
//       return Expanded(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: TextButton(
//             onPressed: () => _buttonPressed(buttonText),
//             style: TextButton.styleFrom(
//               backgroundColor: const Color(0xFF26E07F), // Green background
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(16),
//               ),
//             ),
//             child: Text(
//               buttonText,
//               style: const TextStyle(
//                 fontSize: 42.0,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ),
//       );
//     }

//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: TextButton(
//           onPressed: () => _buttonPressed(buttonText),
//           style: TextButton.styleFrom(
//             backgroundColor: backgroundColor,
//             shape: const CircleBorder(),
//           ),
//           child: buttonText == "⌫"
//               ? Icon(Icons.backspace_outlined, color: textColor)
//               : Text(
//                   buttonText,
//                   style: TextStyle(
//                     fontSize: 32.0,
//                     fontWeight: FontWeight.w500,
//                     color: textColor,
//                   ),
//                 ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Set status bar icons to light
//     SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

//     const operatorColor = Color(0xFF26E07F); // Green for operators
//     const topRowColor = Color(0xFFa0a0a0); // Lighter grey for top row

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Column(
//           children: <Widget>[
//             // Display screen
//             Expanded(
//               flex: 2,
//               child: Container(
//                 alignment: Alignment.bottomRight,
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 24.0,
//                   horizontal: 24.0,
//                 ),
//                 child: Text(
//                   _output,
//                   style: const TextStyle(
//                     fontSize: 80.0,
//                     fontWeight: FontWeight.w300,
//                     color: Colors.white,
//                   ),
//                   maxLines: 1,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//               ),
//             ),
//             // Button grid
//             Expanded(
//               flex: 3,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           _buildButton(
//                             "C",
//                             textColor: Colors.black,
//                             backgroundColor: topRowColor,
//                           ),
//                           _buildButton(
//                             "%",
//                             textColor: Colors.black,
//                             backgroundColor: topRowColor,
//                           ),
//                           _buildButton(
//                             "⌫",
//                             textColor: Colors.black,
//                             backgroundColor: topRowColor,
//                           ),
//                           _buildButton("÷", textColor: operatorColor),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           _buildButton("7"),
//                           _buildButton("8"),
//                           _buildButton("9"),
//                           _buildButton("×", textColor: operatorColor),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           _buildButton("4"),
//                           _buildButton("5"),
//                           _buildButton("6"),
//                           _buildButton("-", textColor: operatorColor),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           _buildButton("1"),
//                           _buildButton("2"),
//                           _buildButton("3"),
//                           _buildButton("+", textColor: operatorColor),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           _buildButton(
//                             "00",
//                           ), // Using 00 as a placeholder for the bottom left icon
//                           _buildButton("0"),
//                           _buildButton("."),
//                           _buildButton("="),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Home page widget that holds the calculator UI
class CalculatorHomePage extends StatefulWidget {
  const CalculatorHomePage({super.key});

  @override
  State<CalculatorHomePage> createState() => _CalculatorHomePageState();
}

class _CalculatorHomePageState extends State<CalculatorHomePage> {
  // Variables to hold the state of the calculator
  String _history = "";
  String _output = "0";
  String _currentInput = "";
  double _num1 = 0;
  double _num2 = 0;
  String _operand = "";

  // This function is called when any button is pressed
  void _buttonPressed(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        // Clear all the state
        _history = "";
        _output = "0";
        _currentInput = "";
        _num1 = 0;
        _num2 = 0;
        _operand = "";
      } else if (buttonText == "⌫") {
        // Backspace functionality
        if (_currentInput.isNotEmpty) {
          _currentInput = _currentInput.substring(0, _currentInput.length - 1);
          if (_currentInput.isEmpty) {
            _output = "0";
          } else {
            _output = _currentInput;
          }
        }
      } else if (buttonText == "%") {
        if (_currentInput.isNotEmpty && _currentInput != "Error") {
          double currentValue = double.parse(_currentInput);
          _history = "$_currentInput%";
          _output = (currentValue / 100).toString();
          _currentInput = _output;
        }
      } else if (buttonText == "+" ||
          buttonText == "-" ||
          buttonText == "÷" ||
          buttonText == "×") {
        // If an operand is pressed
        if (_currentInput.isNotEmpty && _currentInput != "Error") {
          // Allow chaining operations
          if (_num1 != 0 && _operand.isNotEmpty) {
            _calculate();
          }
          _num1 = double.parse(_currentInput);
          _operand = buttonText;
          _history = "${_formatNumber(_num1)} $_operand";
          _currentInput = ""; // Clear for the next number
        }
      } else if (buttonText == ".") {
        // Handle decimal point
        if (!_currentInput.contains(".")) {
          // Prepend "0" if input is empty
          if (_currentInput.isEmpty) {
            _currentInput = "0.";
          } else {
            _currentInput += ".";
          }
        }
        _output = _currentInput;
      } else if (buttonText == "=") {
        _calculate();
      } else {
        // This handles number inputs
        if (_operand.isEmpty) {
          _history = ""; // Clear history when starting a new calculation
        }
        if (_currentInput == "0" || _currentInput == "Error") {
          _currentInput = buttonText;
        } else {
          _currentInput += buttonText;
        }
        _output = _currentInput;
      }
    });
  }

  void _calculate() {
    // When equals is pressed, perform the calculation
    if (_currentInput.isNotEmpty &&
        _operand.isNotEmpty &&
        _currentInput != "Error") {
      _num2 = double.parse(_currentInput);

      _history = "${_formatNumber(_num1)} $_operand ${_formatNumber(_num2)}";

      if (_operand == "+") {
        _output = (_num1 + _num2).toString();
      }
      if (_operand == "-") {
        _output = (_num1 - _num2).toString();
      }
      if (_operand == "×") {
        _output = (_num1 * _num2).toString();
      }
      if (_operand == "÷") {
        if (_num2 != 0) {
          _output = (_num1 / _num2).toString();
        } else {
          _output = "Error"; // Handle division by zero
        }
      }

      // Reset state for next calculation
      if (_output != "Error") {
        _num1 = double.parse(_output);
      } else {
        _num1 = 0;
      }
      _operand = "";
      _currentInput = _output;
    }
  }

  String _formatNumber(double number) {
    if (number.truncateToDouble() == number) {
      return number.truncate().toString();
    } else {
      return number.toString();
    }
  }

  // Helper widget to build each calculator button
  Widget _buildButton(
    String buttonText, {
    Color? textColor,
    Color? backgroundColor,
  }) {
    // Default colors
    textColor ??= Colors.white;
    backgroundColor ??= const Color(0xFF303030); // Dark grey for numbers

    if (buttonText == "=") {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () => _buttonPressed(buttonText),
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xFF26E07F), // Green background
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () => _buttonPressed(buttonText),
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: const CircleBorder(),
          ),
          child: buttonText == "⌫"
              ? Icon(Icons.backspace_outlined, color: textColor)
              : Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w500,
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Set status bar icons to light
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    const operatorColor = Color(0xFF26E07F); // Green for operators
    const topRowColor = Color(0xFFa0a0a0); // Lighter grey for top row

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            // Display screen
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.symmetric(
                  vertical: 24.0,
                  horizontal: 24.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // History Text
                    Text(
                      _history,
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey[600],
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 10),
                    // Main Output Text
                    Text(
                      _formatNumber(double.tryParse(_output) ?? 0),
                      style: const TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            // Button grid
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildButton(
                            "C",
                            textColor: Colors.black,
                            backgroundColor: topRowColor,
                          ),
                          _buildButton(
                            "%",
                            textColor: Colors.black,
                            backgroundColor: topRowColor,
                          ),
                          _buildButton(
                            "⌫",
                            textColor: Colors.black,
                            backgroundColor: topRowColor,
                          ),
                          _buildButton("÷", textColor: operatorColor),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildButton("7"),
                          _buildButton("8"),
                          _buildButton("9"),
                          _buildButton("×", textColor: operatorColor),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildButton("4"),
                          _buildButton("5"),
                          _buildButton("6"),
                          _buildButton("-", textColor: operatorColor),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildButton("1"),
                          _buildButton("2"),
                          _buildButton("3"),
                          _buildButton("+", textColor: operatorColor),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          _buildButton(
                            "00",
                          ), // Using 00 as a placeholder for the bottom left icon
                          _buildButton("0"),
                          _buildButton("."),
                          _buildButton("="),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
