import 'package:flutter/material.dart';

class SearchDestinationWidget extends StatelessWidget {
  const SearchDestinationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: 50.0,
        margin: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: "Search destination ...",
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              suffixIcon: Icon(
                Icons.search,
                size: 30.0,
                color: Colors.grey.shade800,
              ),
              fillColor: Colors.grey.shade200,
              filled: true,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey.shade200)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey.shade200)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Colors.grey.shade200))),
        ),
      ),
    );
  }
}
