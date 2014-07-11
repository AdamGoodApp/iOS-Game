//
//  TitleScene.m
//  Mario
//
//  Created by Adam on 10/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "TitleScene.h"
#import "GameScene.h"

@implementation TitleScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
    
        SKSpriteNode *splashBackground = [SKSpriteNode spriteNodeWithImageNamed:@"Mario_Splash"];
    
        splashBackground.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    
        [self addChild:splashBackground];
    }
        
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    GameScene *gameScene = [GameScene sceneWithSize:self.frame.size];
    SKTransition *transition = [SKTransition fadeWithDuration:1.0];
    [self.view presentScene:gameScene transition:transition];
}

@end
