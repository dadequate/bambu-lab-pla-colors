#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

NSColor *colorFromHex(NSString *hex) {
    unsigned int rgb = 0;
    [[NSScanner scannerWithString:[hex substringFromIndex:1]] scanHexInt:&rgb];
    CGFloat r = ((rgb >> 16) & 0xFF) / 255.0;
    CGFloat g = ((rgb >> 8) & 0xFF) / 255.0;
    CGFloat b = (rgb & 0xFF) / 255.0;
    return [NSColor colorWithDeviceRed:r green:g blue:b alpha:1.0];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSColorList *list = [[NSColorList alloc] initWithName:@"Bambu Lab PLA Colors"];

        NSDictionary *colors = @{
    // --- Matte Colors ---
    @"Matte Ivory White": @"#FFFFFF",
    @"Matte Bone White": @"#CBC6B8",
    @"Matte Latte Brown": @"#D3B7A7",
    @"Matte Caramel": @"#AE835B",
    @"Matte Terracotta": @"#B15533",
    @"Matte Desert Tan": @"#E8DBB7",
    @"Matte Ash Gray": @"#9B9EA0",
    @"Matte Nardo Gray": @"#757575",
    @"Matte Lilac Purple": @"#AE96D4",
    @"Matte Sakura Pink": @"#E8AFCF",
    @"Matte Plum": @"#950051",
    @"Matte Mandarin Orange": @"#F99963",
    @"Matte Lemon Yellow": @"#F7D959",
    @"Matte Scarlet Red": @"#DE4343",
    @"Matte Dark Red": @"#BB3D43",
    @"Matte Dark Brown": @"#7D6556",
    @"Matte Dark Chocolate": @"#4D3324",
    @"Matte Dark Green": @"#68724D",
    @"Matte Apple Green": @"#C2E189",
    @"Matte Grass Green": @"#61C680",
    @"Matte Ice Blue": @"#A3D8E1",
    @"Matte Sky Blue": @"#56B7E6",
    @"Matte Marine Blue": @"#0078BF",

    // --- Silk Colors ---
    @"Silk Gold": @"#FFC600",
    @"Silk Silver": @"#ACB4B5",
    @"Silk Pink": @"#D6ACA9",
    @"Silk White": @"#FFFFFF",
    @"Silk Rose Gold": @"#BA9594",
    @"Silk Mint": @"#96DCB9",
    @"Silk Candy Red": @"#D02727",

    // --- Metal Colors ---
    @"Metal Iridium Gold": @"#B39B84",
    @"Metal Copper Brown": @"#AA6443",
    @"Metal Oxide Green": @"#1D7C6A",
    @"Metal Cobalt Blue": @"#39699E",
    @"Metal Iron Gray": @"#43403D",

    // --- Carbon Fiber Colors ---
    @"CF Burgundy Red": @"#823B43",
    @"CF Matcha Green": @"#5C9748",
    @"CF Royal Blue": @"#2842AD",
    @"CF Lava Gray": @"#4D5054",
    @"CF Black": @"#000000",

    // --- Marble Colors ---
    @"Marble White": @"#F7F3F0",
    @"Marble Red Granite": @"#AD4E38",

    // --- Glow Colors ---
    @"Glow Green": @"#A1FFAC",
    @"Glow Yellow": @"#F8FF80",
    @"Glow Pink": @"#F17B8F",
    @"Glow Blue": @"#7AC0E9",
    @"Glow Orange": @"#FF9D5B",

    // --- Galaxy Colors ---
    @"Galaxy Brown": @"#684A43",
    @"Galaxy Green": @"#3B665E",
    @"Galaxy Nebulae": @"#424379",
    @"Galaxy Purple": @"#594177",

    // --- Wood Series ---
    @"Wood Black Walnut": @"#4F3F24",
    @"Wood Rosewood": @"#4C241C",
    @"Wood Clay Brown": @"#995F11",
    @"Wood Classic Birch": @"#918669",
    @"Wood White Oak": @"#D6CCA3",
    @"Wood Ochre Yellow": @"#C98935",

    // --- Basic Colors ---
    @"Basic White": @"#FFFFFF",
    @"Basic Black": @"#000000",
    @"Basic Red": @"#FF0000",
    @"Basic Yellow": @"#FFFF00",
    @"Basic Blue": @"#0000FF",
    @"Basic Green": @"#00FF00",
    @"Basic Orange": @"#FFA500",
    @"Basic Purple": @"#800080",
    @"Basic Gray": @"#808080",

    // --- Gradient Basics (placeholder hex values) ---
    @"Gradient Blue": @"#A0C4FF",
    @"Gradient Green": @"#9BF6FF",
    @"Gradient Yellow": @"#FDFFB6",
    @"Gradient Orange": @"#FFADAD",
    @"Gradient Purple": @"#BDB2FF"
};

        [colors enumerateKeysAndObjectsUsingBlock:^(NSString *name, NSString *hex, BOOL *stop) {
            [list setColor:colorFromHex(hex) forKey:name];
        }];

        [list writeToFile:nil]; // Deprecated but still works as of macOS Sonoma
        NSLog(@"✅ Saved 'Bambu Lab PLA Colors' with wood series to ~/Library/Colors");
    }
    return 0;
}
