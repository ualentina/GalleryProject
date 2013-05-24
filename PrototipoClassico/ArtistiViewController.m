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

    //parsing del file xml artisti.xml aggiunto il 24/05/2012
-(BOOL)startParsing{
    
    BOOL esito=NO;
    NSXMLParser *parser;
    @try{
            //individuo il file xml o altra sorgente dati
        NSString *xmlPath=[[NSBundle mainBundle] pathForResource:FILE_ARTISTI ofType:@"xml"];
            //questo va bene solo se ho salvato il file con write to file atomically
            // self.lista= [[NSArray alloc]initWithContentsOfFile:xmlPath];
            //creo un oggetto URL per passarlo al parser
            //  siccome uso un file locale, devi utilizzare questo metodo
            //fileURLWithPath:isDirectory:
        NSURL *xmlURL= [ NSURL fileURLWithPath:xmlPath isDirectory:NO];

       
        //if xmlURL is not null cioè se xmlURL è diverso da nil
        if (xmlURL){
                 //creo oggetto NSXMLParser e lo inizializzo con i contenuti della URL
                parser=[[NSXMLParser alloc] initWithContentsOfURL:xmlURL];
                
                    //imposto il delegato del parser e lo setto
                [parser setDelegate:self];
                [parser setShouldProcessNamespaces:NO];
                [parser setShouldReportNamespacePrefixes:NO];
                [parser setShouldResolveExternalEntities:NO];
                    //inizio a parsare: INIZIA SUBITO A GESTIRE EVENTI!!
                esito = [parser parse];
                  if(esito == YES){
                        NSLog(@"PARSING OK");
                    } else {
                        NSLog(@"ERROR PARSING");
                    }
            
        }
    } @catch (NSException * e)  {
         NSLog(@"Exception: %@", e);
        
    } @finally {
        NSLog(@"finally");
        [parser release];
    }
    return esito;
}
-(BOOL) caricaFileXML
{
     BOOL esito=NO;
               @try {
                    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"artisti" ofType:@"plist"];
                    if (filePath) {
        ////              //  self.lista= [NSArray arrayWithContentsOfFile:filePath]; oppure
                        self.lista= [[NSArray alloc]initWithContentsOfFile:filePath];
                        esito=true;
                           // NSLog(@"First Index Name %@",[[ self.lista objectAtIndex:0] objectForKey:@"Nome"]);
        ////
                 }
        ////
               } @catch (NSException * e) {
        //                //http://www.devapp.it/wordpress/uialertview-guida-completa-all-uso.html
                  
                }
return esito;

}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qualifiedName
	attributes:(NSDictionary *)attributeDict {
	
   static int contatore=0;
	if ([elementName isEqualToString:@"artisti"]){
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nInizio studenti",textArea.text]];
		NSLog(@"inizio artisti");
	}
	else if([elementName isEqualToString:@"artista"]){
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNuovo studente",textArea.text]];
        NSLog(@"trovato artista");
        contatore++;
	}
	else if([elementName isEqualToString:@"nome"]) {
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nMatricola: ",textArea.text]];
        NSLog(@"artista ha nome");
	}
	else if([elementName isEqualToString:@"cognome"]) {
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nCognome: ",textArea.text]];
         NSLog(@"artista ha cognome");
	}
	else if([elementName isEqualToString:@"immagine"]) {
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNome: ",textArea.text]];
         NSLog(@"artista ha immagine");
    } else if([elementName isEqualToString:@"data_nascita"]) {
                //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNome: ",textArea.text]];
            NSLog(@"artista ha data_nascita");
	} else if([elementName isEqualToString:@"data_morte"]) {
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNome: ",textArea.text]];
        NSLog(@"artista ha data_morte");
	} else if([elementName isEqualToString:@"bio"]) {
            //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNome: ",textArea.text]];
        NSLog(@"artista ha bio");
	
    } else if([elementName isEqualToString:@"opere"]) {
        //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nNome: ",textArea.text]];
    NSLog(@"artista ha opere");
    }

}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
        //[textArea setText:[[NSString alloc] initWithFormat:@"%@%@",textArea.text,string]];
    NSLog(@"stringa corrente %@", string);
}


- (void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
        //[textArea setText:[[NSString alloc] initWithFormat:@"%@\nFine elemento: %@",textArea.text,elementName]];
     NSLog(@"fine elemento %@", elementName);
    
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
    BOOL esito=[self startParsing];
    if  ( (esito==NO) && ([self caricaFileXML]== NO) )
    {
        UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"ERRORE" message:@"Errore in apertura della fonte dati artisti" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
            [alertView show];
            [alertView release];
          
    }
    
     [self.tableView reloadData];
//        
//        @try {
//            NSString *filePath = [[NSBundle mainBundle] pathForResource:@"artisti" ofType:@"plist"];
//            if (filePath) {
////              //  self.lista= [NSArray arrayWithContentsOfFile:filePath]; oppure
//                self.lista= [[NSArray alloc]initWithContentsOfFile:filePath];
//                    // NSLog(@"First Index Name %@",[[ self.lista objectAtIndex:0] objectForKey:@"Nome"]);
////                
//           }
////            
//        }
//        @catch (NSException * e) {
//                //http://www.devapp.it/wordpress/uialertview-guida-completa-all-uso.html
//            UIAlertView * alertView = [[UIAlertView alloc] initWithTitle:@"ERRORE" message:@"Errore in apertura del file artisti.plist" delegate:nil cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
//            [alertView show];
//            [alertView release];
//            NSLog(@"Errore in apertura del file artisti.plist");
//        }
// 
//    
   
    
   
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
    cell.textLabel.text= [StringUtilities concat:[[self.lista objectAtIndex:indexPath.row] objectForKey:@"nome"] withString:[[self.lista objectAtIndex:indexPath.row] objectForKey:@"cognome"]];
    
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
