//
//  <%prefix%><%module%>Controller.m
//  <%project%>
//
//  Created by ANODA on 6/2/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Controller.h"
#import "<%prefix%><%module%>DataSource.h"
#import "<%prefix%><%module%>Cell.h"

@implementation <%prefix%><%module%>Controller

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView
{
    self = [super initWithCollectionView:collectionView];
    if (self)
    {
        [self registerCellClass:[<%prefix%><%module%>Cell class] forModelClass:[<%prefix%><%module%>CellViewModel class]];
    }
    return self;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    [self.delegate itemSelectedWithModel:[self.storage objectAtIndexPath:indexPath]];
}

- (void)updateDataSource:(<%prefix%><%module%>DataSource *)dataSource
{
    self.storage = dataSource.storage;
}

@end
