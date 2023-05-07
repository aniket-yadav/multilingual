import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // this is locale
          'hello': 'Hello World',
          "noOfClick": "You have click @count times",
        },
        'hi_IN': {
          // i am going to translate into hindi
          'hello': 'हेलो विश्व',
          "noOfClick": "आपने @count बार क्लिक किया है"
        }
      };

  //  here hello , is key and 'Hello World', are the text assign to that key
  //  we use same key for
  //  like this you have to create map of all the text you want to show
}
