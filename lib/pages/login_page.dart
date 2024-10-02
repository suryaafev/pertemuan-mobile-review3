import 'package:flutter/material.dart';
import 'package:praktikum/widget/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //   TextEditingController username = TextEditingController();
  //   TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jeniskelamin;
  bool? hobi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(height: 20),
              // CustomTextField(
              //     Controller: username,
              //     label: "Username",
              //     hint: "Masukkan Username"),
              // const SizedBox(height: 20),
              // CustomTextField(
              //     Controller: password,
              //     label: "Password",
              //     hint: "Masukkan Password"),
              // const SizedBox(height: 20),
              const SizedBox(height: 20),
              CustomTextField(
                  Controller: nama, label: "Nama", hint: "Masukkan Nama "),
              const SizedBox(height: 20),
              CustomTextField(
                  Controller: email, label: "Email", hint: "Masukkan Email "),
              const SizedBox(height: 20),
              CustomTextField(
                  Controller: umur, label: "Umur", hint: "Masukkan Umur "),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: Text("Pria"),
                    leading: Radio(
                      value: "Pria",
                      groupValue: jeniskelamin,
                      onChanged: (value) {
                        setState(() {
                          jeniskelamin = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 50),
                    title: Text("Wanita"),
                    leading: Radio(
                      value: "Wanita",
                      groupValue: jeniskelamin,
                      onChanged: (value) {
                        setState(() {
                          jeniskelamin = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // print(
                      //     "username : ${username.text}\n password: ${password.text}");
                      // username.clear();
                      // password.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
