//
//  DetallesPublicacionTableViewController.h
//  Facebook App
//
//  Created by CCDM19 on 16/08/14.
//  Copyright (c) 2014 N. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetallesPublicacionTableViewController : UITableViewController

@property(weak, nonatomic)IBOutlet UILabel *lblAutor;
@property(weak, nonatomic)IBOutlet UITextView *textMensaje;

-(IBAction)cerrar:(UIBarButtonItem *)Sender;

@end
