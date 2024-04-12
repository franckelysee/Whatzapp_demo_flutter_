import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements  PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title, 
    this.icon, 
    this.actions, 
    this.route, 
    this.backgroundColor, 
    this.color,
    this.imagePath
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  final String? title;
  final Widget? icon;
  final List<Widget>? actions;
  final String? route;
  final Color? backgroundColor;
  final Color? color;
  final String? imagePath;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor??Theme.of(context).primaryColor,
      title: Text(
        widget.title!,
        style:  TextStyle(
          color: widget.color??Colors.black,
          fontSize: 20,
        ),
      ),
      centerTitle: widget.icon != null?true:false,
      leading: widget.icon != null?Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
              icon: widget.icon!,
              onPressed: widget.route != null ? (){
                Navigator.pushNamed(context, widget.route!);
              }:() {
                Navigator.pop(context);
              },
            ),
            if(widget.imagePath == null)
            CircleAvatar(
              child: Icon(Icons.person, color: Colors.white, size: 20,),
              radius: 20,
            )
          ],
        )
      ):null,
      actions: widget.actions??[],
    );
  }
}