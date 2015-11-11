//
//  <%prefix%><%module%>Wireframe.m
//  <%project%>
//
//  Created by ANODA on 1/11/15.
//  Copyright (c) 2015 ANODA. All rights reserved.
//

#import "<%prefix%><%module%>Wireframe.h"
#import "<%prefix%><%module%>Interactor.h"
#import "<%prefix%><%module%>VC.h"
#import "<%prefix%><%module%>Presenter.h"

@interface <%prefix%><%module%>Wireframe ()

@property (nonatomic, strong) <%prefix%><%module%>Presenter* presenter;
@property (nonatomic, strong) <%prefix%><%module%>VC* <%moduleLower%>Controller;
@property (nonatomic, strong) UIViewController* presentedController;

@end

@implementation <%prefix%><%module%>Wireframe

- (void)present<%module%>ControllerFromWindow:(UIWindow*)window
{
    [self _setup];
    
    UINavigationController* nc = [[UINavigationController alloc] initWithRootViewController:self.<%moduleLower%>Controller];
    ANDispatchBlockToMainQueue(^{
        window.rootViewController = nc;
    });
    self.presentedController = nc;
}

- (void)present<%module%>ControllerFromNavigationController:(UINavigationController*)nc
{
    [self _setup];
    
    ANDispatchBlockToMainQueue(^{
        [nc pushViewController:self.<%moduleLower%>Controller animated:YES];
    });
    
    self.presentedController = nc;
}

- (void)presentModalOn:(UIViewController*)viewController
{
    [self _setup];
    
    ANDispatchBlockToMainQueue(^{
        [viewController presentViewController:self.<%moduleLower%>Controller animated:YES completion:nil];
    });
    
    self.presentedController = viewController;
}

- (void)dismiss<%module%>Controller
{
    ANDispatchBlockToMainQueue(^{
        if ([self _isModal])
        {
            [self.presentedController dismissViewControllerAnimated:YES completion:nil];
        }
        else
        {
            [(UINavigationController*)self.presentedController popViewControllerAnimated:YES];
        }
    });
}


#pragma mark - Private

- (void)_setup
{
    <%prefix%><%module%>VC* <%moduleLower%>Controller = [<%prefix%><%module%>VC new];
    <%prefix%><%module%>Interactor* interactor = [<%prefix%><%module%>Interactor new];
    <%prefix%><%module%>Presenter* presenter = [<%prefix%><%module%>Presenter new];
    
    interactor.output = presenter;
    
    <%moduleLower%>Controller.eventHandler = presenter;
    
    presenter.interactor = interactor;
    presenter.wireframe = self;
    [presenter configurePresenterWithUserInterface:<%moduleLower%>Controller];
    
    self.presenter = presenter;
    self.<%moduleLower%>Controller = <%moduleLower%>Controller;
}

- (BOOL)_isModal
{
    if (self.<%moduleLower%>Controller.presentingViewController)
    {
        return YES;
    }
    if (self.<%moduleLower%>Controller.presentingViewController.presentedViewController == self.<%moduleLower%>Controller)
    {
        return YES;
    }
    if (self.<%moduleLower%>Controller.navigationController.presentingViewController.presentedViewController == self.<%moduleLower%>Controller.navigationController)
    {
        return YES;
    }
    return NO;
}

@end
