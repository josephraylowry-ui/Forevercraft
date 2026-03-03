$dialog show @s \
{\
  type:"minecraft:confirmation",\
  "body":[\
    {\
      type:"minecraft:item",\
      "item":{\
      id: "$(bodyicon)",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        translate:"menu.mob_manager.equipment.misc.description",\
        "fallback":"Configure Slot:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      type: "minecraft:text",\
      "key": "validmobs",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.validmobs",\
        "fallback": "Entity Tag List For Valid Mob Types"\
      },\
      "initial": "$(validmobs)",\
      "max_length": 1024\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"equipchance",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.equipchance",\
        "fallback":"Equipment Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(equipchance_initial)\
    },\
    {\
      type: "minecraft:text",\
      "key": "equiploottable",\
      "width": 256,\
      "label": {\
        translate: "option.mob_manager.equiploottable",\
        "fallback": "Loot Table For Item"\
      },\
      "initial": "$(equiploottable)",\
      "max_length": 1024\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"rngdmg",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.rngdmg",\
        "fallback":"Randomly Damaged"\
      },\
      "options":[\
        {\
          id:"enabled",\
          "display":{\
            translate:"option.mob_manager.enabled",\
            "fallback":"Enabled",\
            color:"green"\
          }\
        },\
        {\
          id:"disabled",\
          "display":{\
            translate:"option.mob_manager.disabled",\
            "fallback":"Disabled",\
            color:"red"\
          },\
          "initial":$(rngdmg_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"enchantment",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.enchantment",\
        "fallback":"Chance To Be Enchanted"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(enchantment_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"dropchance",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.dropchance",\
        "fallback":"Item Drop Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(dropchance_initial)\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title":{\
    translate:"menu.mob_manager.misc_settings.title",\
    "fallback":"Miscellaneous"\
  },\
  "title":{\
    translate:"menu.mob_manager.main.title",\
    "fallback":"Nice Mob Manager"\
  },\
  "yes":{\
    "label":{\
      translate:"option.mob_manager.confirm",\
      "fallback":"Confirm"\
    },\
    action:{\
      type:"minecraft:dynamic/run_command",\
      "template":"$(command_template)"\
    }\
  },\
  "no":{\
    "label":{\
      translate:"gui.back"\
    },\
    action:{\
      type:"minecraft:show_dialog",\
      "dialog":"evercraft:mobs/mob_equipment"\
    }\
  }\
}