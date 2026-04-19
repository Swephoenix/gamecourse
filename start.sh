#!/bin/bash
# Startar en Python-server för racing-spelet
PORT=8000

echo "Startar Koenigsegg Agera Racing Track på http://localhost:$PORT"

# Försök öppna webbläsaren automatiskt
if command -v xdg-open > /dev/null; then
    xdg-open "http://localhost:$PORT" &
elif command -v open > /dev/null; then
    open "http://localhost:$PORT" &
fi

# Starta servern
python3 game_server.py $PORT
