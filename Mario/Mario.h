//
//  Mario.h
//  Mario
//
//  Created by Adam on 10/07/2014.
//  Copyright (c) 2014 AdamGoodApp. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface Mario : SKSpriteNode

+(instancetype)marioWithPosition:(CGPoint)position;
-(void)performTouch;

@end
