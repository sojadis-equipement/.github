#!/usr/bin/env bash
# Crée les labels de la méthode sur le repo courant (gh CLI authentifié). Rejouable.
set -euo pipefail
mk() { gh label create "$1" --color "$2" --description "$3" --force; }
mk P0 B60205 "Critique / bloquant"
mk P1 D93F0B "Important, à planifier rapidement"
mk P2 FBCA04 "Utile mais non urgent"
mk P3 0E8A16 "Confort, sans échéance fixée"
mk Tiny C5DEF5 "Quelques heures"
mk Low C5DEF5 "Moins d'une journée"
mk High C5DEF5 "Plusieurs jours"
mk Massive C5DEF5 "À découper avant Ready"
mk needs_triage EDEDED "À trier au prochain triage"
# Les labels `area:*` sont propres à chaque projet : à ajouter à la main.
