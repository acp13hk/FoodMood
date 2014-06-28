//
//  RootViewController.m
//  ALAssetsLibraryCustomPhotoAlbum_BasicDemo
//
//  Created by Kjuly on 1/7/13.
//  Copyright (c) 2013 Kjuly. All rights reserved.
//

#import "RootViewController.h"

#import "CameraViewController.h"

@interface RootViewController () {
 @private
  UINavigationController * navigationController_;
}

@property (nonatomic, strong) NSMutableArray *viewControllerArray;
@property (nonatomic, strong) UINavigationController * navigationController;

@end


@implementation RootViewController

@synthesize navigationController = navigationController_;


- (id)init
{
  return (self = [super init]);
}

- (void)viewDidLoad
{
    //self.dataSource = self;
  [super viewDidLoad];
	// Do any additional setup after loading the view.
  
  // Photos table view controller
    CameraViewController * cameraViewController;
     cameraViewController = [CameraViewController alloc];
    (void)[cameraViewController init];

    navigationController_ = [UINavigationController alloc];
 (void)[navigationController_ initWithRootViewController:cameraViewController];
[navigationController_.view setFrame:(CGRect){CGPointZero, {kKYViewWidth, kKYViewHeight}}];
[self.view addSubview:navigationController_.view];

  }

//- (void) awakeFromNib
//{
//    CameraViewController * cameraViewController;
//    cameraViewController = [CameraViewController alloc];
//    (void)[cameraViewController init];
//    
////  // Main navigation controller
////   navigationController_ = [UINavigationController alloc];
////    (void)[navigationController_ initWithRootViewController:cameraViewController];
////    [navigationController_.view setFrame:(CGRect){CGPointZero, {kKYViewWidth, kKYViewHeight}}];
////    [self.view addSubview:navigationController_.view];
//
////    NSUInteger numberOfPages = 3;
////    self.viewControllerArray = [[NSMutableArray alloc] initWithCapacity: numberOfPages];
////    for (NSUInteger k = 0; k<numberOfPages; ++k)
////    {
////        [self.viewControllerArray addObject:[NSNull null]];
////    }
////  
////    
////    [self.viewControllerArray replaceObjectAtIndex: 0 withObject: [self.storyboard instantiateViewControllerWithIdentifier:@"Top1"]];
////    [self.viewControllerArray replaceObjectAtIndex: 1 withObject: [self.storyboard instantiateViewControllerWithIdentifier:@"Top2"]];
////    [self.viewControllerArray replaceObjectAtIndex: 2 withObject: [self.storyboard instantiateViewControllerWithIdentifier:@"Top3"]];
//
//}
//
//- (NSUInteger) numberOfViewControllerInDDScrollView:(DDScrollViewController *)DDScrollView
//{
//    return [self.viewControllerArray count];
//}
//
//- (UIViewController *) ddScrollView:(DDScrollViewController *)ddScrollView contentViewControllerAtIndex:(NSUInteger)index
//{
//    return [self.viewControllerArray objectAtIndex:index];
//}
//
//- (void)didReceiveMemoryWarning
//{
//  [super didReceiveMemoryWarning];
//  // Dispose of any resources that can be recreated.
//}

@end
