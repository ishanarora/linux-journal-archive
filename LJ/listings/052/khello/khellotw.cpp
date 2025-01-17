#include <qkeycode.h>

#include <kmsgbox.h>
#include <kstdaccel.h>

#include "khellotw.moc"

KHelloTW::KHelloTW (void)
{

  /**
    We'll get the statdard KDE accelerator key combinations from this.
    */

  KStdAccel *kkeys=new KStdAccel (kapp->getConfig());

  /**
    Create the pulldown menus for the menubar.
    */
  file = new QPopupMenu ();
  file->insertItem ("&Quit", this, SLOT (slotQuit()), kkeys->quit());

  /**
   * The method for fetching the built-in help menu has changed since
   *  the article was written.
   * The original lines were:
   *    help=kapp->getHelpMenu(TRUE);
   *    help->insertSeparator();
   *    help->insertItem ("&About KHello...", this, SLOT (slotAbout()));
   * The new line is below.
   **/
  help=kapp->getHelpMenu(TRUE,
	 "KHello\nCopyright (C) 1997\nBy David Sweet\ndsweet@chaos.umd.edu");


  /**
    Set up the menubar.
    */
  menubar = new KMenuBar (this);
  menubar->insertItem ("File",file);
  menubar->insertSeparator ();        //This pushes the Help menu to
                                      //the far right when KDE is in
                                      //Motif widget mode
  menubar->insertItem ("Help",help);

  /**
    Set up the toolbar.
    */
  toolbar = new KToolBar(this);
  QString buttonpicture;

  /**
    The method for accessing the toolbar directory has changed
     since the writing of the article.
    The original line was
       buttonpicture = kapp->kdedir()+"/share/toolbar/exclamation.xpm";
    The new line is below.
  **/
  buttonpicture = kapp->kde_toolbardir()+"/exclamation.xpm";
  toolbar->insertButton (QPixmap (buttonpicture.data()),0,
			 SIGNAL (released()),
			 this, SLOT (slotHello()),TRUE,
			 "Press this to say hello");

  /**
    This label will fill the rest of our window (the part not
    occupied by the menubar or toolbar).
    */
  label=new QLabel (this);
  label->setFont (QFont ("Helvetica",24));
  label->setAlignment (AlignCenter);

  /**
    Tell KTopWidget about our menubar, toolbar, and 
    label.
    */

  setMenu (menubar);
  addToolBar (toolbar);
  setView (label);

  /** 
    Drag and Drop.  URL's can be dragged from KFM and dropped onto
    our QLabel.  The URL will be displayed.
    */
  dropzone = new KDNDDropZone (label, DndURL);
  connect (dropzone, SIGNAL (dropAction(KDNDDropZone *)),
	   this, SLOT (slotDropped (KDNDDropZone *)));
}

void KHelloTW::slotQuit()
{
  close();
}

/**
 *  This method is no longer needed. 
void KHelloTW::slotAbout()
{
  KMsgBox::message (this, "About KHello", 
		    "KHello\nCopyright (C) 1997\nBy David Sweet\n\
dsweet@physics.umd.edu");
}

*/

void KHelloTW::slotHello()
{
  label->setText ("Hello world!\n");
}

void KHelloTW::slotDropped(KDNDDropZone *dz)
{
  QString url;

  url = dz->getURLList().first();

  label->setText (url.data());
}



void KHelloTW::closeEvent (QCloseEvent *)
{
  kapp->quit();
}

