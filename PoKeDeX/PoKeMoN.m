//
//  PoKeMoN.m
//  PoKeDeX
//
//  Created by Brian Blanco on 10/16/15.
//  Copyright © 2015 Brian Blanco. All rights reserved.
//

#import "PoKeMoN.h"

@implementation PoKeMoN

- (instancetype)initWithJSON:(NSDictionary *)json
{
    if (self = [self init]) {
        
        self.pokemon = json[@"Pokemon"];
        self.pokemonImageURL = json[@"Image"];
        self.pokemonSpriteImageURL = json[@"GIFImage"];
        self.atk = [json[@"Atk"] integerValue];
        self.def = [json[@"Def"] integerValue];
        self.mass = json[@"Mass"];
        self.type1 = json[@"Type I"];
        self.type2 = json[@"Type II"];
        self.ability1 = json[@"Abiltiy I"];
        self.ability2 = json[@"Ability II"];
        
        return self;
    }
    return nil;
}

@end
