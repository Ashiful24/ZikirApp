import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: zikir(),
  ));
}

class zikir extends StatefulWidget {
  const zikir({super.key});

  @override
  State<zikir> createState() => _zikirState();
}

class _zikirState extends State<zikir> {
  int cont = 0;
  String _dropdownValue = 'SUB HUN ALLAH';
  var items = [
    'SUB HUN ALLAH',
    'ALL HUM DU LILLAH',
    'ALLAHU WAKBAR',
    'LA E LA HA ELLA ALLAH'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Zikir'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: DropdownButton(
                        items: items.map((String item) {
                          return DropdownMenuItem(
                              value: item, child: Text(item));
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _dropdownValue = newValue!;
                            cont = 0;
                          });
                        },
                        value: _dropdownValue,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    '$cont',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 50.0,
                    ),
                  ),
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('click'),
        onPressed: () {
          setState(() {
            if (cont >= 100) {
              cont = 0;
            }
            cont++;
          });
        },
      ),
    );
  }
}
