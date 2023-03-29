import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:podcas/domain/Podcasts_model.dart';
import 'package:podcas/domain/recommended_model.dart';

import 'package:podcas/widget/home_page_widget.dart';
import 'package:podcas/widget/mycolor.dart';
import 'package:podcas/widget/podcast_container.dart';
import 'package:podcas/widget/recommended_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final controllar = ScrollController();
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Row(
          children: [
            Container(
              width: 20.w,
              color: Mycolor.boxColor,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const ImageIcon(
                        AssetImage('assets/icons/logo.png'),
                        color: Color(0xff665CB3),
                        size: 25,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Text(
                        'Podcaster',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.home_outlined,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      'Home',
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalTitleGap: 0.5.w,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.mic_none,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      'Latest Episodes',
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalTitleGap: 0.5.w,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.bookmarks_outlined,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      'Saved',
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalTitleGap: 0.5.w,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.widgets_outlined,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      'Browse',
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalTitleGap: 0.5.w,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.arrow_circle_down_outlined,
                      color: Colors.grey,
                    ),
                    title: const Text(
                      'Downloads',
                      style: TextStyle(color: Colors.grey),
                    ),
                    horizontalTitleGap: 0.5.w,
                  ),
                ],
              ),
            ),
            Container(
              width: 80.w,
              height: double.infinity,
              color: Mycolor.bgColor,
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //searchBar and Profile,Settings
                    Row(
                      children: [
                        searchBar(),
                        const Expanded(child: SizedBox()),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              color: Colors.grey,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.settings_outlined,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Podcasts You Follow',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'view all',
                              style: TextStyle(
                                  color: Mycolor.purpelColor, fontSize: 15),
                            ))
                      ],
                    ),

                    SizedBox(
                      height: 3.h,
                    ),
                    SizedBox(
                      height: 25.h,
                      child: Scrollbar(
                        controller: controllar,
                        scrollbarOrientation: ScrollbarOrientation.top,
                        child: ScrollConfiguration(
                          behavior: MyCustomScroll(),
                          child: ListView.separated(
                              controller: controllar,
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 2.w,
                                  ),
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return const PodcastContainer(
                                  data: PodcastsModel(
                                      tag: 'CHURCHOME',
                                      img:
                                          'https://images.pexels.com/photos/15356815/pexels-photo-15356815.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                      title:
                                          '300. Who sending you?- The latest Conversation',
                                      desc:
                                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been',
                                      time: 21),
                                );
                              }),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Top Categories',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        topCategoriesButton(
                            'Tecnology', Icon(Icons.ac_unit), () {}),
                        topCategoriesButton(
                            'Tecnology', Icon(Icons.ac_unit), () {}),
                        topCategoriesButton(
                            'Tecnology', Icon(Icons.ac_unit), () {}),
                        topCategoriesButton(
                            'Tecnology', Icon(Icons.ac_unit), () {}),
                        topCategoriesButton(
                            'Tecnology', Icon(Icons.ac_unit), () {}),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Recommended For You',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'view all',
                              style: TextStyle(
                                  color: Mycolor.purpelColor, fontSize: 15),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RecommendedContainer(
                            data: RecommendedModel(
                                img:
                                    'https://images.pexels.com/photos/4062514/pexels-photo-4062514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                tag: 'altentive health',
                                title: 'The School of Greatness',
                                author: 'lewis howes'),
                          ),
                          RecommendedContainer(
                            data: RecommendedModel(
                                img:
                                    'https://images.pexels.com/photos/4062514/pexels-photo-4062514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                tag: 'altentive health',
                                title: 'The School of Greatness',
                                author: 'lewis howes'),
                          ),
                          RecommendedContainer(
                            data: RecommendedModel(
                                img:
                                    'https://images.pexels.com/photos/4062514/pexels-photo-4062514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                tag: 'altentive health',
                                title: 'The School of Greatness',
                                author: 'lewis howes'),
                          ),
                          RecommendedContainer(
                            data: RecommendedModel(
                                img:
                                    'https://images.pexels.com/photos/4062514/pexels-photo-4062514.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                tag: 'altentive health',
                                title: 'The School of Greatness',
                                author: 'lewis howes'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            // PageView(
            //   controller: _pageController,
            //   children: [SavedPage(), HomePage1()],
            // )
          ],
        ),
      ),
    );
  }
}
