Web\default.aspx
================

Uses a HTTP Module, Modules.Authentication.cs, the authenticates users before servicing page.  The site employs a basic 
authentication scheme where user are prompted for credentials, User Name: Bart; Password: Mburu.

Implements a HTTP Module web service, /Service.svc, that separates and sorts words.  The service is called on by AJAX XHR
to request the web service asynchronously.

Web page that reads in lines of text entered by users, separates them into words, sorts them, 
and prints them out together with their number of occurrences.

As User enters or changes the text, and word list are automatically or dynamically rendered onto the page.
