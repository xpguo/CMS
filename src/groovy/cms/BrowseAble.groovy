package cms

/**
 * Created with IntelliJ IDEA.
 * User: Dbb
 * Date: 13-10-29
 * Time: 下午3:48
 * To change this template use File | Settings | File Templates.
 */
class BrowseAble {
    Long browseCount

    def getBrowseCount() {
        browseCount?0:browseCount
    }
    def browse() {
        browseCount++
    }
}
