#!/bin/bash

# --- Configuration ---
PROJECT="SurfDock_eval_samples/repeat_250102"
SURFDOCK_ROOT="/root/SurfDock"
OUTPUT_ROOT="${SURFDOCK_ROOT}/docking_result/${PROJECT}"
DATA_ROOT="${SURFDOCK_ROOT}/data/eval_sample_dirs/${PROJECT}"

DEST_DIR="${SURFDOCK_ROOT}/collected_results/$(basename ${PROJECT})"
mkdir -p "$DEST_DIR"

echo "📦 Collecting results into: $DEST_DIR"

# 1. Docked ligand outputs (poses)
if [ -d "$OUTPUT_ROOT" ]; then
    echo "✅ Copying docked ligand results..."
    cp -r "$OUTPUT_ROOT" "$DEST_DIR/docking_outputs"
else
    echo "❌ Docked results not found at $OUTPUT_ROOT"
fi

# 2. Input CSV used
if [ -f "${DATA_ROOT}/input_csv_files/test_samples.csv" ]; then
    echo "✅ Copying input CSV..."
    mkdir -p "$DEST_DIR/input_csv"
    cp "${DATA_ROOT}/input_csv_files/test_samples.csv" "$DEST_DIR/input_csv/"
fi

# 3. Surface mesh files
if [ -d "${DATA_ROOT}/test_samples_8A_surface" ]; then
    echo "✅ Copying surface mesh outputs..."
    cp -r "${DATA_ROOT}/test_samples_8A_surface" "$DEST_DIR/surface_mesh"
fi

# 4. ESM embedding outputs
if [ -d "${DATA_ROOT}/test_samples_esmbedding" ]; then
    echo "✅ Copying ESM embeddings..."
    cp -r "${DATA_ROOT}/test_samples_esmbedding" "$DEST_DIR/esm_embeddings"
fi

# 5. Log file
LOGFILE=$(find "${DATA_ROOT}/test_samples_8A_surface" -name "*.log" | head -n 1)
if [ -f "$LOGFILE" ]; then
    echo "✅ Copying inference log..."
    cp "$LOGFILE" "$DEST_DIR/"
fi

echo "✅ All done!"

