import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/social_media_row.dart';
import '../widgets/action_button_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Saya'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: [
                    // Menghapus 'const' di depan Column agar ProfileHeader() bisa dipanggil normal
                    const ProfileHeader(), 
                    const SizedBox(height: 24),
                    const SocialMediaRow(),
                    const SizedBox(height: 24),
                    const Text(
                      'Flutter Developer | Belajar Widgets & Layouts',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Padding(
                padding: EdgeInsets.only(bottom: 24.0),
                child: ActionButtons(), // Pastikan nama class tombol Anda adalah ActionButtons
              ),
            ),
          ],
        ),
      ),
    );
  }
}
