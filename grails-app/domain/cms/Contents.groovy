package cms
import org.grails.taggable.Taggable

class Contents extends BrowseAble implements Taggable{
    Date dateCreated  //创建时间
    Date lastUpdated  //更新时间

    Integer status = 3  //1表示通过，2表示未通过，3表示未审核
    Codes infoColumn //所属栏目
    Codes infoType //栏目类型
    String infoTitle //标题
    String infoWriter //作者
    Codes district //区县
    Codes street  //街道
    String infoCompany //发布单位
    String infoText  //信息内容
    String keyWord  //关键字
    Date publicDate  //发布日期
    List<Attachment> attachments //附件
    String unverify  //未通过原因
    File logo  //图标
    Focus focus //焦点信息
    Long newColumn  //新栏目
    static constraints = {
    }
    static hasMany = [attachment : Attachment]
}
