$dialog show @s \
{\
  type:"minecraft:confirmation",\
  "body":\
    {\
      type: "minecraft:plain_message",\
      contents: [\
        {"atlas": "minecraft:items",\
        "sprite": "minecraft:item/$(bodyicon)"},\
        " ",\
        {translate: "menu.mob_manager.configure_mob.description_prefix",\
        "fallback": "Configure "},\
        {translate: "entity.minecraft.$(type)",\
        "fallback": "Mob"},\
        {translate: "menu.mob_manager.configure_mob.description_sufix",\
        "fallback": " Settings:"}\
      ]\
    },\
  "inputs":[\
      {\
      type:"minecraft:single_option",\
      "key":"allow_mob",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.allow_mob",\
        "fallback":"Allow Mob"\
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
          "initial":$(allow_mob_initial)\
        }\
      ]\
      },\
      {\
      type:"minecraft:number_range",\
      "key":"mobhead",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.mobhead",\
        "fallback":"Mobhead Drop Chance"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(mobhead_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"scale_min",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.scale_min",\
        "fallback":"Min Scale"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(scale_min)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"scale_max",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.scale_max",\
        "fallback":"Max Scale"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(scale_max)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"health",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.health",\
        "fallback":"Health"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(health)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"follow_range",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.follow_range",\
        "fallback":"Follow Range"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(follow_range)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"safe_fall",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.safe_fall",\
        "fallback":"Safe Fall Distance"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(safe_fall)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"move_speed",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.move_speed",\
        "fallback":"Movement Speed"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(move_speed)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"attck_dmg",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.attck_dmg",\
        "fallback":"Attack Damage"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(attck_dmg)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"tempt_range",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.tempt_range",\
        "fallback":"Tempt Range"\
      },\
      "label_format":"options.percent_value",\
      "start":1,\
      "end":500,\
      "step":1,\
      "initial":$(tempt_range)\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"burn",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.can_burn",\
        "fallback":"Can Burn"\
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
          "initial":$(burn_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"drown",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.can_drown",\
        "fallback":"Can Drown"\
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
          "initial":$(drown_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"pickup",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.can_pickup",\
        "fallback":"Can Pick Up Loot"\
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
          "initial":$(pickup_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"silent",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.is_silent",\
        "fallback":"Is Silent"\
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
          "initial":$(silent_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:single_option",\
      "key":"breed",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.can_breed",\
        "fallback":"Can Breed"\
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
          "initial":$(breed_initial)\
        }\
      ]\
    },\
    {\
      type:"minecraft:text",\
      "key":"locator_color",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.locator_color",\
        "fallback":"Locator Bar Color (Hex)"\
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
        "fallback":"Locator Bar Range"\
      },\
      "start":0,\
      "end":1024,\
      "step":1,\
      "initial":$(locator_range)\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title":{\
    translate:"menu.mob_manager.neutral_mobs.title",\
    "fallback":"Neutral Mobs"\
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
      "template":"function evercraft:mobs/dialog/command_template/neutral {type:$(type)$(command_template)"\
    }\
  },\
  "no":{\
    "label":{\
      translate:"gui.back"\
    },\
    action:{\
      type:"minecraft:show_dialog",\
      "dialog":"evercraft:mobs/neutral"\
    }\
  }\
}