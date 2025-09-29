#!/bin/bash

# check-cvc.sh: Script para validar el checklist pre-CVC de una Entidad de Valor.

set -e

EV_PATH=$1
MAX_LINES=450 # Aproximadamente 3 páginas

if [ -z "$EV_PATH" ]; then
  echo "Error: Debes proporcionar la ruta al directorio de la Entidad de Valor."
  echo "Uso: $0 <ruta-a-la-ev>"
  exit 1
fi

if [ ! -d "$EV_PATH" ]; then
  echo "Error: El directorio '$EV_PATH' no existe."
  exit 1
fi

INFORME_CVC_PATH="$EV_PATH/informe-cvc.md"
OKRS_PATH="$EV_PATH/okrs.md"

# 1. Verificar presencia y longitud del Informe CVC
echo "1. Verificando Informe CVC..."
if [ ! -f "$INFORME_CVC_PATH" ]; then
  echo "  [FAIL] No se encontró el archivo 'informe-cvc.md' en '$EV_PATH'."
  exit 1
fi

LINE_COUNT=$(wc -l < "$INFORME_CVC_PATH")
if [ "$LINE_COUNT" -gt "$MAX_LINES" ]; then
  echo "  [FAIL] El informe CVC excede las 3 páginas (aproximadamente $MAX_LINES líneas). Tiene $LINE_COUNT líneas."
  exit 1
fi
echo "  [OK] Informe CVC encontrado y con longitud adecuada."

# 2. Verificar enlace a la demo
echo "2. Verificando enlace a la demo..."
if ! grep -q -E '\[[Dd]emo.*\]\(https?://[^)]+\)' "$INFORME_CVC_PATH"; then
  echo "  [FAIL] No se encontró un enlace a la demo en '$INFORME_CVC_PATH'."
  exit 1
fi
echo "  [OK] Enlace a la demo encontrado."

# 3. Verificar presencia de OKRs
echo "3. Verificando OKRs..."
if [ ! -f "$OKRS_PATH" ] && ! grep -q -i "## OKRs" "$INFORME_CVC_PATH"; then
  echo "  [FAIL] No se encontró 'okrs.md' ni una sección '## OKRs' en el informe."
  exit 1
fi
echo "  [OK] OKRs encontrados."

# 4. Verificar presencia de SLIs
echo "4. Verificando SLIs..."
if ! grep -q -i "## SLIs" "$INFORME_CVC_PATH" && ! grep -q -i "## Métricas" "$INFORME_CVC_PATH"; then
  echo "  [FAIL] No se encontró una sección '## SLIs' o '## Métricas' en el informe."
  exit 1
fi
echo "  [OK] SLIs/Métricas encontrados."

echo -e "\nChecklist pre-CVC completado exitosamente para '$EV_PATH'."
