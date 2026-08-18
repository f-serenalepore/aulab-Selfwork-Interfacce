import 'package:gioco_di_ruolo/enemy.dart';
import 'package:gioco_di_ruolo/player.dart';

void main() {
  Player harryPotter = Player("Harry Potter", 50);
  Enemy voldemort = Enemy("Voldemort", 100);

  harryPotter.attack();
  voldemort.takeDamage(30);
  stampaHP(harryPotter, voldemort);

  voldemort.attack();
  harryPotter.takeDamage(20);
  stampaHP(harryPotter, voldemort);
  
  harryPotter.heal(10);
  stampaHP(harryPotter, voldemort);
}

void stampaHP(Player giocatore, Enemy nemico){
  print("Situazione HP: ${giocatore.playerName} -> ${giocatore.hp} hp");
  print("Situazione HP: ${nemico.enemyName} -> ${nemico.hp} hp");
}
