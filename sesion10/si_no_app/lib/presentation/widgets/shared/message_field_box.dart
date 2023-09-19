import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(40),
      // borderSide: BorderSide.none,
    );
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {},
        ),
      ),
    );
    // return TextFormField(
    //   decoration: InputDecoration(
    //     hintText: 'Type a message',
    //     hintStyle: TextStyle(
    //       color: colors.onPrimary,
    //     ),
    //     fillColor: colors.primary,
    //     filled: true,
    //     border: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(50),
    //       borderSide: BorderSide.none,
    //     ),
    //     suffixIcon: Row(
    //       mainAxisSize: MainAxisSize.min,
    //       children: [
    //         IconButton(
    //           icon: Icon(Icons.attach_file),
    //           onPressed: () {},
    //         ),
    //         IconButton(
    //           icon: Icon(Icons.camera_alt),
    //           onPressed: () {},
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

}

//bottomNavigationBar: BottomAppBar(
//   child: Row(
//     children: [
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.add),
//       ),
//       const Expanded(
//         child: TextField(
//           decoration: InputDecoration(
//             border: InputBorder.none,
//             hintText: 'Escribe un mensaje',
//           ),
//         ),
//       ),
//       IconButton(
//         onPressed: () {},
//         icon: const Icon(Icons.send),
//       ),
//     ],
//   ),
// )