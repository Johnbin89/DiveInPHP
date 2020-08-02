First Web Application assigned as coursework in a course @ Athens Tech College


An intro to Web Applications, where it was required with a team of co-students to select our own project idea and write a web app in _php_ without using a framework.

Among other ideas my suggestions was a web app related to my favourite hobby, where the sky is only a memory, [diving](https://www.flickr.com/photos/giannhsbiniaris/)!  
What is missing from the diving community in Greece, is a site where all dive operatarors (dive centers) would host their upcoming dive events and divers would be able to search what they are interested into and book their place in.  
Like a hotel booking site, but this one would be for your underwater adventures **:dolphin::dolphin:**

***
A php template engine called **_[twig](https://twig.symfony.com/)_** was used to implement Template inheritance & passing variables to rendered pages.
***
Two user types were defined:  
1. **Divers**
2. **Dive centers**    

An additional entity was defined as _Dive Spots_. Different places where a dive event would take place.

* Visitors can search for dive spots and check scheduled upcoming & past events on the calendar at home page.  
* Both **divers** & **dive centers** can signup through the sign up page.  
* Both users can upload photos to a Dive Spot, but uploading requires a logged in users. Visitors are able to see already uploaded photos of the Dive Spot.  
* **Divers** can book their place in dive events, as long as the maximum amount of allowed participants of the event is not exceeded. They are able to see their history log of past & upcoming events.  
* **Dive centers** can create a dive event for a Dive Spot by setting required parameters such as maximum divers allowed, price, date, etc. They can check history log of their scheduled events too. 
