/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jBean;

/**
 *
 * @author antonio
 */


import java.util.*;
public class numeroGenerado {
int answer;
boolean success;
String hint;
int numGuesses;
public numeroGenerado() {
reset(); }
public void setGuess(String guess) {
numGuesses++;
int g;
try {
g = Integer.parseInt(guess);}
catch (NumberFormatException e) {
g = -1;
}
if (g == answer) {
success = true; }
else if (g == -1) {
hint = "Introduce un numero la proxima vez";}
else if (g < answer) {
hint = "Más alto";
}
else if (g > answer) {
hint = "Mas bajo";
}
}
public boolean getSuccess() {
return success;
}
public String getHint() {
return "" + hint; 
}
public int getNumGuesses() {
return numGuesses;
}
public void reset() {
answer = Math.abs(new Random().nextInt() % 100) + 1;
success = false;
numGuesses = 0;
}
}

