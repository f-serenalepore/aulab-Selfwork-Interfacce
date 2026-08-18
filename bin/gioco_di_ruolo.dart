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

// Nota progettuale:
// Ho mantenuto volutamente il metodo attack() senza parametri, come richiesto
// dall'interfaccia Attacker. Per questo motivo è il codice che gestisce il turno
// a stabilire chi attacca e chi riceve il danno.
//
// In un progetto più strutturato avrei potuto progettare diversamente l'interfaccia,
// ad esempio creando un'interfaccia Personaggio e definendo:
// void attack(Personaggio bersaglio);
// In questo modo sarebbe stato il metodo attack() stesso a ricevere il bersaglio