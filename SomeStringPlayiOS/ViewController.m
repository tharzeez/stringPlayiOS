//
//  ViewController.m
//  SomeStringPlayiOS
//
//  Created by Tharzeez on 7/21/17.
//  Copyright © 2017 tharzeez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)anagramAction:(id)sender {
    NSMutableString *text1=[[NSMutableString alloc]initWithString:self.textField1.text];
    NSMutableString *text2=[[NSMutableString alloc]initWithString:self.textField2.text];
    NSString *dot=@".";
    NSRange t1range;
    NSRange t2range;
    
    
    
    
 //   NSLog(@"%@",check);
    for(NSInteger i =0;i<[text1 length];i++){
        for(NSInteger j=0;j<[text2 length];j++){
            if([[NSString stringWithFormat:@"%C",[text1 characterAtIndex:i]]  caseInsensitiveCompare:[NSString stringWithFormat:@"%C",[text2 characterAtIndex:j]]] ==NSOrderedSame ){

                
                t1range=NSMakeRange(i, 1);
                t2range=NSMakeRange(j, 1);
                
                [text1 replaceCharactersInRange:t1range withString:@"."];
                [text2 replaceCharactersInRange:t2range withString:@"."];
                
                break;
        }
        
    }

        
    }
    
    if( [text1 caseInsensitiveCompare:text2] ==NSOrderedSame && [text1 isEqualToString:text2]  ){
        NSLog(@"Anagram");
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"The strings are anagram" message:@"Click to continue" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
            self.textField1.text=@"";
            self.textField2.text=@"";
        }];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
        
        
        
    }else{
        NSLog(@"%@___%@",text1,text2);
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"The strings are Not in Anagram" message:@"Click to continue" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction * action) {
            self.textField1.text=@"";
            self.textField2.text=@"";
        }];
        
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
        
        
        NSLog(@"not anagram");
    }
    
    text1=nil;
    text2=nil;
    
 }


- (IBAction)revString:(id)sender {

    NSString *str=self.textField1.text;
    NSInteger count=[str length];
    
    NSMutableString *revString= [[NSMutableString alloc]init];
    NSRange newrange=NSMakeRange(count, 1);
    while(count>0){
        newrange=NSMakeRange(count-1, 1);
        [revString appendString :[str substringWithRange:newrange]];
        count--;
    }
    NSLog(@"%@",revString);
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"the reverse string is" message:revString preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok =[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *  action) {
            self.textField1.text=@"";
            self.textField2.text=@"";
    }];
    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
    


}

- (IBAction)emailValidation:(id)sender {
    
    NSString *pattern =[]
    
    NSRegularExpression *expresion=[NSRegularExpression regularExpressionWithPattern:pattern options:NSRegularExpressionCaseInsensitive error:nil];
    
    
}


@end
