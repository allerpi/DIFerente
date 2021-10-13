const keyName = 'nombre';
const keyPath = 'path';
const keyDescription = 'descripcion';

class ImageModel{
    late String name;
    late String path;
    late String description; 
    
    ImageModel.fromJSON(Map<String, dynamic> json){
        this.name = json[keyName];
        this.path = json[keyPath];
        this.description = json[keyDescription];
    }
}