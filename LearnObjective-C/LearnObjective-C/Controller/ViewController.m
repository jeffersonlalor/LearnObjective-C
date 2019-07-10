//
//  ViewController.m
//  LearnObjective-C
//
//  Created by Jefferson de Oliveira Lalor on 09/07/19.
//  Copyright © 2019 Lalor. All rights reserved.
//

#import "ViewController.h"
#import "../Model/Lyrics.h"
#import "../Controller/MyTableViewCell.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[Lyrics database] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MyTableViewCell *cell = (MyTableViewCell *) [tableView dequeueReusableCellWithIdentifier:@"MyTableViewCell"];
    Lyrics *lyric = [[Lyrics database] objectAtIndex: [indexPath row]];

    [[cell title] setText: [lyric nameSong]];
    [[cell band] setText: [lyric band]];
    [[cell imageBand] setImage: [lyric image]];

    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 84;
}

@end
