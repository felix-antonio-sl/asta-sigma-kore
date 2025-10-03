#!/bin/bash

# Directorio con las plantillas de contratos
BASE_DIR="/Users/felixsanhueza/fx_maquineando/asta-sigma-kore/ASTA-KORE fundamentos y manual operacional/plantillas_contratos"

# Directorio donde está este script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Archivo de salida en el MISMO directorio del script
OUTPUT_FILE="${SCRIPT_DIR}/plantillas_contratos.md"

# Inicializar archivo de salida con el título requerido
{
  echo "# Plantillas de Contratos"
  echo
} > "$OUTPUT_FILE"

echo "Unificando en: $OUTPUT_FILE"

# Subdirectorios a procesar en orden
SUBDIRS=(
  "agentes"
  "conocimiento"
  "datos"
  "procesos"
)

# Procesar cada subdirectorio
for subdir in "${SUBDIRS[@]}"; do
  SUBDIR_PATH="${BASE_DIR}/${subdir}"
  
  if [ -d "$SUBDIR_PATH" ]; then
    echo "Procesando subdirectorio: $subdir"
    
    # Añadir encabezado del subdirectorio
    {
      echo "## ${subdir}"
      echo
    } >> "$OUTPUT_FILE"
    
    # Encontrar y concatenar todos los archivos del subdirectorio
    # Ordenar para tener consistencia: primero .md, luego .yml
    for file in "$SUBDIR_PATH"/*.md "$SUBDIR_PATH"/*.yml; do
      if [ -f "$file" ]; then
        filename=$(basename "$file")
        extension="${filename##*.}"
        echo "  Añadiendo: $subdir/$filename"
        
        # Añadir nombre del archivo como subsección
        {
          echo "### $filename"
          echo
        } >> "$OUTPUT_FILE"
        
        # Determinar el lenguaje del bloque de código según la extensión
        if [ "$extension" = "md" ]; then
          # Para archivos .md, encuadrar con ```markdown
          {
            echo '```markdown'
            cat "$file"
            echo '```'
          } >> "$OUTPUT_FILE"
        elif [ "$extension" = "yml" ]; then
          # Para archivos .yml, encuadrar con ```yaml
          {
            echo '```yaml'
            cat "$file"
            echo '```'
          } >> "$OUTPUT_FILE"
        fi
        
        # Añadir separador
        echo -e "\n\n---\n\n" >> "$OUTPUT_FILE"
      fi
    done
  else
    echo "Advertencia: no existe el subdirectorio $SUBDIR_PATH" >&2
  fi
done

echo "Unificación completada"