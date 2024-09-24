import 'package:test/test.dart';
import 'dart:html';
import 'package:flutter/material.dart';

//validação de CPF
bool isValidCPF(String cpf) {

  cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

  if (cpf.length != 11) return false;
  int sum = 0;
  int weight = 10;

  for (int i = 0; i < 9; i++) {
    sum += int.parse(cpf[i]) * weight--;
  }

  int firstCheckDigit = (sum * 10) % 11;
  if (firstCheckDigit == 10 || firstCheckDigit == 11) {
    firstCheckDigit = 0;
  }

  if (firstCheckDigit != int.parse(cpf[9])) {
    return false;
  }

  sum = 0;
  weight = 11;

  for (int i = 0; i < 10; i++) {
    sum += int.parse(cpf[i]) * weight--;
  }

  int secondCheckDigit = (sum * 10) % 11;
  if (secondCheckDigit == 10 || secondCheckDigit == 11) {
    secondCheckDigit = 0;
  }

  return secondCheckDigit == int.parse(cpf[10]);
}

//validação de Senha
bool isValidPassword(String password) {
  if (password.isEmpty) return false;
  return password.length >=
      8;
}

void main() {
  group('CPF Validation', () {
    test('Valid CPF', () {
      expect(isValidCPF('123.456.789-09'), true);
    });

    test('Invalid CPF', () {
      expect(isValidCPF('123.456.789'), false);
    });

    test('Invalid CPF (wrong length)', () {
      expect(isValidCPF('123.456.78'), false); 
    });

    test('Empty CPF', () {
      expect(isValidCPF(''), false);
    });
  });

  group('Password Validation', () {
    test('Valid Password', () {
      expect(isValidPassword('12345678'), true);
    });

    test('Invalid Password (too short)', () {
      expect(isValidPassword('123'), false);
    });

    test('Empty Password', () {
      expect(isValidPassword(''), false);
    });
  });
}
