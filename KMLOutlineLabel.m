//
//  KMLOutlineLabel.m
//  komola UG
//
//  Created by Claas Lange on 15.06.12.
//  Copyright (c) 2012 komola UG (http://komola.de). All rights reserved.
//
//  Initial idea from kprevas (http://stackoverflow.com/a/1424665)
//

#import "KMLOutlineLabel.h"

@implementation KMLOutlineLabel

@synthesize outlineColor, outlineWidth;

- (void)drawTextInRect:(CGRect)rect {

    CGSize shadowOffset = self.shadowOffset;
    UIColor *textColor = self.textColor;

    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(c, self.outlineWidth);
    CGContextSetLineJoin(c, kCGLineJoinRound);

    CGContextSetTextDrawingMode(c, kCGTextStroke);
    self.textColor = self.outlineColor;
    [super drawTextInRect:rect];

    CGContextSetTextDrawingMode(c, kCGTextFill);
    self.textColor = textColor;
    self.shadowOffset = CGSizeMake(0, 0);
    [super drawTextInRect:rect];

    self.shadowOffset = shadowOffset;

}

@end