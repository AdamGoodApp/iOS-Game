//
//  GameScene.m
//  Mario
//
//  Created by Adam on 10/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "GameScene.h"
#import "Mario.h"

@implementation GameScene

-(id)initWithSize:(CGSize)size {
    
    if (self = [super initWithSize:size]) {
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"mario-background"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:background];
       
        Mario *mario = [Mario marioWithPosition:CGPointMake(10, 13)];
        [self addChild:mario];
        
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    Mario *mario = (Mario *) [self childNodeWithName:@"mario"];
    mario.performTouch;
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    Mario *mario = (Mario *) [self childNodeWithName:@"mario"];
    [ mario removeAllActions];
}

@end
