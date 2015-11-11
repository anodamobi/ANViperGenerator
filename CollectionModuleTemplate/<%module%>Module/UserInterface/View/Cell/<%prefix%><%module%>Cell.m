//
//  <%prefix%><%module%>Cell.m
//  <%project%>
//
//  Created by ANODA on 11/9/15.
//  Copyright © 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Cell.h"

@interface <%prefix%><%module%>Cell ()

@property (nonatomic, strong) UIImageView* imageView;

@end

@implementation <%prefix%><%module%>Cell

- (void)updateWithModel:(<%prefix%><%module%>CellViewModel *)model
{
    
}

#pragma mark - Lazy Load

- (UIImageView *)imageView
{
    if(!_imageView)
    {
        _imageView = [[UIImageView alloc] init];
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.clipsToBounds = YES;
        [self.contentView addSubview:_imageView];
        
        [_imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    }
    return _imageView;
}

@end
