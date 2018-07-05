//
//  Macros.h
//  NuanChou
//
//  Created by Hui Jiang on 09/05/2017.
//  Copyright © 2017 Hui Jiang. All rights reserved.
//

#ifndef Macros_h
#define Macros_h
 

#define kVersion ([[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"])

#define SET_DICTIONARY_A_OBJ_B_FOR_KEY_C_ONLYIF_B_IS_NOT_NIL(A,B,C) if((B)!=nil){ [A setObject:(B) forKey:(C)];}
#define IS_EMPTY_STRING(x) ([x isEqualToString:@""]?YES:NO)

#define INT2NUM(x) 		[NSNumber numberWithInteger:(x)]
#define DOUBLE2NUM(x) 	[NSNumber numberWithDouble:(x)]
#define INT2STR(x) 		[NSString stringWithFormat:@"%ld", (x)]
#define LONGLONG2NUM(x) [NSNumber numberWithLongLong:(x)]
#define LONGLONG2STR(x) [NSString stringWithFormat:@"%lld", (x)]

#define THUMBNAIL(w,h) [NSString stringWithFormat:@"?imageView2/3/w/%d/h/%d", (w),(h)]

#pragma mark - UI related
//判断设备
#define DEV_SCREEN(width, height)    (([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(width, height), [[UIScreen mainScreen] currentMode].size) : NO))
#define iPad            ([[UIDevice currentDevice].model isEqualToString:@"iPad"])
#define iPhone            ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone)
#define iPhone5            (DEV_SCREEN(640, 1136))
#define iPhone6            (DEV_SCREEN(750, 1334))
#define iPhone6p        (DEV_SCREEN(1242, 2208))
#define iPhoneX         (DEV_SCREEN(1125, 2436))
#define iPad_Normal        (DEV_SCREEN(768, 1024))
#define iPad_Retina        (DEV_SCREEN(768*2, 1024*2))

// screen width and height
#define kWidth  [[UIScreen mainScreen] bounds].size.width
#define kHeight [[UIScreen mainScreen] bounds].size.height

// 宽高比
#define kScaleWidth 	(kWidth / 375.0)
#define kScaleHeight 	(kHeight / 667.0)
#define kScaleWidthFor375    (kWidth<375.0?kWidth/375.0:1.0)
#define kScaleHeightFor667   (kHeight<667.0?kHeight/667.0:1.0)

// NavigationBar、StatusBar、TabBar height
#define kStatusBarHeight         	[[UIApplication sharedApplication] statusBarFrame].size.height
#define kNavigationBarHeight     	44
#define kNavBarHeightWithStatusBar 	(44+kStatusBarHeight)
#define kTabBarHeight            	 (iPhoneX? 83.0:49.0)
#define kContentHeight           	(kHeight - kNavigationBarHeight)

#define kBackBtnBlackImage [UIImage imageNamed:@"back_btn_black"]     //黑色的返回图标
#define kBackBtnWhiteImage [UIImage imageNamed:@"back_btn_white"]     //白色的返回图标

// 字体大小,类型
#define kSystemFont19 [UIFont systemFontOfSize:19]    		 //19号字体大小
#define kSystemFont18 [UIFont systemFontOfSize:18]    		 //18号字体大小
#define kSystemFont17 [UIFont systemFontOfSize:17]    		 //17号字体大小
#define kSystemFont16 [UIFont systemFontOfSize:16]           //17号字体大小
#define kSystemFont15 [UIFont systemFontOfSize:15]           //15号字体大小
#define kSystemFont14 [UIFont systemFontOfSize:14]    		 //14号字体大小
#define kSystemFont13 [UIFont systemFontOfSize:13]           //13号字体大小
#define kSystemFont12 [UIFont systemFontOfSize:12]    		 //12号字体大小
#define kSystemFont11 [UIFont systemFontOfSize:11]           //11号字体大小
#define kSystemFont10 [UIFont systemFontOfSize:10]    		 //10号字体大小

// Top\Right\Bottom\Left Margin
#define kLeftMargin 16
#define kRightMargin (kLeftMargin)

#define kImgCornerRadius     4.0f     //cell 图片圆角

#pragma mark - Color related
#define kWhiteBGColor	 [UIColor colorFromHexCode:@"#FFFFFF"]     //背景色,页面间隔底色
#define kNavBarRedColor  [UIColor colorFromHexCode:@"#CE1126"]     //导航条红色
#define kMainRedColor	 [UIColor colorFromHexCode:@"#E53E42"]     //主红色
#define kSubBlueColor	 [UIColor colorFromHexCode:@"#5B9CF5"]     //点缀蓝色
#define kSubOrangeColor	 [UIColor colorFromHexCode:@"#FF780B"]     //点缀橘色
#define kSubRedColor	 [UIColor colorFromHexCode:@"#EB364B"]     //点缀红色
#define k333GrayColor	 [UIColor colorFromHexCode:@"#333333"]     //灰色系 - #333333
#define k666GrayColor	 [UIColor colorFromHexCode:@"#666666"]     //灰色系 - #666666
#define k999GrayColor	 [UIColor colorFromHexCode:@"#999999"]     //灰色系 - #999999
#define kcccGrayColor    [UIColor colorFromHexCode:@"#CCCCCC"]     //灰色系 - #CCCCCC
#define kdddGrayColor	 [UIColor colorFromHexCode:@"#dddddd"]     //灰色系 - #dddddd
#define kfAGrayColor	 [UIColor colorFromHexCode:@"#FAFAFA"]     //灰色系 - #fafafa
#define kf6GrayColor	 [UIColor colorFromHexCode:@"#f6f6f6"]     //灰色系 - #f6f6f6
#define kf0GrayColor	 [UIColor colorFromHexCode:@"#f0f0f0"]     //灰色系 - #f0f0f0
#define kD8GrayColor	 [UIColor colorFromHexCode:@"#D8D8D8"]     //灰色系 - #D8D8D8

// 压缩Unit参数
#define MB 1 * 1024 * 1024

// 阅读时间Countdown
#define kCountdownTime 1 * 60 * 60
#define kReadingLastOneMin 1 * 60
#define kReadingLastFiveMins (5 * kReadingLastOneMin)
#define kReadingLastTenMins (10 * kReadingLastOneMin)
#define kReadingLastThirtyMins (30 * kReadingLastOneMin)
#define kReadingLastSixtyMins (kCountdownTime)

// pageSize
#define kCountPerPage 10

#define kWeakSelf __weak typeof(self) weakSelf = self;
#define kStrongSelf __strong typeof(self) strongSelf = self;


#pragma mark - 首页Cell类型
typedef NS_ENUM(NSInteger, HomeNewsStyle) {
    HomeNewsArticleNone = 0,
    HomeNewsArticleOne = 1,
    HomeNewsDynamicNone = 2,
    HomeNewsDynamicOne = 3,
    HomeNewsDynamicTwo = 4,
    HomeNewsDynamicThree = 5,
    HomeNewsDynamicFour = 6,
    HomeNewsDynamicFive = 7,
    HomeNewsDynamicSix = 8,
    HomeNewsDynamicSeven = 9,
    HomeNewsDynamicEight = 10,
    HomeNewsDynamicNine = 11,
    HomeNewsForwardDynamicNone = 12,
    HomeNewsForwardDynamicImgs = 13,
    HomeNewsArticleThree = 14,
    HomeNewsRecommend = 15
};

#pragma mark - 认证示例类型
typedef NS_ENUM(NSInteger, AuthorizedSampleStyle) {
    AuthorizedSampleHoldId = 0,
    AuthorizedSampleIdFront = 1,
    AuthorizedSampleWork = 2,
    AuthorizedSamplePersonalProve = 3
};

#pragma mark - HostType类型
typedef NS_ENUM(NSUInteger, DynamicHostType){
	DynamicHostTypeNews = 1,	//新闻
	DynamicHostTypeArticle = 2,		//文章
	DynamicHostTypeMoment = 3,		//动态
	DynamicHostTypeVideo = 5,		//视频
	DynamicHostTypeOther		//其他
};

#pragma mark - 账户类型
typedef NS_ENUM(NSUInteger, AccountType){
	AccountTypePersonal = 1,	//个人账户
	AccountTypeCompany,			//公司账户
};

#pragma mark - 性别类型
typedef NS_ENUM(NSUInteger, Gender){
	Male = 0,
	Female,
};

#pragma mark - 查看自己的还是别人的
typedef NS_ENUM(NSInteger, MomentType) {
    MomentTypeSelf=0,
    MomentTypeOther
};

#pragma mark - 查看自己的还是别人的
typedef NS_ENUM (NSInteger, ReadingTimeType) {
	ReadingLastOneMin = 1,
	ReadingLastFiveMins,
	ReadingLastTenMins,
	ReadingLastThirtyMins,
	ReadingLastSixtyMins
};

#pragma mark - 大V认证状态
typedef NS_ENUM (NSInteger, VIPStatus) {
	NotApplyForVIP = 0,
	ApplyingVIP,
	BecomeVIP,
	NotPassVerify
};

#pragma mark - 商城购买流程
typedef NS_ENUM (NSInteger, PurchaseProcess) {
    PurchaseProcessBind = 0,
    PurchaseProcessAddress,
    PurchaseProcessPay,
    PurchaseProcessSuccess,
    PurchaseProcessComplete
};

#pragma mark - VIP申请流程
typedef NS_ENUM (NSInteger, AuthorizedProcess) {
	AuthorizedProcessApplicant = 0,
	AuthorizedProcessPersonal,
	AuthorizedProcessCompany,
	AuthorizedProcessSuccess,
	AuthorizedProcessComplete
};

#pragma mark - 登录弹框来源节点
typedef NS_ENUM(NSInteger, LoginSourceNode){
    LoginSourceNode_None = 0,        			// 不作处理
    LoginSourceNode_Mall_RedBagTask = 1,    	//从红包商城中查看红包任务按钮,查看红包余额
    LoginSourceNode_Mall_OrderList,        		//从红包商城中查看我的订单按钮
    LoginSourceNode_Mall_Exchange,        		//从红包商城中立即兑换按钮
    LoginSourceNode_Home_FollowChannel,        	//从首页关注频道中
    LoginSourceNode_Publish,        			//从发布页面中
    LoginSourceNode_Forward ,        			//从转发页面中
    LoginSourceNode_RedBagTask_Login,        	//从红包任务页面中未登录按钮
    LoginSourceNode_RedBagTask_Exchange,        //从红包任务页面中红包换购
    LoginSourceNode_RedBagTask_CheckList,       //从红包任务页面中查看红包
    LoginSourceNode_RedBagTask_DayRead,        	//从红包任务页面每日阅读去完成
    LoginSourceNode_RedBagTask_Share,        	//从红包任务页面分享奖励
    LoginSourceNode_RedBagTask_Publish,        	//从红包任务页面发布奖励
    LoginSourceNode_RedBagTask_NewUser,        	//从红包任务页面新手任务
    LoginSourceNode_VList_ApplyV,        		//从大v列表页面申请加V
    LoginSourceNode_DetailPage_CommentReply,    //从文章动态详情页发布回复
    LoginSourceNode_Port_99Error,        		//接口返回 -99 错误码后
    LoginSourceNode_Me_MyInviter,       		//我的：我的邀请人
	LoginSourceNode_Me_InviteFriend_InviteRecord,//我的：从邀请好友查看邀请记录
    LoginSourceNode_Me_phoneLogin,  			//我的：手机号登录
	LoginSourceNode_NotificationNeedsLogin  	//推送通知需要登录
};

////0 推荐 1 佛学2国学3明星4养生5商业6运势7科技8育儿9旅游10美食11热点12佛学经典13国学经典14明星经典15养生经典16商业经典17运势经典18科技经典19育儿经典20旅游经典21美食经典
//
//#pragma mark - 频道ID
//typedef NS_ENUM(NSUInteger, ChannelAutoID){
//    ChannelAutoIdRecommend = 0,    //推荐
//    ChannelAutoIdBuddhism = 1,     //佛学
//    ChannelAutoIdBuddhism,        //动态
//    ChannelAutoIdBuddhism,        //视频
//    ChannelAutoIdBuddhism        //其他
//};

#endif /* Macros_h */
