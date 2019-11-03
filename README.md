# Scene Generator for Hassio
This addon is using SeneGen from Home assistant. This addon is a simple script to bring it to Hass.io.

When started the log will show the current state of all lights/switches. This can be copy/pasted into your config. At the moment you have to filter manually after creation.


### Usage
- Add https://github.com/Apipa169/assistant_relay_hassio in the addon store.
- Install the addon.
- Edit the config (see below).
- Start the addon and copy the YAML from the log and pate it into your configuration.


### Configuration

| config        | used for          | 
| ------------- |-------------| 
| types      | can be light and/or switch. Comma seperated (no space) | 
| store_in_folder  | will be used in a next release      | 
| scene_name | name of the scene     | 
| url | url of your Home assistant installation |
| token | Create Long Lived Access Token and put it here |

```json
{
  "types": "light,switch",
  "store_in_folder": "false",
  "scene_name": "name_of_scene",
  "url": "url of your home assistant",
  "token": "token"
}
```


  
