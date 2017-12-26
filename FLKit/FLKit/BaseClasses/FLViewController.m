//
//  FLViewController.m
//  FLKit
//
//  Created by afanda on 8/17/17.
//  Copyright © 2017 easemob. All rights reserved.
//

#import "FLViewController.h"
#import "FLMessage.h"
#import "FLFriendsViewController.h"
#import "FLRuntimeVC.h"
#import "FLThreadLock.h"

#define count(a) (sizeof(a)/sizeof(a[0]))

typedef void(^blockName)(NSString *name);

#define khref @"<a href"

@interface FLViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong) UISegmentedControl *seg;

@property(nonatomic,copy) NSArray *rowNames;

@end

// <href=\"https://kefu.easemob.com\">环信</a>

static NSOperationQueue *_personOperationQueue = nil;

__attribute__((constructor))
static void initialize_Queue() {
    _personOperationQueue = [[NSOperationQueue alloc] init];
}

@implementation FLViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
//    NSLog(@"1111%@",self);
//    NSString *str = @"abc";
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 300, 30)];
//    str = nil;
//    NSLog(@"%d",str.length);
//    label.text = str;
//    [self.view addSubview:label];
//    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_CONCURRENT);
//
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT,0), ^{
//
//    });
//
//    NSString *word = @"12345";
//    void(^fire)() =  ^ {
//        NSLog(@"before%@",word);
//    };
//    word = @"bbbbb";
//    NSLog(@"after:%@",word);
//    fire();
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _rowNames = @[@"YYLabel",@"NotificationCenter",@"Runtime",@"ThreadLock",@"name"];
    
//
//    // Do any additional setup after loading the view.
//    self.title = @"登录";
//    NSString * htmlString = @"https://www.baidu.com 百度测试测试<a href=\"https://kefu.easemob.com\">环信</a> 哈 https://www.google.com";
//
////    NSLog(@"dicdic:%@=",dic);
//    NSMutableAttributedString * attrStr = [[NSMutableAttributedString alloc] initWithData:[htmlString dataUsingEncoding:NSUnicodeStringEncoding] options:@{NSDocumentTypeDocumentAttribute:NSHTMLTextDocumentType} documentAttributes:nil error:nil];
//    NSMutableAttributedString *oriString = attrStr.mutableCopy;
//    YYLabel * myLabel = [[YYLabel alloc] initWithFrame:CGRectMake(0, 200, 300, 50)];
//    myLabel.font = [UIFont systemFontOfSize:30];
//    myLabel.numberOfLines = 0;
//    [attrStr enumerateAttributesInRange:NSMakeRange(0, attrStr.length) options:0 usingBlock:^(NSDictionary<NSAttributedStringKey,id> * _Nonnull attrs, NSRange range, BOOL * _Nonnull stop) {
//        if ([attrs objectForKey:@"NSLink"]) {
//            NSLog(@"link :%@",[attrs objectForKey:@"NSLink"]);
//            YYTextHighlight *highlight = [YYTextHighlight new];
//            YYTextBorder *highlightBorder = [YYTextBorder new];
//            highlightBorder.insets = UIEdgeInsetsMake(-2, 0, -2, 0);
//            highlightBorder.cornerRadius = 3;
//            highlightBorder.fillColor = [UIColor lightGrayColor];
//            [highlight setBackgroundBorder:highlightBorder];
//            [highlight setUserInfo:@{@"url":[attrs objectForKey:@"NSLink"]}];
//
//            [oriString setTextHighlight:highlight range:range];
//        }
//    }];
//    [oriString addAttribute:NSFontAttributeName
//
//                         value:[UIFont systemFontOfSize:18.0]
//
//                         range:NSMakeRange(0,oriString.length)];
//
//    NSString *string = oriString.string;
//    NSDataDetector * detector = [NSDataDetector dataDetectorWithTypes:NSTextCheckingTypeLink error:nil];
//
//    NSArray *matches = [detector matchesInString:string
//                                         options:0
//                                           range:NSMakeRange(0, [string length])];
//    for (NSTextCheckingResult *match in matches) {
//        if ([match resultType] == NSTextCheckingTypeLink) {
//            NSRange range = [match range];
//            YYTextHighlight *highlight = [YYTextHighlight new];
//            YYTextBorder *highlightBorder = [YYTextBorder new];
//            highlightBorder.insets = UIEdgeInsetsMake(-2, 0, -2, 0);
//            highlightBorder.cornerRadius = 3;
//            highlightBorder.fillColor = [UIColor lightGrayColor];
//            [highlight setBackgroundBorder:highlightBorder];
//            [highlight setUserInfo:@{@"url":[match URL]}];
//            [oriString setTextHighlight:highlight range:range];
//            [oriString setColor:[UIColor blueColor] range:range];
//            YYTextDecoration *under = [YYTextDecoration new];
//            under.color = [UIColor blueColor];
//            [oriString setTextUnderline:under range:range];
//        }
//    }
//    myLabel.attributedText = oriString;
//    __weak __typeof(self) weakSelf = self;
//    myLabel.highlightTapAction = ^(UIView * _Nonnull containerView, NSAttributedString * _Nonnull text, NSRange range, CGRect rect) {
//        [weakSelf yyLabelLinkDidClecked:(YYLabel *)containerView range:range];
//    };
//    [self.view addSubview:myLabel];
    
//    NSString *msg = htmlString;
//    NSMutableAttributedString *oriString1 = [self parseString:msg];
//    YYTextHighlight *highlight = [YYTextHighlight new];
//    YYTextShadow *shadow = [YYTextShadow new];
//    shadow.color = [UIColor blueColor];
//    YYTextBorder *highlightBorder = [YYTextBorder new];
//    highlightBorder.insets = UIEdgeInsetsMake(-2, 0, -2, 0);
//    highlightBorder.cornerRadius = 3;
//    highlightBorder.fillColor = [UIColor lightGrayColor];
//    [highlight setBackgroundBorder:highlightBorder];
//    // 数据信息，用于稍后用户点击
//    highlight.userInfo = @{@"url" : @"https://www.baidu.com"};
//    [oriString setTextHighlight:highlight range:NSMakeRange(0, 5)];
//    YYTextDecoration *underline = [YYTextDecoration new];
//    underline.color = [UIColor blueColor];
//    [oriString setTextUnderline:underline range:NSMakeRange(0, 5 )];
//    [oriString setColor:[UIColor blueColor] range:NSMakeRange(0, 5)];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
//    YYLabel *label = [[YYLabel alloc] initWithFrame:CGRectMake(20, 100, 400, 200)];
//    label.numberOfLines = 0;
//    label.font = [UIFont systemFontOfSize:18];
    
//    [self.view addSubview:label];
    [self.view addSubview:self.tableView];
    self.navigationItem.titleView = self.seg;
}



- (void)yyLabelLinkDidClecked:(YYLabel *)yyLabel range:(NSRange)range{
    NSAttributedString *text = yyLabel.textLayout.text;
    YYTextHighlight *highlight = [text attribute:YYTextHighlightAttributeName atIndex:range.location];
    NSDictionary *userInfo = highlight.userInfo;
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(10, 300, 300, 200)];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[userInfo objectForKey:@"url"]];
    [webView loadRequest:request];
    [self.view addSubview:webView];
}

- (UISegmentedControl *)seg {
    if (_seg == nil) {
        _seg = [[UISegmentedControl alloc] initWithItems:@[@"会话",@"客服"]];
        _seg.frame = CGRectMake(0, 0, 200, 40);
        _seg.tintColor = [UIColor whiteColor];
        [_seg addTarget:self action:@selector(didSelectedControl:) forControlEvents:UIControlEventValueChanged];
    }
    return _seg;
}

- (void)didSelectedControl:(UISegmentedControl *)seg {
    NSInteger index = seg.selectedSegmentIndex;
    switch (index) {
        case 0:
        {
            
        }
            break;
            case 1:
        {
            break;
        }
        default:
            break;
    }
}


- (NSMutableAttributedString *)parseString:(NSString *)string {
    NSRange range =  [string rangeOfString:khref];
    NSLog(@"range %@",NSStringFromRange(range));
    
    return [[NSMutableAttributedString alloc] initWithString:string];
}


- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight) style:UITableViewStylePlain];
        _tableView.mj_header= [MJRefreshNormalHeader headerWithRefreshingBlock:^{
            [self loadData];
        }];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.backgroundColor = [UIColor whiteColor];
        _tableView.tableFooterView = [UIView new];
    }
    return _tableView;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    NSDictionary *dic = @{@"key":[NSNull null]};
//    NSLog(@"dic: %@",dic);
    NSMutableString *name = @"fanxiaoning".mutableCopy;
    self.strName = name;
    self.cpyName = name;
    NSLog(@"strong:%@,copy:%@",_strName,_cpyName);
    [name appendString:@"success"];
    NSLog(@"strong:%@,copy:%@",_strName,_cpyName);
}

- (void)receiveNoti:(NSNotification *)noti {
    NSLog(@"noti :%@",noti.object);
}


- (void)test:(FLTextBody **)body {
    FLTextBody *b = *body;
    b.text = @"1111111";
}




- (void)loadData {
    [self downloadImage:^NSString *(NSString *name) {
        NSLog(@"name : %@",name);
        return @"12345";
    }];
    [self.tableView.mj_header endRefreshing];
}


- (void)downloadImage:(NSString *(^)(NSString *name))block {
    NSString *name = block(@"tom");
    NSLog(@"tom :%@",name);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _rowNames.count;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 1: {
            FLFriendsViewController *friends = [[FLFriendsViewController alloc] init];
            [self.navigationController pushViewController:friends animated:YES];
            break;
        }
        case 2: {
            FLRuntimeVC *runtime = [[FLRuntimeVC alloc] init];
            [self.navigationController pushViewController:runtime animated:YES];
            break;
        }
        case 3: {
            FLThreadLock *lock = [[FLThreadLock alloc] init];
            [self.navigationController pushViewController:lock animated:YES];
            break;
        }
        default:
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.textLabel.text = _rowNames[indexPath.row];
    }
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
