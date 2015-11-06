//
//  CreateField.m
//  triangle
//
//  Created by miyamoto masaru on 2015/10/27.
//  Copyright (c) 2015年 com.miyamoto. All rights reserved.
//

#import "CreateField.h"

CGPoint A,B,C;

@implementation CreateField

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    UIBezierPath *line = [UIBezierPath bezierPath];
    [line moveToPoint:A];
    
    //帰着点
    [line addLineToPoint:B];
    [line addLineToPoint:C];
    
    //ラインを結ぶ
    [line closePath];
    [[UIColor redColor] setStroke];
    line.lineWidth = 4;
    [line stroke];
    
}

- (void)createPoint :(CGPoint)a :(CGPoint)b :(CGPoint)c
{

    A = a;
    B = b;
    C = c;
    
}

- (void)movePoint :(CGPoint)a
{
    A.x += a.x;
    A.y += a.y;
    B.x += a.x;
    B.y += a.y;
    C.x += a.x;
    C.y += a.y;
    
}

@end
