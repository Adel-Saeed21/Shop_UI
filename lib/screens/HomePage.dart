import 'package:flutter/material.dart';
import 'package:smarket/data/Constant.dart';
import 'package:smarket/data/dataOFProject.dart';
import 'package:smarket/widget/CatogoriesItem.dart';
import 'package:smarket/widget/ItemCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          elevation: 0.0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.grey),
          title: const Row(children: [
            SizedBox(
              width: 50,
            ),
            Icon(Icons.shop_outlined),
            Text(
              " Shop",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              " Mode",
              style: TextStyle(color: Colors.orange),
            ),
          ]),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchCustomer());
              },
              icon: const Icon(Icons.search),
              iconSize: 35,
            )
          ],
        ),
        body: ListView(children: [
          Container(
            height: 1000,
            padding: const EdgeInsets.all(10),
            child: ListView(
              children: [
                Text(
                  "Catogories",
                  style: TextStyle(
                      color: constOrang,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 450,
                        height: 110,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: Item.length,
                            shrinkWrap: true,
                            itemBuilder: ((context, i) => CatogoriesItem(
                                  photo: Item[i].photo,
                                  text: Item[i].text,
                                  does: Item[i].does,
                                  title: Item[i].title,
                                ))),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Best Sellies",
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 750,
                  child: GridView.builder(
                    itemCount: sales.length,
                    itemBuilder: (context, index) => ItemCard(
                        image: sales[index].image,
                        itemName: sales[index].itemName),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisExtent: 240),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class SearchCustomer extends SearchDelegate {
  List ItemSearch = [
    "headphone",
    "apple watch",
    "iphone",
    "man clothes",
    "woman clothes"
  ];
  List? itemss;
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.drive_file_rename_outline_sharp))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text("adool");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query == "") {
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {},
            child: Card(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${ItemSearch[i]}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: ItemSearch.length,
      );
    } else {
      itemss = ItemSearch.where((element) => element.contains(query)).toList();
      return ListView.builder(
        itemBuilder: (context, i) {
          return InkWell(
            onTap: () {},
            child: Card(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "${itemss![i]}",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: itemss!.length,
      );
    }
  }
}
