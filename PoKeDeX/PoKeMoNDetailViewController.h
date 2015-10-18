//
//  PoKeMoNDetailViewController.h
//  PoKeDeX
//
//  Created by Brian Blanco on 10/17/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PoKeMoN.h"
#import "FLAnimatedImage.h"
#import "FLAnimatedImageView.h"

@interface PoKeMoNDetailViewController : UIViewController


@property (weak, nonatomic) IBOutlet FLAnimatedImageView *pokeImage;
@property (weak, nonatomic) IBOutlet UILabel *pokeLabel;
@property (weak, nonatomic) IBOutlet UILabel *atkLabel;
@property (weak, nonatomic) IBOutlet UILabel *defLabel;
@property (weak, nonatomic) IBOutlet UILabel *massLabel;
@property (weak, nonatomic) IBOutlet UILabel *type1Label;
@property (weak, nonatomic) IBOutlet UILabel *type2Label;
@property (weak, nonatomic) IBOutlet UILabel *ability1Label;
@property (weak, nonatomic) IBOutlet UILabel *ability2Label;
@property (nonatomic) NSString *pokeName;
@property (nonatomic) NSString *pokeURL;
@property (nonatomic) NSInteger atk;
@property (nonatomic) NSInteger def;
@property (nonatomic) NSString *mass;
@property (nonatomic) NSString *type1;
@property (nonatomic) NSString *type2;
@property (nonatomic) NSString *ability1;
@property (nonatomic) NSString *ability2;

@end
