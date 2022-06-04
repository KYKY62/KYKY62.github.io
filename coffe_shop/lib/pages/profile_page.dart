// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final responsive = MediaQuery.of(context).size;

    Widget picProfile() {
      return Container(
        margin: EdgeInsets.only(top: 20, bottom: 20),
        decoration: BoxDecoration(
          color: Color(0xffEDE6DB),
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/ss.png',
              width: 100,
              height: 100,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Change profile picture",
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget profileForm({required label}) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          width: responsive.width,
          height: 70,
          decoration: BoxDecoration(
            color: Color(0xffFFF6EA),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextFormField(
            style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              labelText: label,
              labelStyle: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.w300,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffEDE6DB),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xffEDE6DB),
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: Text("Simpan"),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                picProfile(),
                profileForm(label: "Nama"),
                profileForm(label: "Alamat"),
                profileForm(label: "Nomor Telepon"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
