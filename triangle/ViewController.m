//
//  ViewController.m
//  triangle
//
//  Created by miyamoto masaru on 2015/10/27.
//  Copyright (c) 2015年 com.miyamoto. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

CGPoint prePoint;
CreateField *field;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    field = [[CreateField alloc] initWithFrame:CGRectMake(20.f, 20.f, self.view.frame.size.width - 40.f, self.view.frame.size.height - 140.f)];
    field.backgroundColor = [UIColor whiteColor];
    [field createPoint:CGPointMake(100, 80) :CGPointMake(250, 250) :CGPointMake(200, 340)];
    [self.view addSubview:field];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self nextResponder] touchesBegan:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch previousLocationInView:self.view];
    [super touchesBegan:touches withEvent:event];
    
    
    prePoint = location;
    
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self nextResponder] touchesMoved:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    [super touchesMoved:touches withEvent:event];
    
    CGPoint dist = CGPointMake(location.x - prePoint.x, location.y - prePoint.y);
    [field movePoint:dist];
    [field setNeedsDisplay];
    
    prePoint = location;
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [[self nextResponder] touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    CGPoint dist = CGPointMake(location.x - prePoint.x, location.y - prePoint.y);
    [field movePoint:dist];
    [field setNeedsDisplay];
}

@end
