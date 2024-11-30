import 'package:flutter/material.dart';
import 'package:gournambab/models/bab_model.dart';
import 'package:gournambab/presentation/screens/detail_page.dart';

class BabListScreen extends StatelessWidget {
  const BabListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BabModel> babs = [
      BabModel(
          id: '1',
          name: 'BAB1',
          location: 'GOUDAL',
          capacity: '100 Tone',
          telephone: '90909000',
          pricePerKil: '1000',
          imageUrl: 'assets/image.png',
          stock: 55),
      BabModel(
          id: '2',
          name: 'BAB2',
          location: 'MAROUA',
          capacity: '200 Tone',
          telephone: '90112233',
          pricePerKil: '1200',
          imageUrl: 'assets/image.png',
          stock: 65),
     
    ];

    return ListView.builder(
      itemCount: babs.length,
      itemBuilder: (context, index) {
        final bab = babs[index];
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.teal,
              child: Text(bab.id),
            ),
            title: Text(
              bab.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Location: ${bab.location}\nCapacity: ${bab.capacity}\nStock: ${bab.stock} Tons",
            ),
            isThreeLine: true,
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(bab: bab),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
