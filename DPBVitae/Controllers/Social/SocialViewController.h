//
//  SocialViewController.h
//  DPBVitae
//
//  Created by David Pedrosa on 09/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import <UIKit/UIKit.h>

// ----------------------------------------------------------------------------
//
//  SocialViewController
//
@interface SocialViewController : UIViewController

// UILabel que contiene la descripción del Controlador
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;

// UILabel que indica la sección de Github
@property (weak, nonatomic) IBOutlet UILabel *githubLabel;

// UILabel que indica la sección de Linkedin
@property (weak, nonatomic) IBOutlet UILabel *linkedinLabel;

// UIButton correspondiente al botón de Github
@property (weak, nonatomic) IBOutlet UIButton *githubButton;

// UIButton correspondiente al botón de Linkedin
@property (weak, nonatomic) IBOutlet UIButton *linkedinButton;


- (void)configureView;

/**
 *  Determina que botón ha sido pulsado y dirige a su correspondiente página web en Github o Linkedin
 *
 *  @param sender UIButton Será usado para determinar cuál de los dos botones ha lanzado el evento click.
 */
- (IBAction)visitSocialProfile:(id)sender;


@end
