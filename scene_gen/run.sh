CONFIG_PATH=/data/options.json
TYPES=$(jq --raw-output ".types" $CONFIG_PATH)
SCENE_NAME=$(jq --raw-output ".scene_name" $CONFIG_PATH)
URL=$(jq --raw-output ".url" $CONFIG_PATH)
TOKEN=$(jq --raw-output ".token" $CONFIG_PATH)

SCRIPT="/scenegen/scenegen.py"
if [ ! -f "$SCRIPT" ]
then
echo ERROR: Please reinstall the addon. Don not forget to copy your config.
fi

DIR="/config/scenes"
if [ ! -d "$DIR" ]; then
	echo Creating scenes folder... This needs to be done once. 
	mkdir /config/scenes
fi

SCENE_FILE="/config/scenes/$SCENE_NAME.yaml"
if [ ! -f "$SCENE_FILE" ]
then
echo Putting all states into /config/scenes/$SCENE_NAME
/scenegen/scenegen.py $URL -k $TOKEN --scenename $SCENE_NAME --types $TYPES > /config/scenes/$SCENE_NAME.yaml
echo No errors seen? Congratulations! 
echo Your scene is saved in /config/scenes/$SCENE_NAME.yaml 
echo You may need to remove entities you do not want to have in de scene manually.
else
echo SCENE FILE ALREADY EXIST! Aborting...
fi