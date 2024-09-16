import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/helper/show_snack_bar.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/update/custom_text_field.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_elevated_button.dart';

class UpdateProductPage extends StatefulWidget {
  UpdateProductPage({super.key});
  static String id = 'update product';

  @override
  State<UpdateProductPage> createState() => _UpdateProductPageState();
}

class _UpdateProductPageState extends State<UpdateProductPage> {
  String? productName;

  String? description;

  String? image;

  String? price;

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF7643),
          title: const Text(
            "Update Product",
          ),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(6),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Lottie.asset('assets/Animation - 1726527463541.json'),
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: "Product Name",
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    description = data;
                  },
                  hintText: "Description",
                ),
                CustomFormTextField(
                  keyboardType: TextInputType.number,
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: "Price ",
                ),
                CustomFormTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: " Image",
                ),
                SizedBox(
                  height: 40,
                ),
                CustomElevatedButton(
                    onPressed: () async {
                      isLoading = true;
                      setState(() {});
                      try {
                        await updateProduct(product);

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Product Updated successfully'),
                            action: SnackBarAction(
                              onPressed: (){
                                Navigator.pop(context);
                              }, label: 'OK',
                            ),
                          ),
                        );
                      } catch (e) {
                         ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Product Updated successfully'),
                            action: SnackBarAction(
                              onPressed: (){
                                Navigator.pop(context);
                              }, label: 'OK',
                            ),
                          ),
                        );
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    text: 'Update')
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product) async {
    await UpdateProductService().updateProduct(
        id: product.id,
        title: productName == null ? product.title : productName!,
        price: price == null ? product.price.toString() : price!,
        description: description == null ? product.description : description!,
        image: image == null ? product.image : image!,
        category: product.category);
  }
}
