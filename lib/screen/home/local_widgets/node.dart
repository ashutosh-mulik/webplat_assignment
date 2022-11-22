import 'package:flutter/material.dart';

class Node extends StatefulWidget {
  final List<Node>? children;
  final int index;
  final Color backGroundColor;
  final String name;
  final String userName;

  const Node({
    Key? key,
    required this.children,
    required this.index,
    required this.backGroundColor,
    required this.name,
    required this.userName,
  }) : super(key: key);

  @override
  State<Node> createState() => _NodeState();
}

class _NodeState extends State<Node> {
  bool _isExpanded = false;

  _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: widget.index == 0 ? 0 : MediaQuery.of(context).size.width / 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () => _toggle(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _isExpanded ? const Icon(Icons.indeterminate_check_box_outlined) : const Icon(Icons.add_box_outlined),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: widget.backGroundColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Center(
                    child: Text(
                      widget.name,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  " - ${widget.userName}",
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                )
              ],
            ),
          ),
          if (_isExpanded && widget.children != null) ...[
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: widget.children!,
            ),
          ],
        ],
      ),
    );
  }
}
