import 'package:ourplants/model/explore_model.dart';
import 'package:ourplants/model/item_model.dart';

List<exploreModel> getExploreData() {
  List<exploreModel> exploredata = new List();
  exploreModel exModel = new exploreModel();
  //1
  exModel.productName = "Lorem Ipsum Dammy Plants";
  exModel.price = "\$200";
  exModel.size = "Medium";
  exModel.color = "Aloevera";
  exModel.imgURL = "images/plant0.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //2
  exModel.productName = "Lorem Ipsum Dammy Plants";
  exModel.price = "\$150";
  exModel.size = "Medium";
  exModel.color = "Gbit";
  exModel.imgURL = "images/plant1.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  //3
  exModel.productName = "Lorem Ipsum Dammy Plants";
  exModel.price = "\$250";
  exModel.size = "Medium";
  exModel.color = "Giman";
  exModel.imgURL = "images/plant2.png";
  exploredata.add(exModel);
  exModel = new exploreModel();

  return exploredata;
}

List<itemModel> getItemData() {
  List<itemModel> itemdata = new List();
  itemModel itModel = new itemModel();
  //1
  itModel.price = "\$150";
  itModel.productName = "Gbit";
  itModel.imgURL = "images/plant1.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //2
  itModel.price = "\$250";
  itModel.productName = "Giman";
  itModel.imgURL = "images/plant2.png";
  itemdata.add(itModel);
  itModel = new itemModel();

  //3
  itModel.price = "\$200";
  itModel.productName = "Aloevera";
  itModel.imgURL = "images/plant0.png";
  itemdata.add(itModel);
  itModel = new itemModel();


  return itemdata;
}
