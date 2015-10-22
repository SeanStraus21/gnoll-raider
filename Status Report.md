# Gnoll Raider Status Report

Introduction:
	I know it sounds crazy to use a development methodology for a team of one programmer/writer/graphicsman, but sometimes people do crazy things, and since I'm already making a video game about man-eating hyena creatures, I don't really mave much to lose. Anyway, I'm using a methodology referred to among software developers as agile/scrum (I did not invent these terms, I learned them in my software development class. just throwing that out there), which is basically jargon for developing software in short periods called sprints (Its kind of a metaphor), which usually last about two weeks. Each sprint begins with a meeting in which the team decides on a set of objectives for that sprint and decides who will do what. at the end of each sprint, the team reviews their work and adjusts their planning strategy as needed based on data gathered from the last sprint. in addition to planning and retrospection meetings, every day of a sprint the team members have a "daily scrum" in which each member updates his teammates on his progress since the last daily scrum, the idea being that if you spend a day playing video games instead of working, your team mates get mad at you and make you feel guilty for slacking off. So even though I don't have any team-mates, I try to keep track of what I do every day and do my best to be my own grouchy boss and make myself feel guilty if I slack off. 
	

	Now about that progress...
	or
	Why the developer took twice as long to do half as much.
	Well, things haven't been going that smoothly, which you might have guessed from the fact that there hasn't been an updated build in four weeks.
	I have sort of been slacking off (not really, it was homework and other projects mostly, but still) but not as bad as you might think. The trouble is that for the last couple of weeks I've been busy doing back end stuff. Most of what I've been doing involves refactoring code to make it better and faster and less likely to break in the future, which is important in the long run, but doesn't tend to impress customers. The biggest thing I've done is to switch over from gamemaker 8.1 to gamemaker:studio.
	
	Why does this matter? well, for one thing, yoyo games, the company that developed game maker, decided they didn't want to have to keep their update servers running for pre-studio versions of gamemaker. Normally, in a well-designed piece of software, this wouldn't be a problem. but game maker isn't a well designed piece of software. Every time you launch the program, if you're connected to the internet, it looks for the update server, and if it doesn't find it, it crashes your computer. 
	I eventually found out that I could circumvent this by turning off my wireless before opening gamemaker, but since I already switched over, I decided to stick with it.
	Although I would have preferred to make the switch on my own terms, it looks like this was probably for the best. Gamemaker:studio is much better for two important reasons:
	1. It is compiled instead of interpreted (it is a million times faster)
	2. It is cross-platform (You can play it on linux and mac)
	Truth be told, I had actually spent the last couple of weeks trying to write a physics extension in C++ since gamemaker 8.1's built in line of sight functions are worthless for what I need them for and game maker is too slow to allow me to write my own in GML. It was probably quicker to switch to studio than to write the dll.
	
	Unfortunately, this broke all the menus, all the message boxes, all the multiplayer (which relied on a dll. gamemaker:studio does not support dlls), and anything involving saving stuff to text files.
	
	I spent most of the last four weeks of development time fixing these problems.
	
	However, there is some good news
	Thanks to Zin (Gamejolt Community), I now have a level editor. With this I have been able to produce some decent dungeon chambers, and as I continue to improve the complexity of the editor, the levels will get better. 
	The lag that occurred when entering a new chamber is gone now, and some bugs have been removed (like how you could walk through doors and right out the other side into the void).
	
	Also, I have been busy revising the User Interface (UI) and Heads-Up Display (HUD) which were pretty inexcusable, even for me.
	the graphics are still more or less an abomination, but I keep trying to make the keyboard inputs more intuitive.
	One thing I have done is to design 2 separate HUDs, one for Xbox controllers and one for Keyboard
	
	After I finish the HUD, my top priority is AI. I think that the terrible enemies are by far the most appalling flaw in the current game design. With my new physics engine and a decent level editor, hopefully I will be able to provide this soon.
