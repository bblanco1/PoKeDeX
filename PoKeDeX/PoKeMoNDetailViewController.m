//
//  PoKeMoNDetailViewController.m
//  PoKeDeX
//
//  Created by Brian Blanco on 10/17/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import "PoKeMoNDetailViewController.h"
#import "FLAnimatedImage.h"
#import "FLAnimatedImageView.h"

@interface PoKeMoNDetailViewController ()


@end

@implementation PoKeMoNDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:NO animated:YES];
   
    self.pokeLabel.text = self.pokeName;
    self.pokeURL = self.pokeURL;
//    self.atkLabel.text = self.atk;
//    self.defLabel.text = self.def;
    self.massLabel.text = self.mass;
    self.type1Label.text = self.type1;
    self.type2Label.text = self.type2;
    self.ability1Label.text = self.ability1;
    self.ability2Label.text = self.ability2;
    
    
    // Animated Gifs
    NSURL *imageURL = [NSURL URLWithString:self.pokeURL];
    FLAnimatedImage *pokeImages = [[FLAnimatedImage alloc] initWithAnimatedGIFData:[NSData dataWithContentsOfURL:imageURL]];
    self.pokeImage.animatedImage = pokeImages;
    [self.view addSubview:self.pokeImage];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
