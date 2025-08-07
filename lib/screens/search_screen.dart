//Packages
import 'package:flutter/material.dart';
import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';

//Widgets
import '../widgets/title_text.dart';
import '../widgets/products/product_widget.dart';
//Services
import '../services/assets_manager.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchTextController;
  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: buildUI(context),
    );
  }

  Widget buildUI(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const TitleText(title: 'Search'),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            searchBar(context),
            Expanded(
              child: DynamicHeightGridView(
                itemCount: 220,
                builder: ((context, index) {
                  return ProductWidget();
                }),
                crossAxisCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget searchBar(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        filled: true,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              searchTextController.clear();
              FocusScope.of(context).unfocus();
            });
          },
          child: const Icon(Icons.clear),
        ),
        prefixIcon: const Icon(Icons.search),
      ),
      onChanged: (value) {},
      onSubmitted: (value) {},
    );
  }
}
