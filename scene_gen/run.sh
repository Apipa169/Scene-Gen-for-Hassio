CONFIG_PATH=/data/options.json
TYPES=$(jq --raw-output ".types" $CONFIG_PATH)
SCENE_NAME=$(jq --raw-output ".scene_name" $CONFIG_PATH)
URL=$(jq --raw-output ".url" $CONFIG_PATH)
TOKEN=$(jq --raw-output ".token" $CONFIG_PATH)


file="/data/scenegen/scenegen.py"
if [ ! -f "$file" ]
then
echo Now downloading Scene Gen from github. This is only required when you start this addon for the first time.
git clone https://github.com/home-assistant/scenegen.git
echo -----------------------------------
echo -----------------------------------
fi
/data/scenegen/scenegen.py $URL -k $TOKEN --scenename $SCENE_NAME --types $TYPES