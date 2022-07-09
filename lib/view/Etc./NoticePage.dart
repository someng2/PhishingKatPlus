import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:voskat/view/viewModel/notice_view_model.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  State<NoticePage> createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
  // TODO: 공지사항 DB 설계 & 연결
  List<String> noticeDB = ["공지1", "공지2", "공지3", "공지4"];


  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<NoticeViewModel>();
    final state = viewModel.state;

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(47.h), // here the desired height
            child: AppBar(
              leading: Container(
                width: 14.w,
                height: 14.h,
                child: TextButton(
                  child: Icon(
                    Icons.close,
                    color: const Color(0xff000000),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ),
              elevation: 0,
              backgroundColor: const Color(0xffeaf5ff),
              title: Text("공지사항",
                  style: TextStyle(
                      color: const Color(0xff0b80f5),
                      fontWeight: FontWeight.w400,
                      fontFamily: "YDIYGO320",
                      fontStyle: FontStyle.normal,
                      fontSize: 17.sp),
                  textAlign: TextAlign.center),
              centerTitle: true,
            )),
        body: ListView.separated(
          itemCount: state.noticeDB.length,
          itemBuilder: (context, index) {
            final noticeDB = state.noticeDB[index];
            return ExpansionTile(
              title: Container(
                padding: EdgeInsets.only(left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(noticeDB.title,
                        style: TextStyle(
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 15.sp),
                        textAlign: TextAlign.left),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text(changeDateFormat(noticeDB.update_time),
                        style: TextStyle(
                            color: const Color(0x999b9b9b),
                            fontWeight: FontWeight.w400,
                            fontFamily: "NotoSansCJKKR",
                            fontStyle: FontStyle.normal,
                            fontSize: 14.sp),
                        textAlign: TextAlign.left)
                  ],
                ),
              ),
              children: _getChildren(noticeDB.content),
              iconColor: Color(0xff005db9),
              collapsedIconColor: Color(0xff9b9b9b),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: const Color(0xfff0f0f0),
              height: 0,
              thickness: 1,
            );
          },
        ));
  }

  List<Widget> _getChildren(String contents) {
    return [
      Container(
        width: 360.w,
        padding:
            EdgeInsets.only(top: 14.h, bottom: 13.h, left: 26.w, right: 24.w),
        decoration: BoxDecoration(color: const Color(0xfff6f6f6)),
        child: Text(contents),
      )
    ];
  }

  changeDateFormat(String str) {
    DateTime dt = DateTime.parse(str);
    print(dt);
    var formatter = new DateFormat('yyyy. M. d');
    String formattedDate = formatter.format(dt);
    print(formattedDate);
    return formattedDate;
  }
}
