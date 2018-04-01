/*
 * @(#)AttachmentServlet.java	1.2 01/05/23
 *
 * Copyright 2001 Sun Microsystems, Inc. All Rights Reserved.
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
 *
 */

import java.io.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * This servlet gets the input stream for a given msg part and 
 * pushes it out to the browser with the correct content type.
 * Used to display attachments and relies on the browser's
 * content handling capabilities.
 */
public class AttachmentServlet extends HttpServlet {

    /**
     * This method handles the GET requests from the client.
     */
    public void doGet(HttpServletRequest request, HttpServletResponse  response)
        throws IOException, ServletException {
      
        HttpSession session = request.getSession();
        ServletOutputStream out = response.getOutputStream();
        int msgNum = Integer.parseInt(request.getParameter("message"));
        int partNum = Integer.parseInt(request.getParameter("part"));
        MailUserBean mailuser = (MailUserBean)session.getAttribute("mailuser");

        // check to be sure we're still logged in
        if (mailuser.isLoggedIn()) {
            try {
                Message msg = mailuser.getFolder().getMessage(msgNum);

                Multipart multipart = (Multipart)msg.getContent();
	        Part part = multipart.getBodyPart(partNum);
                
                String sct = part.getContentType();
	        if (sct == null) {
		    out.println("invalid part");
		    return;
	        }
	        ContentType ct = new ContentType(sct);

	        response.setContentType(ct.getBaseType());
	        InputStream is = part.getInputStream();
	        int i;
	        while ((i = is.read()) != -1)
		    out.write(i);
	        out.flush();
	        out.close();

            } catch (MessagingException ex) {
                throw new ServletException(ex.getMessage());
            }
        } else {
            getServletConfig().getServletContext().
                getRequestDispatcher("/index.html").
                forward(request, response);
        }
    }   
}

