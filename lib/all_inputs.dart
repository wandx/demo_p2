import 'package:flutter/material.dart';

class AllInputScreen extends StatefulWidget {
  const AllInputScreen({super.key});

  @override
  State<AllInputScreen> createState() => _AllInputScreenState();
}

class _AllInputScreenState extends State<AllInputScreen> {
  String? nilai;
  bool setuju = true;
  int pilih = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Input'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Column(
          children: [
            Text('Input Widget'),
            TextField(
              decoration: InputDecoration(
                label: Text('Demo Input'),
                hintText: 'Ketik Text Anda',
              ),
            ),
            SizedBox(height: 20),
            Text('Dropdown'),
            DropdownButton(
              value: nilai,
              items: [
                DropdownMenuItem(
                  child: Text('Jeruk'),
                  value: 'Jeruk',
                ),
                DropdownMenuItem(
                  child: Text('Apel'),
                  value: 'Apel',
                ),
                DropdownMenuItem(
                  child: Text('Melon'),
                  value: 'Melon',
                ),
                DropdownMenuItem(
                  child: Text('Semangka'),
                  value: 'Semangka',
                ),
              ],
              onChanged: (nilaiSekarang) {
                setState(() {
                  nilai = nilaiSekarang!;
                });
              },
            ),
            SizedBox(height: 20),
            Text('Checkbox'),
            Row(
              children: [
                Text('Setuju?'),
                Checkbox(
                  value: setuju,
                  onChanged: (nilaiSekarang) {
                    setState(() {
                      setuju = nilaiSekarang!;
                    });
                  },
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            SizedBox(height: 20),
            Text('Radio'),
            Row(
              children: [
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: pilih,
                      onChanged: (nilaiSekarang) {
                        setState(() {
                          pilih = nilaiSekarang!;
                        });
                      },
                    ),
                    Text('Pria'),
                  ],
                ),
                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: pilih,
                      onChanged: (nilaiSekarang) {
                        setState(() {
                          pilih = nilaiSekarang!;
                        });
                      },
                    ),
                    Text('Wanita'),
                  ],
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ),
      ),
    );
  }
}
