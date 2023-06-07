public class integerationxml {
    public String val1{get;set;}
    public string parsedata{get;set;}
    public void xml2obdata(){
        Dom.Document doc= new Dom.Document();
        doc.load(val1);
        Dom.XmlNode root=doc.getRootElement();
        parsedata=root.getName();
        list<Dom.XmlNode> listval=root.getChildElements();
        for(Dom.XmlNode ec:listval){
            parsedata= parsedata+'\n'+ec.getName();
            parsedata=parsedata+'\n'+ec.getText();
        }
    }

}