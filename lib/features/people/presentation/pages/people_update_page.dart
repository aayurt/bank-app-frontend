import 'package:abc_banking_app/core/widgets/card/custom_card.dart';
import 'package:abc_banking_app/features/home/data/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/constants/files.dart';
import '../../../../core/network/api_list.dart';
import '../../../../core/network/api_service.dart';
import '../../../../core/shared_pref/shared_pref.dart';
import '../../../../routes/routes_constant.dart';

class PeopleUpdatePage extends StatefulWidget {
  const PeopleUpdatePage({Key? key}) : super(key: key);

  @override
  _PeopleUpdatePageState createState() => _PeopleUpdatePageState();
}

class _PeopleUpdatePageState extends State<PeopleUpdatePage> {
  List<UserModel>? userList;
  bool isEmployee = false;

  fetchAllUser() async {
    final userListFetched = await SharedPrefService.getAllUser();
    setState(() {
      userList = userListFetched;
    });
  }

  @override
  void initState() {
    fetchAllUser();
    Future.delayed(const Duration(milliseconds: 0), () async {
      final myAccountapi = await SharedPrefService.getUser();
      setState(() {
        isEmployee = myAccountapi.type == "employee";
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    if (userList == null) {
      return const SizedBox();
    }
    showSuccess(newcontext) {
      showDialog(
        context: newcontext,
        barrierDismissible: true,
        builder: (BuildContext acontext) {
          return AlertDialog(
            title: const Text('Success'),
            content: const Text('Successfully deleted'),
            actions: <Widget>[
              TextButton(
                child: const Text('Continue'),
                onPressed: () async {
                  Navigator.of(acontext).pop();

                  GoRouter.of(context).go(RoutesConstant.splash);
                },
              ),
            ],
          );
        },
      );
    }

    void onLoginButtonPressed(BuildContext newCContext, int? itemIndex) async {
      final String baseUrl = BankConstants.baseUrl;
      final ApiService request = ApiService();
      if (itemIndex != null) {
        final response = await request.delete(
          ApiEndpoint(baseUrl, "${ApiList.getAllUsers}/$itemIndex", {}),
        );

        if (response.statusCode == 400) {
          // final check = ServerErrorModel.fromJson(response.data[0]);
        } else {
          Navigator.of(newCContext).pop(true);

          showSuccess(newCContext);
        }

        // GoRouter.of(context).go(RoutesConstant.home);
      }
    }

    showDeleteConfirmDialog(BuildContext dialogContext, int? itemIndex) {
      return showDialog(
        context: dialogContext,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Delete Item'),
            content: const Text('Are you sure you want to delete this item?'),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: const Text('Delete'),
                onPressed: () {
                  onLoginButtonPressed(context, itemIndex);
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(children: [
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            SizedBox(
                height: 25,
                width: 25,
                child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).go(RoutesConstant.home);
                    },
                    child: const Icon(Icons.arrow_back))),
            const Expanded(
              child: Text(
                "People List",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, left: 16, right: 16),
          child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: height - 140, maxWidth: width - 32),
              child: Expanded(
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: userList!.length > 10 ? 8 : userList!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final List<String> imageList = [
                      MyAssets.userMale1,
                      MyAssets.userMale2,
                      MyAssets.userFemale1,
                      MyAssets.userFemale2,
                      MyAssets.userRandom,
                    ];
                    UserModel? user =
                        userList!.isNotEmpty ? userList![index] : null;

                    final userImage = imageList[index % imageList.length];
                    return Padding(
                      padding: EdgeInsets.only(top: index != 0 ? 12.0 : 0),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                              height: 100,
                              width: width - 32,
                              child: CustomCardWidget(
                                  boxShadow: const BoxShadow(),
                                  children: Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: Container(
                                              height: 50,
                                              width: 50,
                                              color:
                                                  Colors.grey.withOpacity(0.1),
                                              child: SizedBox(
                                                child: Image(
                                                    image:
                                                        AssetImage(userImage)),
                                              ))),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                SizedBox(
                                                  width: width - 250,
                                                  child: Text(
                                                    "${user!.firstName ?? ''} ${user.lastName ?? ''}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyLarge
                                                        ?.copyWith(),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${user.sortCode ?? ''} ${user.accountNumber ?? ''}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyMedium
                                                          ?.copyWith(),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    IconButton(
                                                        onPressed: () {
                                                          GoRouter.of(context).go(
                                                              RoutesConstant
                                                                  .registerUpdate,
                                                              extra: user);
                                                        },
                                                        color:
                                                            Colors.blueAccent,
                                                        icon: const Icon(
                                                            Icons.edit)),
                                                    IconButton(
                                                        onPressed: () {
                                                          showDeleteConfirmDialog(
                                                              context, user.id);
                                                        },
                                                        color: Colors.redAccent,
                                                        icon: const Icon(
                                                            Icons.delete)),
                                                  ],
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )))
                        ],
                      ),
                    );
                  },
                ),
              )),
        ),
      ])),
    );
  }
}
