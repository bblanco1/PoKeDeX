//
//  PoKeMoN.h
//  PoKeDeX
//
//  Created by Brian Blanco on 10/16/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PoKeMoN : NSObject

@property (nonatomic) NSString *pokemon;
@property (nonatomic) NSString *pokemonSpriteImageURL;
@property (nonatomic) NSString *pokemonImageURL;
@property (nonatomic) NSInteger atk;
@property (nonatomic) NSInteger def;
@property (nonatomic) NSString *mass;
@property (nonatomic) NSString *type1;
@property (nonatomic) NSString *type2;
@property (nonatomic) NSString *ability1;
@property (nonatomic) NSString *ability2;


- (instancetype) initWithJSON: (NSDictionary *)json;

@end
