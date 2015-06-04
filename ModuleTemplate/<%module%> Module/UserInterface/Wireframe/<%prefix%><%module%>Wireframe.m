//
//  <%prefix%><%module%>Wireframe.m
//  <%project%>
//
//  Created by Oksana Kovalchuk on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Wireframe.h"
#import "<%prefix%><%module%>Interactor.h"
#import "<%prefix%><%module%>VC.h"
#import "<%prefix%><%module%>Presenter.h"

@interface <%prefix%><%module%>Wireframe ()

@property (nonatomic, strong) <%prefix%><%module%>Presenter* presenter;
@property (nonatomic, strong) <%prefix%><%module%>VC* <%moduleLower%>Controller;
@property (nonatomic, strong) UINavigationController* presentedController;

@end

@implementation <%prefix%><%module%>Wireframe

- (void)present<%module%>ControllerFromNavigationController:(UINavigationController *)nc
{
    <%prefix%><%module%>VC* <%moduleLower%>Controller = [<%prefix%><%module%>VC new];
    <%prefix%><%module%>Interactor* interactor = [<%prefix%><%module%>Interactor new];
    <%prefix%><%module%>Presenter* presenter = [<%prefix%><%module%>Presenter new];
    
    interactor.output = presenter;
    
    <%moduleLower%>Controller.eventHandler = presenter;
    
    presenter.interactor = interactor;
    presenter.wireframe = self;
    [presenter configurePresenterWithUserInterface:<%moduleLower%>Controller];
    
    ANDispatchBlockToMainQueue(^{
        [nc pushViewController:<%moduleLower%>Controller animated:YES];
    });
    
    self.presenter = presenter;
    self.presentedController = nc;
    self.<%moduleLower%>Controller = <%moduleLower%>Controller;
}

- (void)dismiss<%module%>Controller
{
    [self.presentedController popViewControllerAnimated:YES];
}

@end
