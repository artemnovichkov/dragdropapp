//
//  ViewController.m
//  DragDropApp
//
//  Created by Артем Новичков on 11/14/13.
//  Copyright (c) 2013 Артем Новичков. All rights reserved.
//

#import "ViewController.h"
#import "MyScene.h"

@implementation ViewController

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    SKView * skView =(SKView *)self.view;
    if (!skView.scene){
        skView.showsFPS = YES;
        skView.showsNodeCount = YES;
        
        SKScene * scene = [MyScene sceneWithSize:skView.bounds.size];
        scene.scaleMode  = SKSceneScaleModeAspectFill;
        [skView presentScene:scene];
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
