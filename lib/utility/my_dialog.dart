// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:teerachatmap/models/listdatamap_model.dart';
import 'package:teerachatmap/states/detail_map.dart';
import 'package:teerachatmap/utility/my_constant.dart';
import 'package:teerachatmap/widgets/show_icon_button.dart';
import 'package:teerachatmap/widgets/show_image.dart';
import 'package:teerachatmap/widgets/show_text.dart';
import 'package:teerachatmap/widgets/show_text_button.dart';

class MyDialog {
  final BuildContext context;
  MyDialog({
    required this.context,
  });

  Future<void> modalButtonSheetDialog(
      {required ListDataMapModel listDataMapModel}) async {
    showModalBottomSheet(
      context: context,
      builder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 8),
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const ShowImage(),
                  title: ShowText(
                    text: listDataMapModel.title,
                    textStyle: MyConstant().h2Style(),
                  ),
                  subtitle: ShowText(
                      text:
                          '${listDataMapModel.tumbon} ${listDataMapModel.amphoe} ${listDataMapModel.province} '),
                  trailing: ShowIconButton(
                    iconData: Icons.disabled_by_default,
                    tapFunc: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ShowTextButton(
                      label: 'More Detail',
                      pressFunc: () {
                        Navigator.pop(context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailMap(listDataMapModel: listDataMapModel),
                            ));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
