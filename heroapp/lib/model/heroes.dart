class Avengers {
  final int id;
  final String name, description, heroImage;

  Avengers(this.id, {
    required this.name,
    required this.description,
    required this.heroImage
  });
}

List<Avengers> heroList = [
  Avengers(
    1, 
    name: 'Iron Man', 
    description: "Iron Man is a superhero appearing in American comic books published by Marvel Comics. A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward Stark suffers a severe chest injury during a kidnapping. When his captors attempt to force him to build a weapon of mass destruction, he instead creates a mechanized suit of armor to save his life and escape captivity. Later, Stark develops his suit, adding weapons and other technological devices he designed through his company, Stark Industries. He uses the suit and successive versions to protect the world as Iron Man. Although at first concealing his true identity, Stark eventually publicly reveals himself to be Iron Man.", 
    heroImage: 'assets/images/ironman.png'
  ),
  Avengers(
    2, 
    name: 'Captain America', 
    description: "Captain America is a superhero appearing in American comic books published by Marvel Comics. The character wears a costume bearing an American flag motif, and he utilizes a nearly-indestructible shield that he throws as a projectile. Captain America is the alter ego of Steve Rogers, a frail young artist enhanced to the peak of human perfection by an experimental super-soldier serum after joining the military to aid the United States government's efforts in World War II. Near the end of the war, he was trapped in ice and survived in suspended animation until he was revived in modern times. Although Captain America often struggles to maintain his ideals as a man out of his time, he remains a highly respected figure both with the American public and in the superhero community, which includes becoming the long-time leader of the Avengers.", 
    heroImage: 'assets/images/captain-america.png'
  ),
  Avengers(
    3, 
    name: 'Black Widow', 
    description: "Natasha Romanoff, aka Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy, and the broken relationships left in her wake long before she became an Avenger.", 
    heroImage: 'assets/images/blackwidow.png'
  ),
  Avengers(
    4, 
    name: 'Thor', 
    description: "Thor Odinson, or simply Thor, is a fictional character appearing in American comic books published by Marvel Comics. The character is based on the Norse deity of the same name, the Asgardian god of thunder whose enchanted hammer Mjolnir enables him to fly and manipulate weather, among his other superhuman attributes. A founding member of the superhero team the Avengers, Thor has a host of supporting characters and enemies.", 
    heroImage: 'assets/images/thor.png'
  ),
  Avengers(
    5, 
    name: 'Hulk', 
    description: "The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics. Following his accidental exposure to gamma rays while saving the life of Rick Jones during the detonation of an experimental bomb, Banner is physically transformed into the Hulk when subjected to emotional stress, at or against his will. This transformation often leads to destructive rampages and to conflicts that complicate Banner's civilian life. The Hulk's level of strength is normally conveyed as proportionate to his level of anger. Commonly portrayed as a raging savage, the Hulk has been represented with other personalities based on Banner's fractured psyche, from a mindless, destructive force, to a brilliant warrior, or a genius scientist in his own right. Despite both Hulk and Banner's desire for solitude, the character has a large supporting cast.", 
    heroImage: 'assets/images/hulk.png'
  ),
];