import 'package:abc_banking_app/core/constants/files.dart';
import 'package:abc_banking_app/core/shared_pref/shared_pref.dart';
import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:abc_banking_app/routes/routes_constant.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuickTransfer extends StatefulWidget {
  const QuickTransfer({Key? key}) : super(key: key);

  @override
  _QuickTransferState createState() => _QuickTransferState();
}

class _QuickTransferState extends State<QuickTransfer> {
  List<UserModel>? userList;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 0), () async {
      final userListFetched = await SharedPrefService.getAllUser();
      setState(() {
        userList = userListFetched;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    if (userList == null) {
      return const SizedBox();
    }
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Quick Transfer",
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: width - 32,
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: false,
                      itemCount: userList!.length > 10 ? 8 : userList!.length,
                      itemBuilder: (BuildContext context, int index) {
                        UserModel? user =
                            userList!.isNotEmpty ? userList![index] : null;
                        final List<String> imageList = [
                          MyAssets.userMale1,
                          MyAssets.userMale2,
                          MyAssets.userFemale1,
                          MyAssets.userFemale2,
                          MyAssets.userRandom,
                        ];
                        final userImage = imageList[index % imageList.length];
                        return GestureDetector(
                          onTap: () {
                            GoRouter.of(context)
                                .go(RoutesConstant.transfer, extra: user);
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(left: index != 0 ? 12.0 : 0),
                            child: SizedBox(
                              width: 60,
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                      borderRadius: BorderRadius.circular(25),
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          color: Colors.grey.withOpacity(0.1),
                                          child: SizedBox(
                                            child: Image(
                                                image: AssetImage(userImage)),
                                          ))),
                                  Text(
                                    user!.firstName ?? "",
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
