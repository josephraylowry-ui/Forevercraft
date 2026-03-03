$dialog show @s \
{\
  type: "minecraft:confirmation",\
  "body": [\
    {\
      type: "minecraft:item",\
      "item": {\
        id: "minecraft:villager_spawn_egg",\
        "components": {\
          "minecraft:tooltip_display": {\
            "hide_tooltip": true\
          }\
        }\
      },\
      "description": {\
        translate: "menu.mob_manager.villager.settings.description",\
        "fallback": "Configure Villager Settings:"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      type:"minecraft:number_range",\
      "key":"pet",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.villager_pet",\
        "fallback":"Villager Pet Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(pet_initial)\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "villager_follow",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.follow",\
        "fallback": "Villager Follow Players Holding Emerald"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(villager_follow_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "customname",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.customname",\
        "fallback": "Custom Random Names"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(customname_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "breeddiversity",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.breeddiversity",\
        "fallback": "Random Baby Types"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(breeddiversity_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "restock",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.restock",\
        "fallback": "Unlimited Restocks"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(restock_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "gossip",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.gossip",\
        "fallback": "Gossip"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(gossip_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "talking",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.talking",\
        "fallback": "Villagers Talk When Interacted With"\
      },\
      "options": [\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          }\
        },\
        {\
          id: "actionbar",\
          "display": {\
            translate: "option.mob_manager.actionbar",\
            "fallback": "Action Bar",\
            color: "green"\
          },\
          "initial": $(talking_actionbar_initial)\
        },\
        {\
          id: "chat",\
          "display": {\
            translate: "option.mob_manager.chat",\
            "fallback": "Chat",\
            color: "green"\
          },\
          "initial": $(talking_chat_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "villagename",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.villagename",\
        "fallback": "Villagers Name Their Meeting Point"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(villagename_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "villagename_msg",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.villagename_msg",\
        "fallback": "Display Meeting Point Name To Player"\
      },\
      "options": [\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          }\
        },\
        {\
          id: "title",\
          "display": {\
            translate: "option.mob_manager.title",\
            "fallback": "Title",\
            color: "green"\
          },\
          "initial": $(villagename_msg_title_initial)\
        },\
        {\
          id: "actionbar",\
          "display": {\
            translate: "option.mob_manager.actionbar",\
            "fallback": "Action Bar",\
            color: "green"\
          },\
          "initial": $(villagename_msg_actionbar_initial)\
        },\
        {\
          id: "chat",\
          "display": {\
            translate: "option.mob_manager.chat",\
            "fallback": "Chat",\
            color: "green"\
          },\
          "initial": $(villagename_msg_chat_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:text",\
      "key":"locator_color",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.locator_color",\
        "fallback":"Meeting Point Locator Bar Color (Hex)"\
      },\
      "initial":"$(locator_color)",\
      "max_length":9\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"locator_range",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.locator_range",\
        "fallback":"Meeting Point Locator Bar Range"\
      },\
      "start":0,\
      "end":1024,\
      "step":1,\
      "initial":$(locator_range)\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "villagename_rename",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.villagename_rename",\
        "fallback": "Players Can Rename Meeting Point"\
      },\
      "options": [\
        {\
          id: "enabled",\
          "display": {\
            translate: "option.mob_manager.enabled",\
            "fallback": "Enabled",\
            color: "green"\
          }\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(villagename_rename_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "villagecenter_healing",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.villagecenter_healing",\
        "fallback": "Healing Near Meeting Point"\
      },\
      "options": [\
        {\
          id: "always",\
          "display": {\
            translate: "option.mob_manager.always",\
            "fallback": "Always",\
            color: "green"\
          }\
        },\
        {\
          id: "daytime",\
          "display": {\
            translate: "option.mob_manager.daytime",\
            "fallback": "Daytime",\
            color: "green"\
          },\
          "initial": $(villagecenter_healing_daytime_initial)\
        },\
        {\
          id: "nighttime",\
          "display": {\
            translate: "option.mob_manager.nighttime",\
            "fallback": "Nighttime",\
            color: "green"\
          },\
          "initial": $(villagecenter_healing_nighttime_initial)\
        },\
        {\
          id: "disabled",\
          "display": {\
            translate: "option.mob_manager.disabled",\
            "fallback": "Disabled",\
            color: "red"\
          },\
          "initial": $(villagecenter_healing_disabled_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:number_range",\
      "key": "village_heal_distance",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.village_heal_distance",\
        "fallback": "Max Distance For Healing"\
      },\
      "start": 1,\
      "end": 128,\
      "step": 1,\
      "initial": $(village_heal_distance)\
    },\
    {\
      type: "minecraft:text",\
      "key": "validmobs",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.villager.validmobs",\
        "fallback": "Entity Tag List For Meeting Point Healing"\
      },\
      "initial": "$(validmobs)",\
      "max_length": 1024\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "external_title": {\
    translate: "menu.mob_manager.villager.title",\
    "fallback": "Villager Settings"\
  },\
  "title": {\
    translate: "menu.mob_manager.main.title",\
    "fallback": "Nice Mob Manager"\
  },\
  "yes": {\
    "label": {\
      translate: "option.mob_manager.confirm",\
      "fallback": "Confirm"\
    },\
    action: {\
      type: "minecraft:dynamic/run_command",\
      "template": "$(command_template)"\
    }\
  },\
  "no": {\
    "label": {\
      translate: "gui.back"\
    },\
    action: {\
      type: "minecraft:show_dialog",\
      "dialog": "evercraft:mobs/main"\
    }\
  }\
}