//
//  ConverterViewController.m
//  temperatureConverter
//
//  Created by Sairam Sankaran on 10/8/13.
//  Copyright (c) 2013 Sairam Sankaran. All rights reserved.
//

#import "ConverterViewController.h"
#import "math.h"

@interface ConverterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *tempInCelsiusLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempInFahrenheitLabel;
@property (weak, nonatomic) IBOutlet UILabel *tempInKelvinLabel;
- (IBAction)onSlideUp:(id)sender;
- (IBAction)onSlideDown:(id)sender;

@end

@implementation ConverterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Temperature Converter";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //NSLog(@"%@",self.tempInCelsiusLabel.text);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSlideUp:(id)sender {
    int currentTempInCelsius = [self.tempInCelsiusLabel.text intValue];
    int currentTempInFahrenheit, currentTempInKelvin;
    currentTempInCelsius = currentTempInCelsius + 1;
    currentTempInFahrenheit = (int)roundf(currentTempInCelsius*9/5) + 32;
    currentTempInKelvin = currentTempInCelsius + 273;
    
    [self.tempInCelsiusLabel setText:[NSString stringWithFormat:@"%d", currentTempInCelsius]];
    [self.tempInFahrenheitLabel setText:[NSString stringWithFormat:@"%d", currentTempInFahrenheit]];
    [self.tempInKelvinLabel setText:[NSString stringWithFormat:@"%d", currentTempInKelvin]];
}

- (IBAction)onSlideDown:(id)sender {
    int currentTempInCelsius = [self.tempInCelsiusLabel.text intValue];
    int currentTempInFahrenheit, currentTempInKelvin;
    currentTempInCelsius = currentTempInCelsius - 1;
    currentTempInFahrenheit = (int)roundf(currentTempInCelsius*9/5) + 32;
    currentTempInKelvin = currentTempInCelsius + 273;
    
    [self.tempInCelsiusLabel setText:[NSString stringWithFormat:@"%d", currentTempInCelsius]];
    [self.tempInFahrenheitLabel setText:[NSString stringWithFormat:@"%d", currentTempInFahrenheit]];
    [self.tempInKelvinLabel setText:[NSString stringWithFormat:@"%d", currentTempInKelvin]];

}
@end
