![alt text](http://cdn.bulbagarden.net/upload/thumb/1/1b/Pokedex_logo.png/250px-Pokedex_logo.png "PoKeDeX Logo")

This is my iteration of the infamous PoKeDeX. Ever since watching the show as a child, I've wanted a version of such a device as close to the show's version as possible. Of course there were various versions that came out in toy stores, etc. but I wanted to take it one step further and try and get Ash's PoKeDeX as close to TV show, if not exactly the same. I wanted to integrate not only the images and the data, but the simulated UI featured in the series. 

![alt text](http://assets4.pokemon.com/assets/cms2/img/watch-pokemon-tv/seasons/season01/season01_ep42_ss01.jpg "PoKeDex Example")

## Current Fuctionality 

![zGwr7M](http://cdn.makeagif.com/media/10-22-2015/zGwr7M.gif)

I created my own JSON to host all the PoKeMoN data that was needed to populate in the app.

```javascript 
{
Per: 1,
Nat: 1,
Pokemon: "Bulbasaur",
Image: "http://www.pokestadium.com/sprites/xy/bulbasaur.gif",
GIFImage: "http://www.pokestadium.com/sprites/xy/bulbasaur-3.gif",
HP: 45,
Atk: 49,
Def: 49,
SpA: 65,
SpD: 65,
Spe: 45,
Total: 318,
Type I: "Grass",
Type II: "Poison",
Tier: "NU",
Ability I: "Overgrow",
Ability II: "",
Hidden Ability: "Chlorophyll",
Mass: "6.9 kG",
LK/GK: 20,
EV Worth: "1 SpA",
EXPV: 64,
Color: "Green",
Egg Group I: "Monster",
Egg Group II: "Grass",
Catch: 45,
EXP: 1059860,
Evolve: "",
Joh: 226,
Hoe: null,
Sin: null,
Un: null
},
```

- Populates all 151 Pokemon with their icons 
- Detail View Controller currently shows a Pokemon gif that will soon include all the data.

### Making use of these cocoapods
- [AFNetworking](https://github.com/AFNetworking/AFNetworking)
- [FLAnimatedImage](https://github.com/Flipboard/FLAnimatedImage)

### Future  Functionality 
- Use of a blinking lense [YouTube example](https://www.youtube.com/watch?v=He1g6IZBUE0)
- Sound clips for each Pokemon
- Voice regonition
- Image recogition






