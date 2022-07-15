import 'package:flutter/material.dart';
import 'package:hastaraya/theme.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 248, 1),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 45),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            const Text(
              'My profile',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
            ),
            const SizedBox(height: 30),
            Card(
              color: Colors.blue,
              elevation: 0,
              margin: const EdgeInsets.only(bottom: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(height: 12),
                      Stack(
                        clipBehavior: Clip.none,
                        alignment: AlignmentDirectional.topCenter,
                        fit: StackFit.loose,
                        children: <Widget>[
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                          ),
                          const Positioned(
                            top: -60,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/profile_pic.png'),
                            ),
                          )
                        ],
                      ),
                      const Text(
                        'Jack Sparrow',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          const Icon(Icons.location_on_outlined),
                          const SizedBox(
                            width: 10,
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const <Widget>[
                              Text('Address: 43 Oxford Road ',
                                  style: TextStyle(color: Colors.white)),
                              Text('M13 4GR',
                                  style: TextStyle(color: Colors.white)),
                              Text('Manchester, UK',
                                  style: TextStyle(color: Colors.white)),
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
            ProfileOption(text: 'Edit Profile', onClick: () {}),
            ProfileOption(text: 'Shopping address', onClick: () {}),
            ProfileOption(text: 'Order history', onClick: () {}),
          ],
        ),
      ),
    );
  }
}

class ProfileOption extends StatelessWidget {
  final VoidCallback? onClick;
  final String text;
  ProfileOption({
    Key? key,
    this.onClick,
    this.text = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
      child: ListTile(
        // contentPadding: EdgeInsets.all(10),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        onTap: onClick,
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: Colors.black,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        tileColor: Colors.white,
      ),
    );
  }
}
