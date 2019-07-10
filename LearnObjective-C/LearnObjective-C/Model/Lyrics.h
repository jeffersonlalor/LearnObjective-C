//
//  Lyrics.h
//  LearnObjective-C
//
//  Created by Jefferson de Oliveira Lalor on 09/07/19.
//  Copyright © 2019 Lalor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Lyrics: NSObject

@property (nonatomic) NSString *nameSong;
@property (nonatomic) NSString *band;
@property (nonatomic) UIImage *image;
@property (nonatomic) NSString *lyricsSong;

+ (NSArray *)database;

- (instancetype)initWithName:(NSString *)nameSong band:(NSString *)band image:(UIImage *)image lyricsSong:(NSString *)lyricsSong;

@end
