package cms

class Codes {
    Codes parents //父节点
    List<Codes> childrens //子节点
    String name //名称

    static constraints = {
        name nullable: false
    }
    String toString() {
        name
    }
}
