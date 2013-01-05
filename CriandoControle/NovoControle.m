//
//  NovoControle.m
//  CriandoControle
//
//  Created by Rafael Brigagão Paulino on 01/10/12.
//  Copyright (c) 2012 rafapaulino.com. All rights reserved.
//

#import "NovoControle.h"

@implementation NovoControle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    //criando o imageView dotamanho do checkbox que o programador criar
    imagemCheck = [[UIImageView alloc] initWithFrame:rect];
    _isChecked = NO;
    imagemCheck.backgroundColor = [UIColor whiteColor];
    imagemCheck.image = [UIImage imageNamed:@"checkbox_nao"];
    
    [self addSubview:imagemCheck];
}

//metodo acionado quando a propriedade isChecked é setada
-(void)setIsChecked:(BOOL)isChecked
{
   //trocar o valor da propriedade e mudar a imagem do controle
    if (isChecked == YES)
    {
        imagemCheck.image = [UIImage imageNamed:@"checkbox_sim"];
    }
    else
    {
        imagemCheck.image = [UIImage imageNamed:@"checkbox_nao"];
    }
    
    _isChecked = isChecked;
    
    //lancar o valueChanged
    [self sendActionsForControlEvents:UIControlEventValueChanged];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    //estamos no nivel maislato da classe, onde nao e preciso chamar o touchesEnded da classe pai, caso se chame, ele irá executar esse método implementado dentro da nossa classe
    //[super touchesEnded:touches withEvent:event];
    
    //no momento em que o usuario clicar no checkbox, vamos inverter o valor da propriedade isChecked
    self.isChecked = !self.isChecked;
    
    //lancar o evento touch up inside
    [self sendActionsForControlEvents:UIControlEventTouchUpInside];
}


@end
