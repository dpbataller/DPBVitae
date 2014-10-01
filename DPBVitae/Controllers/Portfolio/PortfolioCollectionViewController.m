//
//  PortfolioCollectionViewController.m
//  DPBVitae
//
//  Created by David Pedrosa on 08/07/14.
//  Copyright (c) 2014 David Pedrosa Bataller. All rights reserved.
//

#import "PortfolioCollectionViewController.h"
#import "PortfolioCollectionCell.h"
#import "PortfolioHeaderView.h"
#import "PortfolioHeaderViewLabel.h"
#import "PortfolioDetailViewController.h"

static NSString *CellIdentifier = @"PortfolioCollectionCell";

@interface PortfolioCollectionViewController ()
@property (nonatomic, strong) NSArray *mobilePortfolioModels;
@property (nonatomic, strong) NSArray *webPortfolioModels;
@end

@implementation PortfolioCollectionViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self configureCollectionView];
}


- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
    NSDictionary *textAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                    [UIColor whiteColor],NSForegroundColorAttributeName,
                                    [UIColor whiteColor],NSBackgroundColorAttributeName,
                                    [UIFont fontWithName:@"Montserrat-Regular" size:16.0], NSFontAttributeName,nil];
    
    self.navigationController.topViewController.title = @"Portfolio Personal";
    self.navigationController.navigationBar.barTintColor = [DPBUtils colorWithHexString:@"34495e" alpha:1.0];
    self.navigationController.navigationBar.titleTextAttributes = textAttributes;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Data Source Methods

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (section == 0) {
        return self.mobilePortfolioModels.count;
    }else {
        return self.webPortfolioModels.count;
    }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{

    PortfolioCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PortfolioCollectionCell" forIndexPath:indexPath];
    
    PortfolioModel *model = [self getModelFromArrayAtSection:indexPath];
    
    cell.appImage.image     = [UIImage imageNamed:model.icon];
    cell.appNameLabel.text  = model.name;
    
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    if (kind == UICollectionElementKindSectionHeader) {
        
        PortfolioHeaderView *reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        
        if (reusableview==nil) {
            reusableview=[[PortfolioHeaderView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        }
        
        PortfolioHeaderViewLabel *label = [[PortfolioHeaderViewLabel alloc] initWithFrame:CGRectMake(10, 0, 150, 44)];
        
        label.text = [self getTextLabelAtSection:indexPath];

        [reusableview addSubview:label];
        
        return reusableview;
    }
    
    return nil;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"detailPortfolioSegue" sender:[self getModelFromArrayAtSection:indexPath]];
}

#pragma mark - TableView Navigation Delegates

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"detailPortfolioSegue"]) {
        
        PortfolioModel *model = (PortfolioModel *)sender;
        
        PortfolioDetailViewController *detail = segue.destinationViewController;
        
        // Navigation Title
        detail.title = model.name;
        
        // Detail App name
        detail.nameString           = model.name;
        detail.descriptionString    = model.projectDescription;
        detail.versiontring         = [NSString stringWithFormat:@"v%@",model.version];
        detail.languageString       = [NSString stringWithFormat:@"Lenguaje: %@ \nBackend: %@",model.language,model.backend];
        detail.downloadsString      = [NSString stringWithFormat:@"%@ descargas / visitas",model.downloads];
        detail.statusString         = model.isActive ? @"Publicada" : @"Despublicada";
        detail.platformString       = model.platform ? @"multiplatform" : @"webpage";
    }
}

#pragma mark - Custom Methods

- (void)configureCollectionView {
    [[APIManager sharedAPIManager] getPortfolioWithcompletionHandler:^(NSDictionary *portfolio, NSError *error) {
        self.mobilePortfolioModels  = portfolio[@"mobile"];
        self.webPortfolioModels     = portfolio[@"web"];
    }];
}

- (PortfolioModel *)getModelFromArrayAtSection:(NSIndexPath *)indexPath {
    PortfolioModel *model;
    if (indexPath.section == 0) {
        model = self.mobilePortfolioModels[indexPath.row];
    }else {
        model = self.webPortfolioModels[indexPath.row];
    }
    
    return model;
}

- (NSString *)getTextLabelAtSection:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        return @"Desarrollo Móvil";
    }else {
        return @"Desarrollo Web";
    }
    return nil;
}

@end
