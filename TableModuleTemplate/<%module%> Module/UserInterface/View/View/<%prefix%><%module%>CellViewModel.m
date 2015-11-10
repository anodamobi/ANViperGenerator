//
//  <%prefix%><%module%>CellViewModel.m
//  <%project%>
//
//  Created by ANODA on 11/9/15.
//  Copyright © 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>CellViewModel.h"

@interface <%prefix%><%module%>CellViewModel ()

@property (nonatomic, strong) id currentModel;

@end

@implementation <%prefix%><%module%>CellViewModel

- (void)updateWithItem:(id)item
{
    self.currentModel = item;
}


@end
