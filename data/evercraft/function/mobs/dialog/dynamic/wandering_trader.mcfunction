$dialog show @s \
{\
  type: "minecraft:confirmation",\
  "body": [\
    {\
      type: "minecraft:item",\
      "item": {\
        id: "minecraft:wandering_trader_spawn_egg",\
        "components": {\
          "minecraft:tooltip_display": {\
            "hide_tooltip": true\
          }\
        }\
      },\
      "description": {\
        translate: "menu.mob_manager.wandering_trader.settings.description",\
        "fallback": "Configure Wandering Trader Settings:"\
      }\
    }\
  ],\
  "inputs": [\
    {\
      type: "minecraft:single_option",\
      "key": "customname",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.customname",\
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
      "key": "spawnmsg",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.spawnmsg",\
        "fallback": "Announcement After Spawn"\
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
          "initial": $(spawnmsg_actionbar_initial)\
        },\
        {\
          id: "chat",\
          "display": {\
            translate: "option.mob_manager.chat",\
            "fallback": "Chat",\
            color: "green"\
          },\
          "initial": $(spawnmsg_chat_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "spawnglow",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.spawnglow",\
        "fallback": "Glow Effect After Spawn"\
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
          "initial": $(spawnglow_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "miniblock",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.miniblock",\
        "fallback": "Miniblock Trades"\
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
          "initial": $(miniblock_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:text",\
      "key": "miniblockpayitem",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.miniblockpayitem",\
        "fallback": "Item Used As Payment For Miniblock Trades"\
      },\
      "initial": "$(miniblockpayitem)",\
      "max_length": 1024\
    },\
    {\
      type: "minecraft:number_range",\
      "key": "miniblockpayamount",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.miniblockpayamount",\
        "fallback": "Item Amount For Miniblock Payment"\
      },\
      "start": 1,\
      "end": 64,\
      "step": 1,\
      "initial": $(miniblockpayamount)\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "plushie",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.plushie",\
        "fallback": "Plushie Trades"\
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
          "initial": $(plushie_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:text",\
      "key": "plushiepayitem",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.plushiepayitem",\
        "fallback": "Item Used As Payment For Plushie Trades"\
      },\
      "initial": "$(plushiepayitem)",\
      "max_length": 1024\
    },\
    {\
      type: "minecraft:number_range",\
      "key": "plushiepayamount",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.plushiepayamount",\
        "fallback": "Item Amount For Plushie Payment"\
      },\
      "start": 1,\
      "end": 64,\
      "step": 1,\
      "initial": $(plushiepayamount)\
    },\
    {\
      type: "minecraft:single_option",\
      "key": "treasurebook",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.treasurebook",\
        "fallback": "Treasure Book Trades"\
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
          "initial": $(treasurebook_initial)\
        }\
      ]\
    },\
    {\
      type: "minecraft:text",\
      "key": "treasurebookpayitem",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.treasurebookpayitem",\
        "fallback": "Item Used As Payment For Treasure Book Trades"\
      },\
      "initial": "$(treasurebookpayitem)",\
      "max_length": 1024\
    },\
    {\
      type: "minecraft:number_range",\
      "key": "treasurebookpayamount",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.wandering_trader.treasurebookpayamount",\
        "fallback": "Item Amount For Treasure Book Payment"\
      },\
      "start": 1,\
      "end": 64,\
      "step": 1,\
      "initial": $(treasurebookpayamount)\
    }\
  ],\
  "can_close_with_escape": true,\
  "pause": true,\
  "after_action": "close",\
  "external_title": {\
    translate: "menu.mob_manager.wandering_trader.title",\
    "fallback": "Wandering Trader Settings"\
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