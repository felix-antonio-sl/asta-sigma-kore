#!/bin/bash

# Directorio con las guías fuente
BASE_DIR="/Users/felixsanhueza/fx_maquineando/asta-sigma-kore/ASTA-KORE fundamentos y manual operacional/guias decision"

# Directorio donde está este script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Archivo de salida en el MISMO directorio del script
OUTPUT_FILE="${SCRIPT_DIR}/_guias_decision_unificadas.md"

# Orden de concatenación
FILES=(
  "gd_arquitectura_nexus.md"
  "gd_experiencia_usuario.md"
  "gd_automatizacion_proceso.md"
  "gd_datos.md"
  "gd_sistemas_cognitivos.md"
  "gd_know.md"
)

# Inicializar archivo de salida con el título requerido
{
  echo "# guias decisión unificadas"
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