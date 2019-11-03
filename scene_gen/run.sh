CONFIG_PATH=/data/options.json
TYPES=$(jq --raw-output ".types" $CONFIG_PATH)
SCENE_NAME=$(jq --raw-output ".scene_name" $CONFIG_PATH)
URL=$(jq --raw-output ".url" $CONFIG_PATH)
TOKEN=$(jq --raw-output ".token" $CONFIG_PATH)

SCRIPT="/data/scenegen/scenegen.py"
if [ ! -f "$SCRIPT" ]
then
echo Downloading Scene Gen from github. This is only required when you start this addon for the first time.
git clone https://github.com/home-assistant/scenegen.git
echo -----------------------------------
fi

DIR="/config/scenes"
if [ ! -d "$DIR" ]; then
	echo Creating scenes folder...
	mkdir /config/scenes
fi


SCENE_FILE="/config/scenes/$SCENE_NAME.yaml"
if [ ! -f "$SCENE_FILE" ]
then
echo Putting all states into /config/scenes/$SCENE_NAME
/data/scenegen/scenegen.py $URL -k $TOKEN --scenename $SCENE_NAME --types $TYPES > /config/scenes/$SCENE_NAME.yaml
echo No errors seen? Congratulations. Your scene is saved and can now be loaded.
else
echo SCENE FILE ALREADY EXIST! Aborting...
fi




