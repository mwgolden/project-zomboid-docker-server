BASE_SERVER_DIR="/opt/pzserver"
CONFIG_DIR="/home/steam/Zomboid"
ADMIN_USERNAME=${ADMIN_USERNAME:-"admin"}
ADMIN_PASSWORD=${ADMIN_PASSWORD:-"admin"}
SERVER_NAME=${SERVER_NAME:-"Project Zomboid Server"}
STEAM_VAC=${STEAM_VAC:-"true"}

if [[ -z "$USE_STEAM" ]] || [[ "$USE_STEAM" == "true" ]]; then 
    USE_STEAM=""
else
    USE_STEAM="-nosteam"
fi

"$BASE_SERVER_DIR"/start-server.sh \
    -cachedir="$CONFIG_DIR" \
    -adminusername "$ADMIN_USERNAME" \
    -adminpassword "$ADMIN_PASSWORD" \
    -servername "$SERVER_NAME" \
    -steamvac "$STEAM_VAC" "$USE_STEAM"
