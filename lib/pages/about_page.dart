import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profil",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileCard(),
              SizedBox(height: 16),
              _buildAdditionalCards(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30, // Ukuran gambar profil
                backgroundImage: AssetImage(
                    'assets/images/pegal.png'), // Ganti dengan path gambar profil
              ),
              title: Text(
                "Aldi Yunan Anwari",
                style: TextStyle(
                  fontSize: 20, // Ukuran teks nama
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "2106006",
                style: TextStyle(
                  fontSize: 16, // Ukuran teks NIM
                ),
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildStatItem("1.906", "Notes"),
                _buildStatItem("19.073","Like",),
                _buildStatItem("11.875","Comment"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalCards() {
    return ListView(
      shrinkWrap: true,
      physics:
          NeverScrollableScrollPhysics(), // Prevent scrolling within ListView
      children: [
        _buildPostCard(
          "Ini adalah notes pertama.",
          "assets/images/pegal.png",
        ),
        SizedBox(height: 8),
        _buildPostCard(
          "Ini adalah notes kedua.",
          "assets/images/pegal.png",
        ),
        SizedBox(height: 8),
        _buildPostCard(
          "Ini adalah notes ketiga.",
          "assets/images/pegal.png",
        ),
        SizedBox(height: 8),
        _buildPostCard(
          "Ini adalah notes keempat.",
          "assets/images/pegal.png",
        ),
      ],
    );
  }

  Widget _buildPostCard(String content, String imagePath) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 24, // Ukuran gambar kecil
                backgroundImage:
                    AssetImage(imagePath), // Ganti dengan path gambar postingan
              ),
              title: Text(
                "Aldi Yunan Anwari",
                style: TextStyle(
                  fontSize: 18, // Ukuran teks nama postingan
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              content,
              style: TextStyle(fontSize: 14), // Ukuran teks notes
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String value) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 14, // Ukuran teks stat
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 12, // Ukuran teks label stat
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
