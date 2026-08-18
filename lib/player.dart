import 'package:gioco_di_ruolo/attacker.dart';
import 'package:gioco_di_ruolo/damageable.dart';
import 'package:gioco_di_ruolo/healer.dart';

class Player implements Attacker, Damageable, Healer{

  final String playerName;
  int hp;
  Player(this.playerName, this.hp);

  @override
  void attack() {
    print("$playerName attacca!");
  }

  @override
  void heal(int amount) {
    print("$playerName si cura e recupera $amount hp!");
    hp += amount;
  }

  @override
  void takeDamage(int amount) {
    print("$playerName è stato attaccato e perde $amount hp");
    hp -= amount;
  }

}