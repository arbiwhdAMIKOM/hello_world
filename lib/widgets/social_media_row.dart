import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showSnackBar(BuildContext context, String platform) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platform'),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Mengganti Instagram jika tidak pakai lucide/font_awesome
          tooltip: 'Instagram',
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.business), // Mengganti LinkedIn
          tooltip: 'LinkedIn',
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code), // Mengganti GitHub
          tooltip: 'GitHub',
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}
