import 'package:flutter/material.dart';
import 'package:project/products.dart';
import 'components/reusable_card.dart';
import 'services.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade300,
          title: const Text('Fetch JSON from Firebase'),
        ),
        //Fetches Json from firebase storage and builds a list view using future builder
        body: FutureBuilder<List<Products>>(
          future: Service.getproducts(),
          builder: (context, snapshot) {
            final products = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return const Center(child: Text('Some error occurred!'));
                } else {
                  return buildUsers(products!);
                }
            }
          },
        ),
      );
  Widget buildUsers(List<Products> products) => ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final pro = products[index];

          return ReusableCard(
            cardChild: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    left: 10.0,
                    right: 0.0,
                    top: 10.0,
                    bottom: 0.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                pro.productUrl,
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Column(children: [
                        Text(
                          pro.productName,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ),
                        ),
                        Text(
                          pro.productRating.toString(),
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 80.0,
                              child: Text(
                                pro.productDescription,
                                style: const TextStyle(
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 15.0,
                                horizontal: 30.0,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}
