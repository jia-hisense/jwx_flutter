import 'package:jwx_flutter/generated/json/base/json_convert_content.dart';

class PersonEntity with JsonConvert<PersonEntity> {
	String name;
	int age;
	String sex;
	String habbits;
}
