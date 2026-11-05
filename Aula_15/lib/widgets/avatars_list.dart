import 'package:flutter/material.dart';
import 'profile_detail_screen.dart';

class AvatarsListSection extends StatelessWidget {
  const AvatarsListSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          AvatarCircleItem(
            name: 'Ana Silva',
            imagePath: 'assets/ana.jpg',
          ),
          AvatarCircleItem(
            name: 'Carlos Souza',
            imagePath: 'assets/carlos.jpg',
          ),
          AvatarCircleItem(
            name: 'Beatriz Lima',
            imagePath: 'assets/beatriz.jpg',
          ),
          AvatarCircleItem(
            name: 'Lucas Mendes',
            imagePath: 'assets/lucas.jpg',
          ),
        ],
      ),
    );
  }
}

class AvatarCircleItem extends StatelessWidget {
  final String name;
  final String imagePath;

  const AvatarCircleItem({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileDetailScreen(
              userName: name,
              userImage:
                  imagePath, // Passa também a foto para a tela de detalhes
            ),
          ),
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:
                AssetImage(imagePath), // Usa a imagem local do asset
          ),
          const SizedBox(height: 6),
          Text(
            name.split(' ')[0],
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
