import 'package:flutter/material.dart';
import 'package:tat_flutter/model/etc_item.dart';
import 'package:tat_flutter/utils/constant.dart';
import 'package:tat_flutter/widget/rounded_icon.dart';

class EtcPage extends StatelessWidget {
  final List<EtcItem> etcItems = []
    ..add(EtcItem(Icons.school, Colors.deepOrange, '學分計算'))
    ..add(EtcItem(Icons.account_circle, Colors.blue, '帳號管理'))
    ..add(EtcItem(Icons.map, Colors.green, '校園地圖'))
    ..add(EtcItem(Icons.store, Colors.red, '特約商店'))
    ..add(EtcItem(Icons.feedback, Colors.purple, '意見回饋'))
    ..add(EtcItem(Icons.settings, Colors.orange, '設定'))
    ..add(EtcItem(Icons.info, Colors.blueGrey, '關於'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TAT - 其它',
            style: TextStyle(letterSpacing: 2),
          ),
        ),
        body: Container(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: ListView.builder(
              itemBuilder: (context, index) {
                EtcItem etcItem = etcItems[index];
                return InkWell(
                  child: ListTile(
                    contentPadding: EdgeInsets.fromLTRB(24, 4, 24, 4),
                    leading: RoundedIcon(
                      icon: etcItem.icon,
                      color: etcItem.color,
                    ),
                    title: Text(etcItem.text,
                        style: TextStyle(color: Constants.of(context).darkFontColor)),
                  ),
                  onTap: () => {},
                );
              },
              itemCount: etcItems.length,
            )));
  }
}
