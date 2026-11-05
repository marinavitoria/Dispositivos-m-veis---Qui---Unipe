import 'package:flutter/material.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        ActionButtonItem(icon: Icons.location_on_outlined, label: 'Quero Ir'),
        ActionButtonItem(icon: Icons.verified_outlined, label: 'Já Fui'),
        ActionButtonItem(icon: Icons.share, label: 'Compartilhar'),
        ActionButtonItem(icon: Icons.star_outline, label: 'Avaliações'),
      ],
    );
  }
}

class ActionButtonItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButtonItem({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue, size: 28),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
