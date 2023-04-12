import 'package:flutter/material.dart';

class ButtonMenuWidget extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  const ButtonMenuWidget({Key? key, required this.icon, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPressed!();
      },
      child: Container(
        width: 50,
        height: 50,
        child: Icon(icon, color: Colors.white70),
        decoration: BoxDecoration(
          color: Colors.lightBlue,
          border: Border.all(width: 2, color: Colors.blue),
          borderRadius: BorderRadius.circular(16)
        ),
      ),
    );
  }
}
