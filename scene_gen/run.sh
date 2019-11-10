CONFIG_PATH=/data/options.json
SCENE_NAME=$(jq --raw-output ".scene_name" $CONFIG_PATH)
URL=$(jq --raw-output ".url" $CONFIG_PATH)
TOKEN=$(jq --raw-output ".token" $CONFIG_PATH)
FILTER=$(jq --raw-output ".filter" $CONFIG_PATH)

DIR="/config/scenes"
if [ ! -d "$DIR" ]; then
	echo Creating scenes folder... This needs to be done once. 
	mkdir /config/scenes
fi

SCENE_FILE="/config/scenes/$SCENE_NAME.yaml"
if [ ! -f "$SCENE_FILE" ]
then
echo Putting all states into /config/scenes/$SCENE_NAME


if [ -n "$FILTER" ]
then
    echo Using the filter: $FILTER
	/scenegen/scenegen.py $URL -k $TOKEN -m /config/scenes/map.cfg -f "$FILTER" -s $SCENE_NAME > /config/scenes/$SCENE_NAME.yaml
else
	/scenegen/scenegen.py $URL -k $TOKEN --scenename $SCENE_NAME > /config/scenes/$SCENE_NAME.yaml
fi

echo No errors seen? Congratulations! 
echo Your scene is saved in /config/scenes/$SCENE_NAME.yaml 
echo You may need to remove entities you do not want to have in de scene manually.
else
echo SCENE FILE ALREADY EXIST! Aborting...
fi