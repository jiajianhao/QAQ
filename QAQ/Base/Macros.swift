//
//  Macros.swift
//  BJHeadlines
//
//  Created by Hui Jiang on 14/03/2018.
//  Copyright © 2018 Hui Jiang. All rights reserved.
//

import Foundation

func INT2NUM(x:Int) -> NSNumber {
	return NSNumber.init(value: x)
}

func DOUBLE2NUM(x:Double) -> NSNumber {
	return NSNumber.init(value: x)
}

let kVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String

// MARK: - UI Related
func DEV_SCREEN(w: CGFloat, h: CGFloat) -> Bool {
	return UIScreen.instancesRespond(to:#selector(getter: UIScreen.main.currentMode)) ? (CGSize(width:w, height:h).equalTo((UIScreen.main.currentMode?.size)!)) : false
}
let iPad = (UIDevice.current.model == "iPad")
let iPhone = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone)
let iPhone5 = DEV_SCREEN(w: 640, h: 1136)
let iPhone6 = DEV_SCREEN(w: 750, h: 1334)
let iPhone6p = DEV_SCREEN(w: 1242, h: 2208)
let iPhoneX = DEV_SCREEN(w: 1125, h: 2436)
let iPad_Normal = DEV_SCREEN(w: 768, h: 1024)
let iPad_Retina = DEV_SCREEN(w: 768*2, h: 1024*2)

// MARK: - Screen Width and Height
let kWidth: CGFloat  = UIScreen.main.bounds.size.width
let kHeight: CGFloat = UIScreen.main.bounds.size.height

// MARK: - 宽高比
let kScaleWidth = (kWidth / 375.0)
let kScaleHeight = (kHeight / 667.0)
let kScaleWidthFor375 = (kWidth < 375.0 ? kWidth/375.0:1.0)
let kScaleHeightFor667 = (kHeight < 667.0 ? kHeight/667.0:1.0)

// MARK: - NavigationBar, StatusBar, Tabbar height
let kStatusBarHeight = UIApplication.shared.statusBarFrame.size.height
let kNavigationBarHeight: CGFloat = 44.0
let kNavBarHeightWithStatusBar = (44 + kStatusBarHeight)
let kTabBarHeight = (iPhoneX ? 83.0:49.0)
let kContentHeight = (kHeight - kNavigationBarHeight)

let kBackBtnBlackImage = UIImage.init(named: "back_btn_black")  //黑色的返回图标
let kBackBtnWhiteImage = UIImage.init(named: "back_btn_white")  //白色的返回图标

// MARK: - 字体大小,类型
let kSystemFont19 = UIFont.systemFont(ofSize: 19)			//19号字体大小
let kSystemFont18 = UIFont.systemFont(ofSize: 18)			//18号字体大小
let kSystemFont17 = UIFont.systemFont(ofSize: 17)			//17号字体大小
let kSystemFont16 = UIFont.systemFont(ofSize: 16)			//16号字体大小
let kSystemFont15 = UIFont.systemFont(ofSize: 15)			//15号字体大小
let kSystemFont14 = UIFont.systemFont(ofSize: 14)			//14号字体大小
let kSystemFont13 = UIFont.systemFont(ofSize: 13)			//13号字体大小
let kSystemFont12 = UIFont.systemFont(ofSize: 12)			//12号字体大小
let kSystemFont10 = UIFont.systemFont(ofSize: 10)			//10号字体大小

// MARK: - Top\Right\Bottom\Left Margin
let kLeftMargin: CGFloat = 16.0
let kRightMargin: CGFloat = (kLeftMargin)

// MARK: - Color Related
let kWhiteBGColor = UIColor.init(fromHexCode: "#FFFFFF") 	//背景色,页面间隔底色
let kNavBarRedColor = UIColor.init(fromHexCode: "#CE1126") 	//导航条红色
let kMainRedColor = UIColor.init(fromHexCode: "#E53E42") 	//主红色
let kSubBlueColor = UIColor.init(fromHexCode: "#5B9CF5") 	//点缀蓝色
let kSubOrangeColor = UIColor.init(fromHexCode: "#FF780B") 	//点缀橘色
let kSubRedColor = UIColor.init(fromHexCode: "#EB364B") 	//点缀红色
let k333GrayColor = UIColor.init(fromHexCode: "#333333") 	//灰色系 - #333333
let k666GrayColor = UIColor.init(fromHexCode: "#666666") 	//灰色系 - #666666
let k999GrayColor = UIColor.init(fromHexCode: "#999999") 	//灰色系 - #999999
let kcccGrayColor = UIColor.init(fromHexCode: "#CCCCCC") 	//灰色系 - #CCCCCC
let kdddGrayColor = UIColor.init(fromHexCode: "#dddddd") 	//灰色系 - #dddddd
let kfAGrayColor = UIColor.init(fromHexCode: "#FAFAFA") 	//灰色系 - #FAFAFA
let kf6GrayColor = UIColor.init(fromHexCode: "#f6f6f6") 	//灰色系 - #f6f6f6
let kf0GrayColor = UIColor.init(fromHexCode: "#f0f0f0") 	//灰色系 - #f0f0f0
let kD8GrayColor = UIColor.init(fromHexCode: "#D8D8D8") 	//灰色系 - #D8D8D8

// MARK: - 压缩Unit参数
let MB = 1 * 1024 * 1024

// MARK: - 阅读时间Countdown
let kCountdownTime = 1 * 60 * 60
let kReadingLastOneMin = 1 * 60
let kReadingLastFiveMins = (5 * kReadingLastOneMin)
let kReadingLastTenMins = (10 * kReadingLastOneMin)
let kReadingLastThirtyMins = (30 * kReadingLastOneMin)
let kReadingLastSixtyMins = (kCountdownTime)

// MARK: - pageSize
let kCountPerPage = 10

// MARK: - 首页Cell类型
enum HomeNewsStyle: Int {
	case 	HomeNewsArticleNone = 0,
			HomeNewsArticleOne,
			HomeNewsDynamicNone,
			HomeNewsDynamicOne,
			HomeNewsDynamicTwo,
			HomeNewsDynamicThree,
			HomeNewsDynamicFour,
			HomeNewsDynamicFive,
			HomeNewsDynamicSix,
			HomeNewsDynamicSeven,
			HomeNewsDynamicEight,
			HomeNewsDynamicNine,
			HomeNewsForwardDynamicNone,
			HomeNewsForwardDynamicImgs,
			HomeNewsArticleThree,
			HomeNewsRecommend
}

// MARK: - 认证示例类型
enum AuthorizedSampleStyle: Int {
	case 	AuthorizedSampleHoldId = 0,
			AuthorizedSampleIdFront,
			AuthorizedSampleWork,
			AuthorizedSamplePersonalProve
}

// MARK: - HostType类型
enum DynamicHostType: Int {
	case 	DynamicHostTypeNews = 1,		//新闻
			DynamicHostTypeArticle = 2,		//文章
			DynamicHostTypeMoment = 3,		//动态
			DynamicHostTypeVideo = 5,		//视频
			DynamicHostTypeOther = 6		//其他
}

// MARK: - 账户类型
enum AccountType: Int {
	case 	personal = 1,	//个人账户
			company			//公司账户
}

// MARK: - 性别类型
enum Gender: Int {
	case 	Male = 0,
			Female
}

// MARK: - 查看自己的还是别人的
enum MomentType: Int {
	case 	MomentTypeSelf = 0,
			MomentTypeOther
}

// MARK: - 查看自己的还是别人的
enum ReadingTimeType: Int {
	case 	ReadingLastOneMin = 1,
			ReadingLastFiveMins,
			ReadingLastTenMins,
			ReadingLastThirtyMins,
			ReadingLastSixtyMins
}

// MARK: - 大V认证状态
enum VIPStatus: Int {
	case 	NotApplyForVIP = 0,
			ApplyingVIP,
			BecomeVIP,
			NotPassVerify
}

// MARK: - 商城购买流程
enum PurchaseProcess: Int {
	case 	PurchaseProcessBind = 0,
			PurchaseProcessAddress,
			PurchaseProcessPay,
			PurchaseProcessSuccess,
			PurchaseProcessComplete
}

// MARK: - 登录弹框来源节点
//enum LoginSourceNode: Int {
//    case    LoginSourceNode_None = 0,        //不需要记录，
//                LoginSourceNode_Mall_RedBagTask = 1,        //从红包商城中查看红包任务按钮,查看红包余额
//            LoginSourceNode_Mall_OrderList,                //从红包商城中查看我的订单按钮
//            LoginSourceNode_Mall_Exchange,                //从红包商城中立即兑换按钮
//            LoginSourceNode_Home_FollowChannel,            //从首页关注频道中
//            LoginSourceNode_Publish,                    //从发布页面中
//            LoginSourceNode_Forward ,                    //从转发页面中
//            LoginSourceNode_RedBagTask_Login,            //从红包任务页面中未登录按钮
//            LoginSourceNode_RedBagTask_Exchange,        //从红包任务页面中红包换购
//            LoginSourceNode_RedBagTask_CheckList,       //从红包任务页面中查看红包
//            LoginSourceNode_RedBagTask_DayRead,            //从红包任务页面每日阅读去完成
//            LoginSourceNode_RedBagTask_Share,            //从红包任务页面分享奖励
//            LoginSourceNode_RedBagTask_Publish,            //从红包任务页面发布奖励
//            LoginSourceNode_RedBagTask_NewUser,            //从红包任务页面新手任务
//            LoginSourceNode_VList_ApplyV,                //从大v列表页面申请加V
//            LoginSourceNode_DetailPage_CommentReply,    //从文章动态详情页发布回复
//            LoginSourceNode_Port_99Error,                //接口返回 -99 错误码后
//            LoginSourceNode_Me_MyInviter,                //我的-我的邀请人
//            LoginSourceNode_Me_InviteFriend_InviteRecord,//我的：从邀请好友查看邀请记录
//            LoginSourceNode_Me_phoneLogin                //我的：手机号登录
//
//}

// MARK: - 分享
enum ShareType: Int {
	case 	ShareInApp = 0,
			ShareToWechatSession,
			ShareToWechatMoment,
			ShareToQQSession,
			ShareToQzone,
			ShareToSina,
			CheckOutAuthor,
			AddToFavorite,
			CopyLink,
			Report,
			DeleteContent
}

// MARK: - Umeng

// MARK: - 消息通知列表-类型
enum QueryMessageListType: Int {
    case LikeAndComment = 1   //赞和评论
    case Care = 2   //关注
    case Notice = 3 //通知
}
