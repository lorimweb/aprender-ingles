#!/bin/bash

# Script para abrir o blog Aprender Inglês no navegador

echo "🎓 Abrindo o blog Aprender Inglês..."

# Obtém o caminho completo do arquivo index.html
INDEX_PATH="$(pwd)/index.html"

# Verifica se o arquivo existe
if [ ! -f "$INDEX_PATH" ]; then
    echo "❌ Erro: index.html não encontrado!"
    exit 1
fi

# Abre no navegador padrão
if command -v xdg-open &> /dev/null; then
    xdg-open "$INDEX_PATH"
elif command -v open &> /dev/null; then
    open "$INDEX_PATH"
else
    echo "📍 Abra este arquivo no navegador:"
    echo "   file://$INDEX_PATH"
fi

echo "✅ Pronto! Bons estudos! 📖🎧"
