import 'package:animation/main.dart';
import 'package:animation/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginPAge extends StatefulWidget {
  const LoginPAge({super.key});

  @override
  State<LoginPAge> createState() => _LoginPAgeState();
}

class _LoginPAgeState extends State<LoginPAge> {
  final language = ['en', 'ml', 'hi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("LOGIN PAGE"),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: DropdownButton(
              icon: const Icon(
                Icons.language,
                color: Colors.white,
              ),
              underline: const SizedBox(),
              items: language
                  .map(
                    (e) => DropdownMenuItem<String>(
                      value: e,
                      child: Text(
                        e,
                        style: const TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (language) {
                if (language != null) {
                  MyApp.setLocale(context, Locale(language));
                }
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.username),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: AppLocalizations.of(context)!.password),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyHomePage()));
                },
                child: Text(AppLocalizations.of(context)!.login))
          ],
        ),
      ),
    );
  }
}
