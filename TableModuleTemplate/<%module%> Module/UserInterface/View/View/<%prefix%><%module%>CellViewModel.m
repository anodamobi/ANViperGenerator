//
//  <%prefix%><%module%>CellViewModel.m
//  <%project%>
//
//  Created by ANODA on 11/9/15.
//  Copyright © 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>CellViewModel.h"

@interface <%prefix%><%module%>CellViewModel ()

@property (nonatomic, strong) id item;

@end

@implementation <%prefix%><%module%>CellViewModel

+ (instancetype)viewModelWithItem:(id)item
{
    <%prefix%><%module%>CellViewModel* model = [self new];
    model.item = item;
    return model;
}

@end
