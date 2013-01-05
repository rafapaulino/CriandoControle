//
//  NovoControle.h
//  CriandoControle
//
//  Created by Rafael Brigagão Paulino on 01/10/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import <UIKit/UIKit.h>

//todas classes que herdam do UIControl podem gerar eventos padroes, como, touch uo inside, touch down, entre outros...

@interface NovoControle : UIControl
{
    UIImageView *imagemCheck;
}

@property (nonatomic)BOOL isChecked;

@end
