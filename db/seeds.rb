Movie.destroy_all
Actor.destroy_all
Role.destroy_all

m1 = Movie.create(title: "The Dark Knight", review: "The Batman of our dreams! So much more than a comic book movie")
m2 = Movie.create(title: "Avatar", review: "Avatar tells a familiar story but its a story that works so well inside of this movie. The visuals and 3d are still one of the best to date and i totally get why it made so much money.")
m3 = Movie.create(title: "The Hobbit: An Unexpected Journey", review: "It's definitely no LOTR...But it's still a pretty cool movie. Sure, it took it's time to try to tell the story and dragged on for a little too long, but other than that, the special effects were great, and it was entertaining as hell. It's a good introduction to The Hobbit franchise.")
m4 = Movie.create(title: "X-Men: First Class", review: "The best prequel movie ever made... period")
m5 = Movie.create(title: "The Hunger Games", review: "How can this be a cult movie?")
m6 = Movie.create(title: "X-Men Origins: Wolverine", review: "There are few elements that actually work in this prequel, but none of them are enough to compensate for the lack of creativity, poor execution, terrible writing and awful looking special effects, ruining what it could've been a potentially promising spin-off from a great character.")
m7 = Movie.create(title: "Logan", review: "Logan is everything you wanted it to be and more")

a1 = Actor.create(name: "Sam Worthington")
a2 = Actor.create(name: "Heath Ledger")
a3 = Actor.create(name: "Ian McKellen")
a4 = Actor.create(name: "Jennifer Lawrence")
a5 = Actor.create(name: "Hugh Jackman")

r1 = Role.create(name:"Jake Sully", movie: m2, actor: a1)
r2 = Role.create(name:"Joker", movie: m1, actor: a2)
r3 = Role.create(name:"Gandalf", movie: m3, actor: a3)
r4 = Role.create(name:"Katniss Everdeen", movie: m5, actor: a4)
r5 = Role.create(name:"Raven / Mystique", movie: m4, actor: a4)
r6 = Role.create(name:"Logan / Wolverine", movie: m6, actor: a5)
r7 = Role.create(name:"Logan / X-24", movie: m7, actor: a5)


