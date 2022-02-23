import 'package:dokomi2/map/floorplan_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models.dart';

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final model = Provider.of<FloorPlanModel>(context);

    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ), //Muss eventuell Dynamisch gemacht werden um nicht für jede Halle neu gestaltet zu werden
        itemCount: 9,
        itemBuilder: (context, index) {
          int currentTile = index + 1;
          List<Stand> tilestands =
              model.stands.where((item) => item.tile == currentTile).toList();
          return Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.blue,
                child: Image.asset('images/tile_0$currentTile.png'),
              ),
              model.isScaled
                  ? Stack(
                      children: List.generate(
                        tilestands.length,
                        (idx) {
                          return Transform.translate(
                            offset: Offset(
                              size.width * tilestands[idx].position[0],
                              size.width * tilestands[idx].position[1],
                            ),
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundColor: tilestands[idx].status
                                      ? Colors.greenAccent
                                      : Colors.white,
                                  radius: 5.0,
                                  child: Center(
                                    child: Icon(
                                      Icons.lightbulb_outline,
                                      color: Colors.blue,
                                      size: 7,
                                    ),
                                  ),
                                ),
                                Transform(
                                  transform: Matrix4.identity()
                                    ..translate(18.0),
                                  child: Text(
                                    tilestands[idx].name,
                                    style: TextStyle(
                                      fontSize: 6.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  : CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Text('${tilestands.length}'),
                    )
            ],
          );
        });
  }
}
