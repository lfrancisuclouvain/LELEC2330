#!/usr/bin/env bash
#
# commit.sh — raccourci pour enregistrer et envoyer les changements sur GitHub.
#
# Usage :
#   ./commit.sh "message décrivant le changement"
#   ./commit.sh                     (un message horodaté est utilisé par défaut)
#
# À lancer depuis le dossier du dépôt (là où se trouve ce script).

set -euo pipefail

# --- Se placer dans le dossier du script (= racine du dépôt) ---
cd "$(dirname "$0")"

# --- Vérifier qu'on est bien dans un dépôt git ---
if [ ! -d .git ]; then
  echo "Ce dossier n'est pas encore un dépôt git."
  echo "Lance d'abord :  git init  (puis configure le remote 'origin')."
  exit 1
fi

# --- Message de commit : argument fourni, sinon horodatage ---
if [ "$#" -ge 1 ]; then
  MESSAGE="$*"
else
  MESSAGE="Update notes — $(date '+%Y-%m-%d %H:%M')"
fi

# --- Y a-t-il quelque chose à committer ? ---
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "Aucun changement à enregistrer. Rien à faire."
  exit 0
fi

# --- add + commit ---
git add -A
git commit -m "$MESSAGE"
echo "Commit créé : $MESSAGE"

# --- push (seulement si un remote 'origin' existe) ---
if git remote get-url origin >/dev/null 2>&1; then
  BRANCH="$(git rev-parse --abbrev-ref HEAD)"
  ORIGIN_URL="$(git remote get-url origin)"

  # Afficher la cible exacte avant d'envoyer quoi que ce soit
  echo ""
  echo "Destination du push :"
  echo "   dépôt  (origin) : $ORIGIN_URL"
  echo "   branche         : $BRANCH"
  echo ""

  # Demander confirmation
  printf "Envoyer ce commit vers cette destination ? [o/N] "
  read -r REPONSE
  case "$REPONSE" in
    o|O|oui|Oui|y|Y|yes|Yes)
      git push -u origin "$BRANCH"
      echo "Changements envoyés sur origin/$BRANCH."
      ;;
    *)
      echo "Push annulé. Le commit reste enregistré en local."
      echo "Pour l'envoyer plus tard :  git push -u origin $BRANCH"
      ;;
  esac
else
  echo "Commit local effectué, mais aucun remote 'origin' n'est configuré."
  echo "Ajoute-le avec :  git remote add origin <URL>  puis  git push -u origin main"
fi
