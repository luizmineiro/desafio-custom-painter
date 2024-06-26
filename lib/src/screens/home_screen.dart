import 'package:flutter/material.dart';
import 'package:teste_fteam/src/core/config/theme.dart';
import 'package:teste_fteam/src/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _nameController = TextEditingController();
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppTheme.edgePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nameController,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Seu nome aqui',
                filled: true,
                fillColor: AppTheme.textBoxColor,
              ),
            ),
            const SizedBox(height: 40),
            InkWell(
              onTap: () {
                String name = _nameController.text;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(name: name),
                  ),
                );
              },
              child: Container(
                height: AppTheme.buttonHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppTheme.buttonColor,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Enviar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppTheme.textColor,
                      fontSize: AppTheme.fontSize,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
