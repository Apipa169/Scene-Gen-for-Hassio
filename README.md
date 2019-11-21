# Scene Generator for Hassio

This add-on is no longer required. Home Assistant 0.102 or higher has an intergraded scene generator.


This add-on is using SceneGen from Home assistant. This add-on is a simple script to bring it to Hass.io.

When started the script will add the current state of **all** lights/switches to a file. The file can be found at /config/scenes/. 

This add-on will only run to generate a scene file and will then end automatically.


### Usage

Add to Configuration.yaml:
```yaml
scene: !include_dir_list scenes
```

1. Add https://github.com/Apipa169/Scene-Gen-for-Hassio in the add-on store.
2. Install the add-on
3. Edit the config (see below)
4. Start the add-on and see the log if everything went fine without errors.
5. Open de scene file at /config/scenes to remove entities you don't want to have in your scene and save it.
6. Scene is now available in Home Assistant. (don't forget to reload scenes)


### Configuration

| config        | used for          |
| ------------- |-------------|
| filter      | Filter entities. See below. |
| scene_name | Name of the scene     |
| url | Url of your Home assistant installation |
| token | Create Long Lived Access Token and put it here |


#### example
```json
{
  "filter": "",
  "scene_name": "name_of_scene",
  "url": "https://homeassistant.domain.com",
  "token": "token"
}
```
##### filter
The filter can be left empty to get all switches and lights. If you want to filter you have to create a file called map.cfg in /config/scenes. This is a .ini formatted file.

Example:
```ini
[Living Room]
light.living_room_front:
light.living_room_back:
[Bedroom]
light.bedside:
```
Put the name(s) between [] in the filter setting of the add-on (comma seperated, no spaces).
