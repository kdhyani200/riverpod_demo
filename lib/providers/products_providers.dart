import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../product.dart';

part 'products_providers.g.dart';

const List<Product> allProducts = [
  Product(id: '1', title: "HyperX DDR4 8GB Ram", price: 35, image: 'assets/png1.png'),
  Product(id: '2', title: "Vengeance DDR4 8GB Ram", price: 30, image: 'assets/png2.png'),
  Product(id: '3', title: "G-Skill 2*8GB Ram", price: 55, image: 'assets/png3.png'),
  Product(id: '4', title: "MSI Graphic Card", price: 450, image: 'assets/png4.png'), // Est. RTX 4060 Ti / 5060 class
  Product(id: '5', title: "Asus Graphic Card", price: 480, image: 'assets/png5.png'), // Est. Dual/TUF OC editions
  Product(id: '6', title: "Gigabyte Graphic Card", price: 460, image: 'assets/png6.png'), // Est. Windforce/Eagle editions
  Product(id: '7', title: "CoolerMaster VX-600", price: 50, image: 'assets/png7.png'),
  Product(id: '8', title: "Corsair VS550", price: 55, image: 'assets/png8.png'),
  Product(id: '9', title: "Corsair Vengeance 650M", price: 85, image: 'assets/png9.png'),
  Product(id: '10', title: "CoolerMaster Pro 250", price: 40, image: 'assets/png10.png'), // Air cooler estimate
  Product(id: '11', title: "Corsair Cooler", price: 120, image: 'assets/png11.png'), // Est. 240mm AIO
  Product(id: '12', title: "Corsair Fan", price: 25, image: 'assets/png12.png'), // Est. LL120 single pack
  Product(id: '13', title: "Corsair White Cabinet", price: 115, image: 'assets/png13.png'), // Est. 4000D Airflow
  Product(id: '14', title: "CoolerMaster Cabinet", price: 95, image: 'assets/png14.png'), // Est. MasterBox series
  Product(id: '15', title: "Decent Cabinet", price: 65, image: 'assets/png15.png'), // Budget mid-tower
  Product(id: '16', title: "Aorus Motherboard", price: 220, image: 'assets/png16.png'), // Est. Elite/Pro series
  Product(id: '17', title: "MSI Godlike", price: 999, image: 'assets/png17.png'), // Ultra-enthusiast tier
  Product(id: '18', title: "Asus Zenith Extreme", price: 850, image: 'assets/png18.png'), // HEDT / Threadripper tier
  Product(id: '19', title: "Western Digital 5TB HDD", price: 130, image: 'assets/png19.png'),
  Product(id: '20', title: "Western Digital 3TB HDD", price: 85, image: 'assets/png20.png'),
  Product(id: '21', title: "Seagate Digital 2TB HDD", price: 60, image: 'assets/png21.png'),
  Product(id: '22', title: "Samsung 512GB NvME SSD", price: 55, image: 'assets/png22.png'),
  Product(id: '23', title: "Samsung 1TB NvME SSD", price: 95, image: 'assets/png23.png'),
];

@riverpod
List<Product> products(ref){
  return allProducts;
}

@riverpod
List<Product> reducedProducts(ref){
  return allProducts.where((p) => p.price < 50).toList();
}
