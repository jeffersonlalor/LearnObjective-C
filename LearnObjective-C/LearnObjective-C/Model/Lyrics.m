//
//  Lyrics.m
//  LearnObjective-C
//
//  Created by Jefferson de Oliveira Lalor on 09/07/19.
//  Copyright © 2019 Lalor. All rights reserved.
//

#import "Lyrics.h"

@implementation Lyrics

static NSArray *_all = nil;

+ (NSArray *)database {
    if (_all == nil) {
        NSMutableArray *lyrics = [[NSMutableArray alloc] init];
        Lyrics *lyric;
        
//        UIImage *myimage = [[UIImage alloc] initWithContentsOfFile: @"default-image"];
        
        lyric = [[Lyrics alloc] initWithName: @"Meus Próprios Meios" band: @"Oficina G3" image: [UIImage imageNamed: @"default-image"] lyricsSong: @"I Don't Have Now!"];
        [lyrics addObject: lyric];

        lyric = [[Lyrics alloc] initWithName: @"Depois da Guerra" band: @"Oficina G3" image: [UIImage imageNamed: @"default-image"] lyricsSong: @"I Don't Have Now!"];
        [lyrics addObject: lyric];

        _all = lyrics;
    }
    
    return _all;
}

- (instancetype)initWithName:(NSString *)nameSong
                band:(NSString *)band
                image:(UIImage *)image
                lyricsSong:(NSString *)lyricsSong {
    
    self = [super init];
    
    if(self) {
        [self setNameSong: nameSong];
        [self setBand: band];
        [self setImage: image];
        [self setLyricsSong: lyricsSong];
    }
    
    return self;
}

@end
