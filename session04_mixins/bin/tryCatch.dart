void main(List<String> args){
    var name = '';
        try{
            displayname(name);
        }catch(e){
            throw new Exception('Error: $e');
        } finally{
            displayname(name);
        }
}