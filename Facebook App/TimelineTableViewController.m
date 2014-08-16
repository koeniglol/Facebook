//
//  TimelineTableViewController.m
//  Facebook App
//
//  Created by CCDM19 on 16/08/14.
//  Copyright (c) 2014 N. All rights reserved.
//

#import "TimelineTableViewController.h"

@interface TimelineTableViewController ()

@end

@implementation TimelineTableViewController
{
    NSMutableArray *publicaciones;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    publicaciones = [[NSMutableArray alloc] init];
    
    /*
     Mensaje:
     Autor:
     */
    
    NSMutableDictionary *publicacion = [[NSMutableDictionary alloc] init];
    
    [publicacion setValue:@"Hey!" forKey:@"mensaje"];
    [publicacion setValue:@"El DEFORMA" forKey:@"autor"];
    
    
    [publicaciones addObject:publicacion];
    
    //Mismo nombre de variable pero diferente dirección de memoria
    publicacion = [[NSMutableDictionary alloc] init];
    
    [publicacion setValue:@":Nom nom:" forKey:@"mensaje"];
    [publicacion setValue:@"Necromicon" forKey:@"autor"];
    
    
    [publicaciones addObject:publicacion];
    
    NSLog(@"%@", publicaciones);
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0)
    {
        return  [publicaciones count];
    }
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"timelineCell" forIndexPath:indexPath];
    
    NSMutableDictionary *obj = [publicaciones objectAtIndex:indexPath.row];
    
  
    
    cell.textLabel.text = [obj objectForKey:@"mensaje"];
    cell.detailTextLabel.text = [obj objectForKey:@"autor"];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 69;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
