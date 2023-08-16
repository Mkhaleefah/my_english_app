import 'package:flutter/material.dart';

class Plant {
  String name;
  String image;

  Plant({required this.name, required this.image});
}

class PlantListPage extends StatefulWidget {
  @override
  _PlantListPageState createState() => _PlantListPageState();
}

class _PlantListPageState extends State<PlantListPage> {
  List<Plant> plants = [
    Plant(
        name: 'Rose',
        image:
            'https://www.shutterstock.com/image-vector/collection-3d-realistic-vector-icon-260nw-1948554235.jpg'), // Replace with the actual image URL
    Plant(
        name: 'Rose Flowers',
        image:
            'https://www.shutterstock.com/image-vector/collection-3d-realistic-vector-icon-260nw-1948554235.jpg'),
    Plant(
        name: 'Jasmine',
        image:
            'https://www.shutterstock.com/image-vector/collection-3d-realistic-vector-icon-260nw-1948554235.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plant List'),
      ),
      body: ListView.builder(
        itemCount: plants.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(plants[index].image),
            title: Text(plants[index].name),
            onTap: () {
              // Navigate to plant details page or edit page
              // You can pass the plant object to the next page
              // using Navigator.push or Navigator.pushNamed
            },
            onLongPress: () {
              // Show a dialog or confirmation to delete the plant
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Delete Plant'),
                    content:
                        Text('Are you sure you want to delete this plant?'),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: Text('Delete'),
                        onPressed: () {
                          // Delete the plant from the list
                          setState(() {
                            plants.removeAt(index);
                          });
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              String name = '';
              String image = '';

              return AlertDialog(
                title: Text('Add Plant'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      onChanged: (value) {
                        name = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Name',
                      ),
                    ),
                    TextField(
                      onChanged: (value) {
                        image = value;
                      },
                      decoration: InputDecoration(
                        labelText: 'Image URL',
                      ),
                    ),
                  ],
                ),
                actions: [
                  TextButton(
                    child: Text('Cancel'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: Text('Add'),
                    onPressed: () {
                      // Add the new plant to the list
                      setState(() {
                        plants.add(Plant(name: name, image: image));
                      });
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: PlantListPage(),
  ));
}
