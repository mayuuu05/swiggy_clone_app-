class billModel
{
  String? product;
  int? price;
  int quantity;

  billModel({required this.product,required this.price,required this.quantity});
}
int total=0;
List <billModel>listofBill=[];