import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController inputNama = TextEditingController();

  @override
  void dispose() {
    inputNama.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("pesan_makan")),
      backgroundColor: const Color.fromARGB(169, 215, 141, 187),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 70, 198, 207),
                  hintText: 'Masukan Nama',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                onFieldSubmitted: (values) {
                  inputNama.text = values;
                },
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            child: const Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}
