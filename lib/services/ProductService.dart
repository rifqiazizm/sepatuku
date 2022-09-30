
import 'package:http/http.dart' as http; 
import 'package:shamo/models/ProductModel.dart';

class ProductService {

    String baseUrl = 'http://localhost:8000/api';

    Future<List<ProductModel>> getProducts() {
      var url = '$baseUrl/products';
      var headers = { 'Content-Type' : 'application/json'};

      var res = await http.get(url, headers: headers);

      print(res.body);

      

    }


}