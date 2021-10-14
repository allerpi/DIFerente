
//se obtienen del json de los getters de database controller
const keyname = 'categoria';
const keycount = 'COUNT(categoria)';

class CategoryModel {
    late String name;
    late String count;

    CategoryModel.fromJSON(Map<String, dynamic> json){
        this.name = json[keyname];
        this.count = json[keycount];
    }
}