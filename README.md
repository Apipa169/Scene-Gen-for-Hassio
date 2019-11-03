# Scene Generator for Hassio
This addon is using SeneGen from Home assistant. This addon is a simple script to bring it to Hass.io.

When started the script will add the current state of **all** lights/switches to a file. The file can be found at /config/scenes/. Currently you have to edit the file to filter out the entities you don't want to save in the scene.

This addon will only run to generate a scene file and will then end automatically.


### Usage

Add to Configuration.yaml:
```yaml
scene: !include_dir_list scenes
```

<<<<<<< HEAD
1. Add https://github.com/Apipa169/Scene-Gen-for-Hassio in the addon store.
2. Install the addon
3. Edit the config (see below)
4. Start the addon and see the log if everything went fine without errors.
5. Open de scene file at /config/scenes to remove entities you don't want to have in your scene and save it.
6. Scene is now available in Home Assistant. (don't forget to reload scenes)
=======
- Add https://github.com/Apipa169/Scene-Gen-for-Hassio in the addon store.
- Install the addon
- Edit the config (see below)
- Start the addon and see if everything went fine without errors.
- Scene is now available in Home Assistant. (don't forget to reload)
>>>>>>> 0721b28020d7d216f39233b3c38121328d0fe92c


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




  

