//
//  ViewController.m
//  CriandoControle
//
//  Created by Rafael Brigagão Paulino on 01/10/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NovoControle *ncCheckBox;
}

-(void)cliqueNoCheckBox;

@end

@implementation ViewController
@synthesize meuCheck;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ncCheckBox = [[NovoControle alloc] initWithFrame:CGRectMake(50, 50, 50, 50)];
    
    [ncCheckBox addTarget:self action:@selector(cliqueNoCheckBox) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:ncCheckBox];
}

- (void)viewDidUnload
{
    [self setMeuCheck:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}


-(void)cliqueNoCheckBox
{
    NSLog(@"Clicaram no checkbox");
}

- (IBAction)mudouValorCheck:(NovoControle *)sender
{
    if (sender.isChecked == YES)
    {
        NSLog(@" teste: sim");
    }
    else
    {
        NSLog(@" teste: não");
    }
    
}
@end
