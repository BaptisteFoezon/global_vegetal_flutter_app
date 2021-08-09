import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  bool _folded = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: _folded ? 56 : 200,
      height: 56,
      decoration: BoxDecoration(
        color: Color.fromRGBO(105, 161, 182, 1),
        borderRadius: BorderRadius.circular(32),
        //boxShadow: kElevationToShadow[0],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 16),
              child: !_folded
                  ? TextField(
                      decoration: InputDecoration(
                        hintText: 'rechercher',
                        hintStyle:
                            TextStyle(color: Color.fromRGBO(0, 49, 67, 1)),
                        border: InputBorder.none,
                      ),
                    )
                  : null,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_folded ? 32 : 0),
                  bottomLeft: Radius.circular(_folded ? 32 : 0),
                  topRight: Radius.circular(32),
                  bottomRight: Radius.circular(32),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(
                    _folded ? Icons.search : Icons.close,
                    color: Color.fromRGBO(0, 49, 67, 1),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _folded = !_folded;
                  });
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
