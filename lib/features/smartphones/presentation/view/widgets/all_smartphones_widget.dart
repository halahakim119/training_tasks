import 'package:flutter/material.dart';

class AllSmartphonesWidget extends StatelessWidget {
  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;
  const AllSmartphonesWidget(
      {this.id,
      this.title,
      this.description,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock,
      this.brand,
      this.category,
      this.thumbnail,
      this.images});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Image.network(
            '$thumbnail',
            height: 100,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          ListTile(
            tileColor: Colors.grey.shade200,
            title: Text('$id- $title'),
            subtitle: Text(
              description.toString(),
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
            trailing: Text('$price USD'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const  [
                    Text('discount Percentage: '),
                    Text('rating: '),
                    Text('availability num in the stock:'),
                    Text('brand:'),
                    Text('category:'),
                  ],
                ),
                Container(
                  width: 10,
                  height: 100,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$discountPercentage%',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      '$rating/5',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      '$stock ',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      '$brand ',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                    Text(
                      '$category ',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            width: MediaQuery.of(context).size.width,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Image.network(
                  images![index],
                  fit: BoxFit.contain,
                );
              },
              itemCount: images!.length,
              separatorBuilder: (BuildContext context, _) {
                return SizedBox(
                  width: 5,
                );
              },
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
