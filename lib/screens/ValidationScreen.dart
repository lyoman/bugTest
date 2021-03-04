import 'package:beunique/screens/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:beunique/screens/VerificationScreen.dart';
// import 'package:intl_phone_number_input/intl_phone_number_input.dart';



class ValidationScreen extends StatefulWidget {
  @override
  _ValidationScreenState createState() => _ValidationScreenState();
}

class _ValidationScreenState extends State<ValidationScreen> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Validation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            // Container(
            //   margin: EdgeInsets.only(top: 60),
            //   child: Center(
            //     child: Text(
            //       'Phone Validation',
            //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            //     ),
            //   ),
            // ),
            Container(
              margin: EdgeInsets.only(top: 40, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+971'),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              color: Color.fromRGBO(80,192,168,1),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VerificationScreen(_controller.text)));
              },
              child: Text(
                'Confirm Code',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// Widget _buildDropdownItem(Country country) => Container(
//         child: Row(
//           children: <Widget>[
//             CountryPickerUtils.getDefaultFlagImage(country),
//             SizedBox(
//               width: 8.0,
//             ),
//             Text("+${country.phoneCode}(${country.isoCode})"),
//           ],
//         ),
//       );
