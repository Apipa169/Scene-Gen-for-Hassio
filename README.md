# Scene Generator for Hassio
This add-on is using SceneGen from Home assistant. This add-on is a simple script to bring it to Hass.io.

When started the script will add the current state of **all** lights/switches to a file. The file can be found at /config/scenes/. Currently you have to edit the file to filter out the entities you don't want to save in the scene.

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
| types      | can be light and/or switch. Comma seperated (no space) |
| scene_name | name of the scene     |
| url | url of your Home assistant installation |
| token | Create Long Lived Access Token and put it here |


##### example
```json
{
  "types": "light,switch",
  "scene_name": "name_of_scene",
  "url": "https://homeassistant.domain.com",
  "token": "token"
}
```
