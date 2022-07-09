import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  final List<MenuRowData> firstMenuRow = [
    MenuRowData(Icons.favorite, 'Вибране'),
    MenuRowData(Icons.call, 'Недавні дзвінки'),
    MenuRowData(Icons.computer, 'Пристрої'),
    MenuRowData(Icons.folder, 'Папки з чатами'),
  ];

  final List<MenuRowData>secondMenuRow = [
    MenuRowData(Icons.notifications_active, 'Повідомдення та звуки'),
    MenuRowData(Icons.privacy_tip, 'Конфединційність'),
    MenuRowData(Icons.date_range , 'Дані та пам\'ять'),
    MenuRowData(Icons.brush, 'Оформлення'),
    MenuRowData(Icons.language, 'Мова'),
  ];
  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Center(child: Text('Настройки'))
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const _UserInfo(),
              const SizedBox(height: 20,),
              _MenuWidget(menuRow: firstMenuRow),
              _MenuWidget(menuRow: secondMenuRow),
            ],

          ),
        )
    );
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const _MenuWidget({Key? key,
  required this.menuRow
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
     //padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: Colors.white,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),

    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;
  //final String text;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text, style: TextStyle(fontSize: 10),)),
          SizedBox(width: 15),
          Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}


class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(children: const [
        SizedBox(height: 10,),
        _AvatarWidget(),
        SizedBox(height: 10,),
        _UserWidget(),
        SizedBox(height: 10,),
        _UserPhoneWidget(),
        SizedBox(height: 10,),
        _UserNickNameWidget()
      ],

      ),
    );
  }
}


class _UserNickNameWidget extends StatelessWidget {
  const _UserNickNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('+38066025152', style: TextStyle(fontSize: 10),);
  }
}

class _UserPhoneWidget extends StatelessWidget {
  const _UserPhoneWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('just_in_ua', style: TextStyle(
      fontSize: 10,
      color: Colors.grey
    ),);
  }
}

class _UserWidget extends StatelessWidget {
  const _UserWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Даніхленко Анатолій',
      style: TextStyle(
          color: Colors.blue,
          backgroundColor: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 20,),
    );
  }
}

class _AvatarWidget extends StatelessWidget {
  const _AvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: const Placeholder(),
    );
  }
}