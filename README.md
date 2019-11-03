



  # Scene Generator for Hassio
This addon is using SeneGen from Home assistant. This addon is a simple script to bring it to Hass.io.

When started the script will add the current state of all lights/switches to a file. The file can be found at /config/scenes/. Currently you have to edit the file to filter out the entities you don't want to save in the scene.


### Usage

Add to Configuration.yaml:
```yaml
scene: !include_dir_list scenes
```

- Add https://github.com/Apipa169/Scene-Gen-for-Hassio in the addon store.
- Install the addon
- Edit the config (see below)
- Start the addon and see if everything went fine without errors.
- Scene is now available in Home Assistant. (don't forget to reload)


### Configuration

| config        | used for          | 
| ------------- |-------------| 
| types      | can be light and/or switch. Comma seperated (no space) | 
| scene_name | name of the scene     | 
| url | url of your Home assistant installation |
| token | Create Long Lived Access Token and put it here |

```json
{
  "types": "light,switch",
  "scene_name": "name_of_scene",
  "url": "url of your home assistant",
  "token": "token"
}
```




  

