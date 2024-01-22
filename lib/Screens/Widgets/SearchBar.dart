import 'package:flutter/material.dart';
import 'package:pharmacy/Core/Constants/Costants.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: KSecColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: KSecColor),
              borderRadius: BorderRadius.circular(10)),
          hintText: 'Search For Medicine or Product',
          hintStyle: const TextStyle(color: KSecColor, fontSize: 15),
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.clear,
              color: KSecColor,
            ),
            onPressed: () => _searchController.clear(),
          ),
          prefixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: KSecColor,
            ),
            onPressed: () {
              // Perform the search here
            },
          ),
        ),
      ),
    );
  }
}
