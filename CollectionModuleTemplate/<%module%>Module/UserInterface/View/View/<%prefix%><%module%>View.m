//
//  <%prefix%><%module%>View.m
//  <%project%>
//
//  Created by ANODA on 11/9/15.
//  Copyright © 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>View.h"

static CGFloat const kIphoneCellDimension = 106;
static CGFloat const kIpadCellDimension = 190.5;

@interface <%prefix%><%module%>View ()

@end


@implementation <%prefix%><%module%>View

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


#pragma mark - Private

- (UICollectionViewFlowLayout*)_layoutForGridView
{
    UICollectionViewFlowLayout* layout = [UICollectionViewFlowLayout new];
    
    CGFloat spacing = 1;
    
    if (IS_IPAD)
    {
        spacing = 2;
    }
    
    layout.minimumInteritemSpacing = spacing;
    layout.minimumLineSpacing = spacing;
    layout.itemSize = [self _sizeForGridCell];
    
    return layout;
}

- (CGSize)_sizeForGridCell
{
    CGSize cellSize = CGSizeZero;
    
    if (IS_IPAD)
    {
        cellSize = CGSizeMake(kIpadCellDimension, kIpadCellDimension);
    }
    else
    {
        cellSize = CGSizeMake(kIphoneCellDimension, kIphoneCellDimension);
    }
    
    if (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))
    {
        cellSize = CGSizeMake(cellSize.height, cellSize.width);
    }
    return cellSize;
}


#pragma mark - Lazy Load

- (UICollectionView*)collectionView
{
    if (!_collectionView)
    {
        _collectionView = [[UICollectionView alloc] initWithFrame:CGRectZero
                                             collectionViewLayout:[self _layoutForGridView]];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsVerticalScrollIndicator = NO;
        [self addSubview:_collectionView];
        
        [_collectionView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(self);
        }];
    }
    return _collectionView;
}


@end
