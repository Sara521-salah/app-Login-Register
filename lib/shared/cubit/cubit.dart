import 'dart:core';
import 'dart:core';
import 'dart:core';
import 'dart:core';

import 'package:amit_project/moduels/cartScreen.dart';
import 'package:amit_project/moduels/categoryScreen.dart';
import 'package:amit_project/moduels/homeScreen.dart';
import 'package:amit_project/moduels/settingScreen.dart';
import 'package:amit_project/moduels/ItemDetailsScreen.dart';
import 'package:amit_project/shared/cubit/states.dart';
import 'package:amit_project/shared/network/remote/Dio_Helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);

  var screens = [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    MenuScreen(),
    ItemDetailsScreen(),
  ];
  int index = 0;

  void changeIndex(int currentIndex) {
    index = currentIndex;
    emit(ChangeIndexState());
  }
  List<dynamic> products=[];
  void getData(){
    DioHelper.getData(url:'https://retail.amit-learning.com/api/products',
        query: {
          "id": 1,
          "name": "Man White Regular Fit Polo Neck Polo T-Shirt",
          "title": "Man White T-Shirt",
          "category_id": 1,
          "description": null,
          "price": 200,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 30,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/mFXrS9i3y07IT9ic7jgcfq90GtMhf91WdlydLsnt.jpg",
          "price_final": 200,
          "price_final_text": "200 EGP",

        "id": 2,
        "name": "Max Printed A-line Shirt Dress",
        "title": "Shirt Dress Short Sleeves And Tie Ups - MULTISHADE BLACK",
        "category_id": 1,
        "description": "Strike a modern and smart look wearing this shirt dress this season. Printed all over, it will enhance the look of your attire and the tie-up at the waist lends a better fit. It has short sleeves and is made from superior quality material.",
        "price": 290,
        "discount": 30,
        "discount_type": "FIXED",
        "currency": "EGP",
        "in_stock": 21,
        "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/ZvQcRNN9570Lw927SOmOI02xgasfysuT616SBdlp.jpg",
        "price_final": 260,
        "price_final_text": "260 EGP",
          "id": 3,
          "name": "Solo Bundle OF Three Men Socks Ankle",
          "title": "Three Men Socks Ankle",
          "category_id": 1,
          "description": null,
          "price": 80,
          "discount": 10,
          "discount_type": "PERCENTAGE",
          "currency": "EGP",
          "in_stock": 21,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/5dw5Lk0m8hloh8wBdsqL20JD602qKmXEVo4KyR9v.jpg",
          "price_final": 72,
          "price_final_text": "72 EGP",
          "id": 4,
          "name": "Activ Round Toe Casual Sneakers - Navy Blue",
          "title": "Activ Round Toe",
          "category_id": 1,
          "description": null,
          "price": 600,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 3,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/QZMwBjevtyPcIicsSCoQyercnimEzQrmOVSbaFCq.jpg",
          "price_final": 600,
          "price_final_text": "600 EGP",
          "id": 5,
          "name": "LG 32LM630B - 32-inch HD LED Smart TV",
          "title": "LG TV - 32-inch",
          "category_id": 2,
          "description": "An HD screen delivers accurate images in stunning resolution and vivid color, The advanced image processor adjusts color for richer, more natural images. Enjoy the beauty of nature\u2019s true colors on your TV screen.",
          "price": 4000,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 65,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/G7LX8TpZzABsoYRCwVTOL4pF9o3Kf32BsGrQ1U9n.jpg",
          "price_final": 4000,
          "price_final_text": "4000 EGP",
          "id": 6,
          "name": "Contex LE-55SZ101 - 55-inch UHD 4K D-LED",
          "title": "Smart Display - 55-inch",
          "category_id": 2,
          "description": "4K provides much more detailed and less pixel visible images than 1080p. 4K delivers better-looking image for larger screen sizes.",
          "price": 6500,
          "discount": 12,
          "discount_type": "PERCENTAGE",
          "currency": "EGP",
          "in_stock": 12,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/qaFVExb7Anh4liJKPLbElah2SasrC8TWUA3iaAGh.jpg",
          "price_final": 5720,
          "price_final_text": "5720 EGP",
          "id": 7,
          "name": "Mum Love Anti Hot Feeding Bottle With Handles - 250ml",
          "title": "Anti Hot Feeding Bottle - 250ml",
          "category_id": 3,
          "description": "Mother's love is the greatest and selfless, mumlove brand presented this kind of love in good quality products. In the 90\u2019s, Mrs Lou celebrated the birth of little baby in the period of running business. Combined with dedication working and the love of a mother, she builds the \"mumlove\" bottle and nipple brand. It always insists on the brand idea of \u201csafety, eco-friendly\u201d. Adhere to the conception of mother's love greatness and insist to give the best products to customer.",
          "price": 80,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 36,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/NnXVKMewKJMs0tXYsaUFDy31bnpsM8Tjs18Jbzgq.jpg",
          "price_final": 80,
          "price_final_text": "80 EGP",
          "id": 8,
          "name": "Cerelac Iron+ With Wheat Wtht & Milk \u2013 125g",
          "title": "Cerelac \u2013 125g",
          "category_id": 3,
          "description": null,
          "price": 26,
          "discount": 20,
          "discount_type": "PERCENTAGE",
          "currency": "EGP",
          "in_stock": 123,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/x5JCYgATZL5kH7aHFMdnJi95tpAnJXqCA8fl7LUc.jpg",
          "price_final": 20.8,
          "price_final_text": "20.8 EGP",
          "id": 9,
          "name": "Braun SE 1170 Silk Epil 1 Hair Remover - White",
          "title": "White Braun Hair Remover",
          "category_id": 4,
          "description": "The Braun SE 1170 Silk Epil features a contoured body to provide a firm, yet comfortable grip. It has been designed to provide a no slip hold. This epilator is extremely easy to use. It features a single large on\/off switch. All you have to do is plug the epilator in the socket and press the switch to see it work its magic!",
          "price": 450,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 18,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/Yn7kce4Gl1WXxV6iHd7VKrMu4GUcv056x9BJxbc6.jpg",
          "price_final": 450,
          "price_final_text": "450 EGP",
          "id": 10,
          "name": "Nivea Cocoa Butter Body Cream - 200ml",
          "title": "Nivea Cocoa - 200ml",
          "category_id": 4,
          "description": "NIVEA Cocoa Butter Body cream intensively hydrates skin and provides long lasting moisture. The nourishing formula absorbs quickly and instantly moisturizes, leaving skin soft, smooth, and healthy looking.",
          "price": 35,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 16,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/zELiT69pmRSpLaBCmdH5Ygmez4MaCoRU13rMcwM0.jpg",
          "price_final": 35,
          "price_final_text": "35 EGP",
          "id": 11,
          "name": "Eva Shampoo With Aloe Vera & Yoghurt Proteins 400ml + 1 Free",
          "title": "Eva Shampoo 400ml + 1 Free",
          "category_id": 4,
          "description": "Aloe Eva shampoo with Aloe Vera & Yoghurt Proteins improves hair volume, thickness and shine for thin hair - for dry & damaged hair",
          "price": 90,
          "discount": 50,
          "discount_type": "PERCENTAGE",
          "currency": "EGP",
          "in_stock": 125,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/Nc69KravsXuhUrg9PlXLEtBg9fBnzr0Atrtyqrtv.jpg",
          "price_final": 45,
          "price_final_text": "45 EGP",
          "id": 12,
          "name": "Samsung Galaxy M11 - 6.4-inch 32GB\/3GB Dual SIM Mobile Phone - Black",
          "title": "Samsung Galaxy M11 - 32GB",
          "category_id": 5,
          "description": null,
          "price": 2500,
          "discount": 300,
          "discount_type": "FIXED",
          "currency": "EGP",
          "in_stock": 13,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/zzT6olJMhoeu7vFaTB16Z3uNcBcfWDj2EqP4AAYe.jpg",
          "price_final": 2200,
          "price_final_text": "2200 EGP",
          "id": 13,
          "name": "XIAOMI Redmi 8A - 6.2-inch 32GB\/2GB Dual SIM 4G Mobile Phone - Midnight Black",
          "title": "XIAOMI Redmi 8A",
          "category_id": 5,
          "description": null,
          "price": 1800,
          "discount": 200,
          "discount_type": "FIXED",
          "currency": "EGP",
          "in_stock": 6,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/z5ZoadcxRtYPN9wEQb1YtxrIoCWTMHc3hwDEze07.jpg",
          "price_final": 1600,
          "price_final_text": "1600 EGP",
          "id": 14,
          "name": "Hedya Vermicelli Pasta - 400 Gm",
          "title": "Hedya Vermicelli Pasta",
          "category_id": 6,
          "description": "If you\u2019re too busy to get to the grocery store, there are many ways for the grocery store to come to you! We are offering different food & care bundles providing all your everyday basics & essentials to be shipped right to you. We are Saving your time, stress, gas money, and exposing you to new types of products and brands that you can\u2019t get at your local grocery store.",
          "price": 4,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 856,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/1TSggeBV5GFZSGJu3NPk61hhMcuvo1FOuKI8Rv9V.jpg",
          "price_final": 4,
          "price_final_text": "4 EGP",
          "id": 15,
          "name": "Star Pasta Elbow Pasta - 400gm",
          "title": "Star Pasta - 400gm",
          "category_id": 6,
          "description": "If you\u2019re too busy to get to the grocery store, there are many ways for the grocery store to come to you! We are offering different food & care bundles providing all your everyday basics & esse",
          "price": 5,
          "discount": 0,
          "discount_type": null,
          "currency": "EGP",
          "in_stock": 563,
          "avatar": "https:\/\/retail.amit-learning.com\/images\/products\/YwehN2Cv2DAROxwE7urA9dxazZmT9ULts1yUjyvS.jpg",
          "price_final": 5,
          "price_final_text": "5 EGP"
      }).then((value){
      print(value?.data["products"].toString());
      products=value?.data["products"];
      emit(GetProductSuccessState());
        }).catchError((error) {
          print(error.toString());
          emit(GetProductSuccessState());
    });
  }

  int login = 0;

  void swapBetweenLoginAndRegister(current) //login index 0 register index 1
  {
    login = current;
    emit(SwapBetweenLoginAndRegisterState());
  }
}

