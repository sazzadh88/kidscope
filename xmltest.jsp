<html>
<head>
<title>dom parser</title>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>
<%@ page import="kids.*" %>
</head>

<body bgcolor="#ffffcc">

<center>
<h3>My Portfolio</h3>
<table border="2" width="50%">
 <tr>
 <th>Stock Symbol</th>
 <th>Company Name</th>
 <th>Price</th>
 </tr>

<jsp:useBean id="domparser" 
class="kids.MyDOMParserBean" />

<%
Document doc = 
domparser.getDocument("c://test.xml");
traverseTree(doc, out);
%>

<%! private void traverseTree(Node node,
 JspWriter out) throws Exception {
        if(node == null) {
           return;
        }
        int type = node.getNodeType();
         
        switch (type) {
           // handle document nodes
           case Node.DOCUMENT_NODE: {
             out.println("<tr>");
             traverseTree
             (((Document)node).getDocumentElement(),
             out);
             break;
          }
          // handle element nodes
          case Node.ELEMENT_NODE: {
            String elementName = node.getNodeName();
             if(elementName.equals("stock")) {
               out.println("</tr><tr>");
             }
             NodeList childNodes = 
             node.getChildNodes();      
             if(childNodes != null) {
                int length = childNodes.getLength();
                for (int loopIndex = 0; loopIndex < 
                length ; loopIndex++)
                {
                   traverseTree
                   (childNodes.item(loopIndex),out);
                 }
              }
              break;
           }
           // handle text nodes
           case Node.TEXT_NODE: {
              String data = 
              node.getNodeValue().trim();

              if((data.indexOf("\n")  <0
              ) && (data.length() 
              > 0)) {
                out.println("<td>"+
                data+"</td>");
              }
            }
         }
    }

%>

</body>
</html>