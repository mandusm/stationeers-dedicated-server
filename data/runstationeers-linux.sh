#!/bin/bash
###########################################################
# See https://stationeers-wiki.com/Dedicated_Server_Guide
# For Below Config Details
# #########################################################

# create place to store save/ scripts/ setting.xml etc...
DATA_DIR="/stationeers/gameData"

# set exe
EXECUTABLE="/stationeers/gameServer/rocketstation_DedicatedServer.x86_64"

# Define settings
SERVER_NAME="YOUR SERVER NAME"
SAVE_NAME="savegamename"
WORLD_TYPE="Moon"
SERVER_PASSWORD="YOUR SERVER PASSWORD"
SERVER_AUTH_SECRET="YOUR SERVER SECRET"
GAME_PORT=27016
START_LOCAL_HOST=true
SERVER_VISIBLE=false
UPNP_ENABLED=false
SERVER_MAX_PLAYERS=5
AUTO_SAVE=true
SAVE_INTERVAL=300
SAVE_PATH="$DATA_DIR"
LOG_FILE="$DATA_DIR/log.txt"
SETTINGS_PATH="$DATA_DIR/settings.xml"
DIFFICULTY="easy"
LOCAL_IP_ADDRESS="0.0.0.0"

# Run the server
"$EXECUTABLE" \
-nographics \
-batchmode \
-loadlatest "$SAVE_NAME" $WORLD_TYPE \
-logFile "$LOG_FILE" \
-settingspath "$SETTINGS_PATH" \
-difficulty "$DIFFICULTY" \
-settings StartLocalHost $START_LOCAL_HOST ServerVisible $SERVER_VISIBLE \
    GamePort $GAME_PORT UPNPEnabled $UPNP_ENABLED ServerName "$SERVER_NAME" \
    ServerPassword "$SERVER_PASSWORD" ServerMaxPlayers $SERVER_MAX_PLAYERS \
    AutoSave $AUTO_SAVE SaveInterval $SAVE_INTERVAL \
    SavePath "$SAVE_PATH" \
    ServerAuthSecret "$SERVER_AUTH_SECRET"\
    LocalIpAddress "$LOCAL_IP_ADDRESS" \ &> $DATA_DIR/proc.out &

tail -f $LOG_FILE

