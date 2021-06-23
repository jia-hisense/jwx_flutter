import 'package:jwx_flutter/services/route/person_entity.dart';

personEntityFromJson(PersonEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['age'] != null) {
		data.age = json['age'] is String
				? int.tryParse(json['age'])
				: json['age'].toInt();
	}
	if (json['sex'] != null) {
		data.sex = json['sex'].toString();
	}
	if (json['habbits'] != null) {
		data.habbits = json['habbits'].toString();
	}
	return data;
}

Map<String, dynamic> personEntityToJson(PersonEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['age'] = entity.age;
	data['sex'] = entity.sex;
	data['habbits'] = entity.habbits;
	return data;
}