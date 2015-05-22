//
//  ViewController.m
//  ParseTest
//
//  Created by Ethan Hess on 5/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "Entry.h"
@import ParseUI;

@interface ViewController () <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;


@property (nonatomic, strong) PFUser *currentUser;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (IBAction)storeObject:(id)sender {
    
    Entry *entry = [Entry object];
    entry.name = self.textField.text;
    
    NSError *error = nil;
    [entry pin];
    [entry saveInBackground];
    
    
    if (error) {
        
        NSLog(@"%@", error.localizedDescription);
    }
    
}

- (IBAction)showObject:(id)sender {
    
    PFQuery *query = [Entry query];
    
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        
        if (error) {
            // The find succeeded.
            NSLog(@"%@", error.localizedDescription);

    }
        
        else {
                
                Entry *object = objects.lastObject;
                self.label.text = object.name;
    
        }}];
    
    

    
}

- (IBAction)signUp:(id)sender {
    
    PFSignUpViewController *signUpView = [PFSignUpViewController new];
    signUpView.delegate = self;
    [self presentViewController:signUpView animated:YES completion:nil]; 
    
}

- (IBAction)signIn:(id)sender {
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
