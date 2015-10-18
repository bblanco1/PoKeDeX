//
//  ViewController.m
//  PoKeDeX
//
//  Created by Brian Blanco on 10/16/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import "ViewController.h"
#import "PoKeMoN.h"
#import "PoKeMoNTableViewCell.h"
#import "PoKeMoNDetailViewController.h"
#import "FLAnimatedImage.h"
#import <AFNetworking/AFNetworking.h>

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic) NSMutableArray *pokemonData;
@property (nonatomic) NSMutableArray *pokemonSprites;
@property (weak, nonatomic) IBOutlet UITableView *pokemonTableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    
    // UITableView Delegates
    self.pokemonTableView.delegate = self;
    self.pokemonTableView.dataSource = self;
    
    // API Request
    [self fetchPoKeData];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - API Request

- (void) fetchPoKeData
{
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:@"https://api.myjson.com/bins/3ke7k" parameters:nil success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
        
        NSLog(@"%@", responseObject);
       
        NSArray *data = responseObject[@"data"];
        
        self.pokemonData = [[NSMutableArray alloc] init];
        
        for (NSDictionary *pdata in data) {
            
            PoKeMoN *allPokemon = [[PoKeMoN alloc] initWithJSON:pdata];
            
            [self.pokemonData addObject:allPokemon];
            
            
        }
        
        [self.pokemonTableView reloadData];
    
    } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}



#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.pokemonData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    PoKeMoNTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"PoKeMoNCell" forIndexPath:indexPath];
    
    PoKeMoN *allPoKeMoN = self.pokemonData[indexPath.row];
    cell.textLabel.text = allPoKeMoN.pokemon;
    
    NSString *imageSpriteString = allPoKeMoN.pokemonImageURL;
    NSURL *imageSpriteURL = [NSURL URLWithString:imageSpriteString];
    NSData *imageData = [NSData dataWithContentsOfURL:imageSpriteURL];
    UIImage *spriteImage = [UIImage imageWithData:imageData];
    cell.imageView.image = spriteImage;
    
    return cell;
}

#pragma mark - prepareForSegure

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"PokemonDetail"])
    {
        NSIndexPath *indexPath = [self.pokemonTableView indexPathForSelectedRow];
        PoKeMoN *allPoKeMon = [self.pokemonData objectAtIndex:indexPath.row];
        PoKeMoNDetailViewController *destViewController = segue.destinationViewController;
        
        destViewController.pokeName = allPoKeMon.pokemon;
        destViewController.pokeURL = allPoKeMon.pokemonImageURL;
        destViewController.atk = allPoKeMon.atk;
        destViewController.def = allPoKeMon.def;
        destViewController.mass = allPoKeMon.mass;
        destViewController.type1 = allPoKeMon.type1;
        destViewController.type2 = allPoKeMon.type2;
        destViewController.ability1 = allPoKeMon.ability1;
        
        NSLog(@"%@", allPoKeMon);
        
    }
}

@end
