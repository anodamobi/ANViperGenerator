//
//  <%prefix%><%module%>Cell.m
//  <%project%>
//
//  Created by ANODA on 11/9/15.
//  Copyright © 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Cell.h"

@interface <%prefix%><%module%>Cell ()

@property (nonatomic, strong) UILabel* titleLabel;

@end

@implementation <%prefix%><%module%>Cell

- (void)updateWithModel:(<%prefix%><%module%>CellViewModel *)model
{
    
}

#pragma mark - Lazy Load

- (UILabel *)titleLabel
{
    if (!_titleLabel)
    {
        _titleLabel = [UILabel new];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textColor = [UIColor whiteColor];
        [_titleLabel setFont:[UIFont systemFontOfSize:25 weight:UIFontWeightUltraLight]];
        [self addSubview:_titleLabel];
        
        [_titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.equalTo(self).offset(10);
            make.right.equalTo(self).offset(-10);
            make.top.bottom.equalTo(self);
        }];
    }
    
    return _titleLabel;
}

@end
