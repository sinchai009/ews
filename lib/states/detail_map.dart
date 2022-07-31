// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teerachatmap/models/allmap_model.dart';

import 'package:teerachatmap/models/listdatamap_model.dart';
import 'package:teerachatmap/utility/my_constant.dart';
import 'package:teerachatmap/widgets/show_image.dart';
import 'package:teerachatmap/widgets/show_text.dart';

class DetailMap extends StatefulWidget {
  final ListDataMapModel listDataMapModel;
  const DetailMap({
    Key? key,
    required this.listDataMapModel,
  }) : super(key: key);

  @override
  State<DetailMap> createState() => _DetailMapState();
}

class _DetailMapState extends State<DetailMap> {
  AllMapModel? allMapModel;
  ListDataMapModel? listDataMapModel;

  @override
  void initState() {
    super.initState();
    listDataMapModel = widget.listDataMapModel;
    print('##31july listDataMapModel ==> ${listDataMapModel!.toMap()}');
    loadListAllMap();
  }

  Future<void> loadListAllMap() async {
    String result = await rootBundle.loadString('assets/listallmap.json');
    for (var element in json.decode(result)) {
      AllMapModel model = AllMapModel.fromMap(element);
      if (model.stnId == listDataMapModel!.stationId) {
        allMapModel = AllMapModel.fromMap(element);
      }
      print('##31july allMapModel ==> ${allMapModel!.toMap()}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyConstant.white,
      appBar: AppBar(
        centerTitle: true,
        title: ShowText(
          text:
              '${widget.listDataMapModel.tumbon} ${widget.listDataMapModel.amphoe} ${widget.listDataMapModel.province}',
          textStyle: MyConstant().h2Style(),
        ),
        backgroundColor: MyConstant.white,
        foregroundColor: MyConstant.dark,
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Container(
          width: constraints.maxWidth,
          height: constraints.maxWidth,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bgtown.png'), opacity: 0.25),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 150,
                height: 150,
                child: ShowImage(),
              ),
              ShowText(
                text: 'คุณภาพอากาศดีมาก',
                textStyle: MyConstant().h2Style(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
