import 'package:flutter/material.dart';
import 'package:flutter_windows_tile/windows_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      backgroundColor: Colors.black.withOpacity(0.08),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTile(Colors.blueAccent),
          const SizedBox(height: 4),
          Row(
            children: [
              _buildSquareTile(Colors.amberAccent),
              const SizedBox(width: 4),
              _buildSquareTile(Colors.green),
              const SizedBox(width: 4),
              _buildSquareTile(Colors.orangeAccent),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              _buildSquareTile(Colors.pink),
              const SizedBox(width: 4),
              _buildSquareTile(Colors.indigo),
              const SizedBox(width: 4),
              _buildSquareTile(Colors.deepPurpleAccent),
            ],
          ),
          const SizedBox(height: 4),
          _buildTile(Colors.orange),
        ],
      ),
    );
  }

  Widget _buildTile(Color color) {
    return WindowsTile(
      child: Container(
        color: color,
        height: 120,
      ),
    );
  }

  Widget _buildSquareTile(Color color) {
    return Expanded(
      child: WindowsTile(
        child: AspectRatio(
          aspectRatio: 1,
          child: ColoredBox(color: color),
        ),
      ),
    );
  }
}
