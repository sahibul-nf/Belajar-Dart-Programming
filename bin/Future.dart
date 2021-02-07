
void main() {

  // Uncompleted
  Future<String> getOrder() {
    return Future.delayed(Duration(seconds: 5), () {
      var isStockAvailable = false;
      if (isStockAvailable) {
        return 'Coffe Boba';
      }
      else {
        throw 'Our stock is not enough';
      }
    });
  }


  getOrder().then((value) =>         // completed with data
    print('You order: $value')
  )
  .catchError((error) =>             // completed with error
    print('Sorry, $error')
  )
  .whenComplete(() => print('Thanks a lot'));
  print('Getting your order...');
}

