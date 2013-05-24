//
//  ArtistiViewController.m
//  PrototipoClassico
//
//  Created by Valentina on 11/05/13.
//  Copyright (c) 2013 Valentina. All rights reserved.
//

#import "ArtistiViewController.h"
#import "DettaglioArtistaViewController.h"

@interface ArtistiViewController ()

@end

@implementation ArtistiViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}
/*
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    return self.keys;
}
*/
//- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
//    return index;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 40;
//}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 30;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
   
        NSLog(@"viewDidLoad del ArtistiViewController");
//        
        @try {
            NSString *filePath = [[NSBundle mainBundle] pathForResource:@"artisti" ofType:@"plist"];
            if (filePath) {
//              //  self.lista= [NSArray arrayWithContentsOfFile:filePath]; oppure
                self.lista= [[NSArray alloc]initWithContentsOfFile:filePath];
                    // NSLog(@"First Index Name %@",[[ self.lista objectAtIndex:0] objectForKey:@"Nome"]);
//                
           }
//            
        }
        @catch (NSException * e) {
                //http://www.devapp.it/wordpress/uialertview-guida-completa-all-uso.html
            UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"ERRORE" message:@"Errore in apertura del file artisti.plist" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [alertView show];
            [alertView release];
            NSLog(@"Errore in apertura del file artisti.plist");
        }
        //CODICE ORIGINALE
    
//    NSMutableArray *tmp = [[NSMutableArray alloc] initWithObjects:@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",nil];
//    self.keys = tmp;
//    [tmp release];
//    
//    NSMutableDictionary *dict = [[NSMutableDictionary alloc]init];
//    [dict setObject:[NSMutableArray arrayWithObjects:@"Aristide",@"Amalia",@"Antonio",@"Anna", nil] forKey:@"A"];
//    [dict setObject:[NSMutableArray arrayWithObjects:@"Bibo", nil] forKey:@"B"];
//    [dict setObject:[NSMutableArray arrayWithObjects:@"Carlo",@"Carlantonio",@"Carmen", nil] forKey:@"C"];
//    [dict setObject:[NSMutableArray arrayWithObjects:@"Dio Ronnie James",@"Democrate",@"Demostene",@"Diocleziano", nil] forKey:@"D"];
//    
//    self.data = dict;
//    [dict release];
    
    [self.tableView reloadData];
    
   
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    //  return self.keys.count;
        return 1;
}
/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)i{
        //  return [self.keys objectAtIndex:i];
    
}
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
//    NSString *key = [self.keys objectAtIndex:section];
//    NSMutableArray *pippo = (NSMutableArray*)[self.data objectForKey:key];
//    return pippo.count;
 return self.lista.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    NSString *key = [self.keys objectAtIndex:indexPath.section];
//    NSMutableArray *pippo = (NSMutableArray*)[self.data objectForKey:key];
//    
//NSString *selected = [pippo objectAtIndex:indexPath.row];
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
////
////    // Configure the cell...
//    cell.textLabel.text =selected;
//    return cell;
    
        // Configure the cell...
        //ricorda che stringWithFormat fa autorelease!
//    NSString *temp=[NSString stringWithFormat:@"%@ %@",[[self.lista objectAtIndex:indexPath.row] objectForKey:@"Nome"],[[self.lista objectAtIndex:indexPath.row] objectForKey:@"Cognome"] ];
//    cell.textLabel.text =temp;
    cell.textLabel.text= [StringUtilities concat:[[self.lista objectAtIndex:indexPath.row] objectForKey:@"Nome"] withString:[[self.lista objectAtIndex:indexPath.row] objectForKey:@"Cognome"]];
    
        //  [[self.lista objectAtIndex:indexPath.row] objectForKey:@"Nome"];
    return cell;
        //[[self.lista objectAtIndex:indexPath.row] objectForKey:@"Nome"];
        // Create formatter vedi qua http://iosdevelopertips.com/cocoa/formatting-numbers-nsnumberformatter-examples.html
//	NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
//	[formatter setNumberStyle:NSNumberFormatterDecimalStyle];
//	NSString *formattedOutput = [formatter stringFromNumber:[[self.lista objectAtIndex:indexPath.row] objectForKey:@"qta"]];
//        //NSLog(@"TESTO detail: %@", formattedOutput);
//    
//	cell.detailTextLabel.text=[NSString stringWithFormat:@"%@ %@", formattedOutput, @"mg/kg"];
//        //originale
//        //cell.imageView.image=[UIImage imageNamed:@"Liquid_37.png"];
//	
//	NSString *img=[[self.lista objectAtIndex:indexPath.row] objectForKey:@"image"];
//        //NSLog(@"Nome img %@",img);
//	UIImage *myImg=[UIImage imageNamed:img];
//	cell.imageView.image=myImg;
//cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        //imposto lo sfondo a verde, ma le immagini e il testo restano bianco come sfondo
        //cell.contentView.backgroundColor = [ UIColor greenColor ];
        //[formatter release];
//	[myImg release];
//	[img release];

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
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
    
    DettaglioArtistaViewController *detail= [[DettaglioArtistaViewController alloc] initWithNibName:@"DettaglioArtistaViewController" bundle:nil];

    [self.navigationController pushViewController:detail animated:YES];
    [detail release];

}
-(IBAction) goHome:(id)sender{
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

@end
