import 'package:gioco_di_ruolo/attacker.dart';
import 'package:gioco_di_ruolo/damageable.dart';

class Enemy implements Attacker, Damageable{

  final String enemyName;
  int hp;

  Enemy(this.enemyName, this.hp);

  @override
  void attack() {
    print("$enemyName attacca!");
  }

  @override
  void takeDamage(int amount) {
    print("$enemyName è stato attaccato e perde $amount hp");
    hp -=amount;
  }

}