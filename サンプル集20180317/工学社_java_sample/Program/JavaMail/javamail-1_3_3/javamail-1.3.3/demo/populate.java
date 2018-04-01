/*
 * @(#)populate.java	1.11 05/04/24
 *
 * Copyright 1997-2005 Sun Microsystems, Inc. All Rights Reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 
 * - Redistributions of source code must retain the above copyright
 *   notice, this list of conditions and the following disclaimer.
 * 
 * - Redistribution in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 * 
 * Neither the name of Sun Microsystems, Inc. or the names of contributors
 * may be used to endorse or promote products derived from this software
 * without specific prior written permission.
 * 
 * This software is provided "AS IS," without a warranty of any kind. ALL
 * EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES,
 * INCLUDING ANY IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A
 * PARTICULAR PURPOSE OR NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND
 * ITS LICENSORS SHALL NOT BE LIABLE FOR ANY DAMAGES OR LIABILITIES
 * SUFFERED BY LICENSEE AS A RESULT OF  OR RELATING TO USE, MODIFICATION
 * OR DISTRIBUTION OF THE SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL
 * SUN OR ITS LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR
 * FOR DIRECT, INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE
 * DAMAGES, HOWEVER CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY,
 * ARISING OUT OF THE USE OF OR INABILITY TO USE SOFTWARE, EVEN IF SUN HAS
 * BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.
 * 
 * You acknowledge that Software is not designed, licensed or intended
 * for use in the design, construction, operation or maintenance of any
 * nuclear facility.
 */

import javax.mail.*;
import javax.mail.internet.*;

/*
 * Copy folder hierarchies between different Stores. This is a useful 
 * utility to populate new (and possibly empty) mail stores. Specify
 * both the source and destination folders as URLs.
 *	
 * @author John Mani
 * @author Bill Shannon
 */

public class populate {

    static boolean force = false;
    static boolean skipSpecial = false;
    static boolean clear = false;

    public static void main(String argv[]) {
    	String srcURL = null;
    	String dstURL = null;
	boolean debug = false;

	int optind;

	for (optind = 0; optind < argv.length; optind++) {
	    if (argv[optind].equals("-s")) {
		srcURL = argv[++optind];
	    } else if (argv[optind].equals("-d")) {
		dstURL = argv[++optind];
	    } else if (argv[optind].equals("-D")) {
		debug = true;
	    } else if (argv[optind].equals("-f")) {
		force = true;
	    } else if (argv[optind].equals("-S")) {
		skipSpecial = true;
	    } else if (argv[optind].equals("-c")) {
		clear = true;
	    } else if (argv[optind].equals("--")) {
		optind++;
		break;
	    } else if (argv[optind].startsWith("-")) {
		printUsage();
		System.exit(1);
	    } else {
		break;
	    }
	}

	try {

	    if (srcURL == null || dstURL == null) {
		printUsage();
		System.exit(1);
	    }

	    Session session = Session.getInstance(
				System.getProperties(), null);
	    session.setDebug(debug);

	    // Get source folder
	    URLName srcURLName = new URLName(srcURL);
	    Folder srcFolder;
	    // Check if the source URL has a folder specified. If
	    // not, we use the default folder
	    if (srcURLName.getFile() == null) {
		Store s = session.getStore(srcURLName);
		s.connect();
		srcFolder = s.getDefaultFolder();
	    } else {
		srcFolder = session.getFolder(new URLName(srcURL));
		if (!srcFolder.exists()) {
		    System.out.println("source folder does not exist");
		    srcFolder.getStore().close();
		    System.exit(1);
		}
	    }

	    // Set up destination folder
	    URLName dstURLName = new URLName(dstURL);
	    Folder dstFolder;
	    // Check if the destination URL has a folder specified. If
	    // not, we use the source folder name
	    if (dstURLName.getFile() == null) {
		Store s = session.getStore(dstURLName);
		s.connect();
		dstFolder = s.getFolder(srcFolder.getName());
	    } else
		dstFolder = session.getFolder(dstURLName);

	    if (clear && dstFolder.exists()) {
		if (!dstFolder.delete(true)) {
		    System.out.println("couldn't delete " +
						dstFolder.getFullName());
		    return;
		}
	    }
	    copy(srcFolder, dstFolder);

	    // Close the respective stores.
	    srcFolder.getStore().close();
	    dstFolder.getStore().close();

	} catch (MessagingException mex) {
	    System.out.println(mex.getMessage());
	    mex.printStackTrace();
	}
    }

    private static void copy(Folder src, Folder dst)
		throws MessagingException {
	System.out.println("Populating " + dst.getFullName());

	Folder ddst = dst;
	Folder[] srcFolders = null;
	if ((src.getType() & Folder.HOLDS_FOLDERS) != 0)
	    srcFolders = src.list();
	boolean srcHasChildren = srcFolders != null && srcFolders.length > 0;

	if (!dst.exists()) {
	    // Create it.
	    boolean dstHoldsOnlyFolders = false;
	    try {
		if (!dst.create(src.getType())) {
		    System.out.println("couldn't create " + dst.getFullName());
		    return;
		}
	    } catch (MessagingException mex) {
		// might not be able to create a folder that holds both
		if (src.getType() !=
			(Folder.HOLDS_MESSAGES|Folder.HOLDS_FOLDERS))
		    throw mex;
		if (!dst.create(srcHasChildren ? Folder.HOLDS_FOLDERS :
						Folder.HOLDS_MESSAGES)) {
		    System.out.println("couldn't create " + dst.getFullName());
		    return;
		}
		dstHoldsOnlyFolders = srcHasChildren;
	    }

	    // Copy over any messges from src to dst
	    if ((src.getType() & Folder.HOLDS_MESSAGES) != 0) {
		src.open(Folder.READ_ONLY);
		if (dstHoldsOnlyFolders) {
		    if (src.getMessageCount() > 0) {
			System.out.println("Unable to copy messages from " +
			    src.getFullName() + " to " + dst.getFullName() +
			    " because destination holds only folders");
		    }
		} else
		    src.copyMessages(src.getMessages(), dst);
		src.close(false);
	    }
	} else  {
	    System.out.println(dst.getFullName() + " already exists");
	    // Copy over any messges from src to dst
	    if (force && (src.getType() & Folder.HOLDS_MESSAGES) != 0) {
		src.open(Folder.READ_ONLY);
		src.copyMessages(src.getMessages(), dst);
		src.close(false);
	    }
	}

	// Copy over subfolders
	if (srcHasChildren) {
	    for (int i = 0; i < srcFolders.length; i++) {
		// skip special directories?
		if (skipSpecial) {
		    if (srcFolders[i].getName().equals("SCCS") ||
			srcFolders[i].getName().equals("Drafts") ||
			srcFolders[i].getName().equals("Trash") ||
			srcFolders[i].getName().equals("Shared Folders"))
			continue;
		}
		copy(srcFolders[i], dst.getFolder(srcFolders[i].getName()));
	    }
    	}
    }

    private static void printUsage() {
	System.out.println("populate [-D] [-f] [-S] [-c] " +
			   "-s source_url -d dest_url");
	System.out.println("URLs are of the form: " +
		  	   "protocol://username:password@hostname/foldername");
	System.out.println("The destination URL does not need a foldername," +
		  	   " in which case, the source foldername is used");
    }
}
