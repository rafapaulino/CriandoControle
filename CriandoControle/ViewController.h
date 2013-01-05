//
//  ViewController.h
//  CriandoControle
//
//  Created by Rafael Brigagão Paulino on 01/10/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NovoControle.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet NovoControle *meuCheck;
- (IBAction)mudouValorCheck:(NovoControle *)sender;

@end
