//
//  Mario.m
//  Mario
//
//  Created by Adam on 10/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import "Mario.h"

@interface Mario ()
@property(nonatomic) SKAction *tapAction;
@end

@implementation Mario

+(instancetype)marioWithPosition:(CGPoint)position {
    
    Mario *mario = [self spriteNodeWithImageNamed:@"slice03_03"];
    mario.position = position;
    mario.anchorPoint = CGPointMake(0.0, 0.0);
    mario.name = @"mario";
    
    return mario;
}

-(void) performTouch {
    [self runAction:self.tapAction];
}

-(SKAction *) tapAction {
    if (_tapAction != nil) {
        return _tapAction;
    }
    
    NSArray *marioArray = @[[SKTexture textureWithImageNamed:@"slice03_03"], [SKTexture textureWithImageNamed:@"slice05_05"], [SKTexture textureWithImageNamed:@"slice08_08"]];
    SKAction *marioAnimation = [SKAction animateWithTextures:marioArray timePerFrame:0.2];
    SKAction *marioRepeat = [SKAction repeatActionForever:marioAnimation];
    
    _tapAction = marioRepeat;
    
    return _tapAction;
}

@end
