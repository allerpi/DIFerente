
//se obtienen del json de los getters de database controller
const keyname = 'categoria';
const keycount = 'COUNT(categoria)';

class CategoryModel {
    String name = 'Categoría no disponible';
    int count = 0;

    CategoryModel.fromJSON(Map<String, dynamic> json){
        this.name = json[keyname];
        this.count = json[keycount];
    }
}