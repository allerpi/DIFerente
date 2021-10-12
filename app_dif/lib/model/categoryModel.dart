const keyname = 'categoria';
const keycount = 'COUNT(categoria)';

class CategoryModel {
    late String name;
    late int count;

    CategoryModel.fromJSON(Map<String, dynamic> json){
        this.name = json[keyname];
        this.count = json[keycount];
    }
}