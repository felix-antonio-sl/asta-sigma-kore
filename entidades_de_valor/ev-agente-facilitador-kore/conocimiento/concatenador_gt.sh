#!/bin/bash

# Directorio con las guías fuente
BASE_DIR="/Users/felixsanhueza/fx_maquineando/asta-sigma-kore/ASTA-KORE fundamentos y manual operacional/guias tecnicas"

# Directorio donde está este script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Archivo de salida en el MISMO directorio del script
OUTPUT_FILE="${SCRIPT_DIR}/_guias_tecnicas_unificadas.md"

# Array con el orden lógico de los archivos
FILES=(
    "gt_alm_001.md"
    "gt_arquitectura_nexus.md"
    "gt_ingenieria_software.md"
    "gt_diseno_ux.md"
    "gt_ingenieria_datos.md"
    "gt_gestion_conocimiento.md"
    "gt_ingenieria_ia.md"
)

# Inicializar archivo de salida con el título requerido
{
  echo "# guias técnicas unificadas"
  echo
} > "$OUTPUT_FILE"

echo "Unificando en: $OUTPUT_FILE"

# Concatenar cada archivo aplicando aumento de nivel de encabezados y separador
for file in "${FILES[@]}"; do
  SRC="${BASE_DIR}/${file}"
  if [ -f "$SRC" ]; then
    echo "Añadiendo: $file"
    # Añadir un '#' adicional al inicio de cada línea que comience con '#'
    sed 's/^#/#&/' "$SRC" >> "$OUTPUT_FILE"
    echo -e "\n\n---\n\n" >> "$OUTPUT_FILE"
  else
    echo "Advertencia: no existe $SRC" >&2
  fi
done

echo "Unificación completada"