import 'package:flutter/material.dart';

String avatar =
    'https://scontent.fdad1-4.fna.fbcdn.net/v/t39.30808-6/273013377_2981496035396421_570534556808612650_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=CG0eE7D07gUAX9eZ5g2&_nc_ht=scontent.fdad1-4.fna&oh=00_AfAnt1e0eQiWCIQntzsLmUs8rEd0LVhQnGkF372-9LTLbw&oe=63964A09';

class AppBarAdmin extends StatelessWidget {
  const AppBarAdmin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 50,
          width: 200,
          child: TextField(
              autofocus: true,
              maxLines: 1,
              style: TextStyle(
                fontSize: 16,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(top: 10),
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.white,
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 16.0),
              )),
        ),
        const SizedBox(width: 10),
        IconButton(
            icon: const Icon(
              Icons.notifications_active,
              size: 20,
            ),
            onPressed: () {}),
        const SizedBox(width: 15),
        Row(children: [
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(
              avatar,
            ),
          ),
          const Icon(Icons.arrow_drop_down_outlined, color: Colors.black)
        ]),
      ],
    );
  }
}
