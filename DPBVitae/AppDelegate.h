//
//  AppDelegate.h
//  DPBVitae
//
//  Created by David Pedrosa on 26/06/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 *  Muestra las fuentas instaladas en el sistema
 */
- (void)showFonts;

/**
 *  Cambia el estilo del TabbarController añadiendo los títulos y los iconons seleccionados
 */
- (void)customizeTabbar;

@end
