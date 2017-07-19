//
//  BookModel.h
//  18-ios-JSON数据解析
//
//  Created by Rick on 2017/7/14.
//  Copyright © 2017年 Rick. All rights reserved.
//

#import <Foundation/Foundation.h>

//书籍的数据模型
@interface BookModel : NSObject
{
    //名称，出版社，价格，作者
    NSString *_bookName ;
    NSString *_publisher ;
    NSString *_price ;
    
    NSMutableArray *_autoArray ;
}

@property(retain,nonatomic) NSString *mBookName ;
@property(retain,nonatomic) NSString *mPublisher ;
@property(retain,nonatomic) NSString *mPrice ;
@property(retain,nonatomic) NSString *mAutoArray ;

@end
