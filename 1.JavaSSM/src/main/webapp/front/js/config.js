
var projectName = '基于JSP的人才招聘网站的设计与实现';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的收藏',
	url: '../storeup/list.jsp?storeupType=1'
},
]


var indexNav = [

{
	name: '招聘信息',
	url: './pages/zhaopinxinxi/list.jsp'
}, 
{
	name: '公告信息',
	url: './pages/gonggaoxinxi/list.jsp'
}, 

]

var adminurl =  "http://localhost:8080/jspm9k90a2eb/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-discover","buttons":["新增","查看","修改","删除"],"menu":"求职者","menuJump":"列表","tableName":"qiuzhizhe"}],"menu":"求职者管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-keyboard","buttons":["新增","查看","修改","删除"],"menu":"企业","menuJump":"列表","tableName":"qiye"}],"menu":"企业管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-medal","buttons":["新增","查看","修改","删除"],"menu":"职位类型","menuJump":"列表","tableName":"zhiweileixing"}],"menu":"职位类型管理"},{"child":[{"allButtons":["新增","查看","修改","删除","咨询企业","投递简历"],"appFrontIcon":"cuIcon-shop","buttons":["查看","删除","审核"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-addressbook","buttons":["删除","查看"],"menu":"咨询企业","menuJump":"列表","tableName":"zixunqiye"}],"menu":"咨询企业管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","面试邀请"],"appFrontIcon":"cuIcon-goods","buttons":["删除","查看"],"menu":"投递简历","menuJump":"列表","tableName":"toudijianli"}],"menu":"投递简历管理"},{"child":[{"allButtons":["新增","查看","修改","删除","参加面试"],"appFrontIcon":"cuIcon-similar","buttons":["查看","删除"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","面试结果"],"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除"],"menu":"参加面试","menuJump":"列表","tableName":"canjiamianshi"}],"menu":"参加面试管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"面试结果","menuJump":"列表","tableName":"mianshijieguo"}],"menu":"面试结果管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-taxi","buttons":["新增","查看","修改","删除"],"menu":"公告信息","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-time","buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","咨询企业","投递简历"],"appFrontIcon":"cuIcon-list","buttons":["查看","投递简历","咨询企业"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","删除"],"menu":"咨询企业","menuJump":"列表","tableName":"zixunqiye"}],"menu":"咨询企业管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","面试邀请"],"appFrontIcon":"cuIcon-goods","buttons":["查看","删除"],"menu":"投递简历","menuJump":"列表","tableName":"toudijianli"}],"menu":"投递简历管理"},{"child":[{"allButtons":["新增","查看","修改","删除","参加面试"],"appFrontIcon":"cuIcon-similar","buttons":["查看","删除","参加面试"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","面试结果"],"appFrontIcon":"cuIcon-wenzi","buttons":["查看","删除"],"menu":"参加面试","menuJump":"列表","tableName":"canjiamianshi"}],"menu":"参加面试管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"面试结果","menuJump":"列表","tableName":"mianshijieguo"}],"menu":"面试结果管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","咨询企业","投递简历"],"appFrontIcon":"cuIcon-list","buttons":["查看","投递简历","咨询企业"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"求职者","tableName":"qiuzhizhe"},{"backMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","咨询企业","投递简历"],"appFrontIcon":"cuIcon-shop","buttons":["新增","查看","修改","删除"],"menu":"招聘信息","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核"],"appFrontIcon":"cuIcon-addressbook","buttons":["查看","删除","审核"],"menu":"咨询企业","menuJump":"列表","tableName":"zixunqiye"}],"menu":"咨询企业管理"},{"child":[{"allButtons":["新增","查看","修改","删除","审核","面试邀请"],"appFrontIcon":"cuIcon-goods","buttons":["查看","删除","审核","面试邀请"],"menu":"投递简历","menuJump":"列表","tableName":"toudijianli"}],"menu":"投递简历管理"},{"child":[{"allButtons":["新增","查看","修改","删除","参加面试"],"appFrontIcon":"cuIcon-similar","buttons":["查看","删除"],"menu":"面试邀请","menuJump":"列表","tableName":"mianshiyaoqing"}],"menu":"面试邀请管理"},{"child":[{"allButtons":["新增","查看","修改","删除","面试结果"],"appFrontIcon":"cuIcon-wenzi","buttons":["删除","查看","面试结果"],"menu":"参加面试","menuJump":"列表","tableName":"canjiamianshi"}],"menu":"参加面试管理"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-keyboard","buttons":["查看","删除"],"menu":"面试结果","menuJump":"列表","tableName":"mianshijieguo"}],"menu":"面试结果管理"}],"frontMenu":[{"child":[{"allButtons":["新增","查看","修改","删除","咨询企业","投递简历"],"appFrontIcon":"cuIcon-list","buttons":["查看","投递简历","咨询企业"],"menu":"招聘信息列表","menuJump":"列表","tableName":"zhaopinxinxi"}],"menu":"招聘信息模块"},{"child":[{"allButtons":["新增","查看","修改","删除"],"appFrontIcon":"cuIcon-circle","buttons":["查看"],"menu":"公告信息列表","menuJump":"列表","tableName":"gonggaoxinxi"}],"menu":"公告信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"企业","tableName":"qiye"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
