//
//  MyTableViewCell.h
//  LearnObjective-C
//
//  Created by Jefferson de Oliveira Lalor on 09/07/19.
//  Copyright © 2019 Lalor. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface MyTableViewCell: UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *title;

@property (weak, nonatomic) IBOutlet UILabel *band;

@property (weak, nonatomic) IBOutlet UIImageView *imageBand;


@end
