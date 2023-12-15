import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/news_controller.dart';

class NewsDetailsPage extends StatelessWidget {
   NewsDetailsPage({super.key}){
     Get.put(NewsController());
   }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NewsController>(builder: (controllers) {
      return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          controllers.is10AM = true;
                          controllers.is3PM = true;
                          controllers.is8PM = true;
                          controllers.expandedNewsWidget = [];
                          controllers.enableExpandedAll=false;
                          controllers.isAllExpanded=false;
                          controllers.isAllCollapsed=false;
                          controllers.update();
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(
                              top: 8.0, bottom: 8, right: 8),
                          child: Text("12 13 23", style: TextStyle(
                              color: Colors.black, fontSize: 16),),
                        )
                    ),
                    controllers.is10AM?InkWell(
                        onTap: () {
                          controllers.is10AM = true;
                          controllers.is3PM = false;
                          controllers.is8PM = false;
                          controllers.enableExpandedAll=true;
                          controllers.expandedNewsWidget = controllers.expandableNewsWidget(controllers.data10AMList);
                          controllers.update();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("10AM", style: TextStyle(
                              color: Colors.black, fontSize: 16),),
                        )
                    ):Container(),
                    controllers.is3PM?InkWell(
                        onTap: () {
                          controllers.expandedNewsWidget = controllers.expandableNewsWidget(controllers.data3PMList);
                          controllers.is10AM = false;
                          controllers.is3PM = true;
                          controllers.is8PM = false;
                          controllers.enableExpandedAll=true;
                          controllers.update();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("3PM", style: TextStyle(
                              color: Colors.black, fontSize: 16),),
                        )
                    ):Container(),
                    controllers.is8PM?InkWell(
                        onTap: () {
                          controllers.expandedNewsWidget = controllers.expandableNewsWidget(controllers.data8PMList);
                          controllers.is10AM = false;
                          controllers.is3PM = false;
                          controllers.is8PM = true;
                          controllers.enableExpandedAll=true;
                          controllers.update();
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("8PM", style: TextStyle(
                              color: Colors.black, fontSize: 16),),
                        )
                    ):Container()
                  ],
                ),
                Expanded(
                  child: SafeArea(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: controllers.expandedNewsWidget,
                          ),
                          controllers.enableExpandedAll?InkWell(
                            onTap: (){
                              if(!controllers.isAllExpanded){
                                for (var element in controllers.expansionTileController) {
                                  element.expand();
                                }
                                controllers.isAllExpanded=true;
                                controllers.isAllCollapsed=false;
                              }else{
                                for (var element in controllers.expansionTileController) {
                                  element.collapse();
                                }
                                controllers.isAllExpanded=false;
                                controllers.isAllCollapsed=true;
                              }
                              controllers.update();
                            },
                            child:
                            controllers.isAllExpanded?const Text("Simplify",style: TextStyle(color: Colors.black,fontSize: 16, height: 2.5, ),)
                            :const Text("Expanded",style: TextStyle(color: Colors.black,fontSize: 16, height: 2.5, ),),
                          ):Container()
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}


