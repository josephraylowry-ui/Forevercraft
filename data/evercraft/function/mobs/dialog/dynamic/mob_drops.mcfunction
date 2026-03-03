$dialog show @s \
{\
  type:"minecraft:confirmation",\
  "body":[\
    {\
      type:"minecraft:item",\
      "item":{\
        id:"minecraft:chest",\
        "components":{\
          "minecraft:tooltip_display":{\
            "hide_tooltip":true\
          }\
        }\
      },\
      "description":{\
        translate:"menu.mob_manager.mob_drops.description",\
        "fallback":"Configure Chances Of Mob Drops:"\
      }\
    }\
  ],\
  "inputs":[\
    {\
      type:"minecraft:number_range",\
      "key":"husksand",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.husksand",\
        "fallback":"Sand From Husk"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(husksand_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"strayice",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.strayice",\
        "fallback":"Ice From Stray"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(strayice_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"beehoneycomb",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.beehoneycomb",\
        "fallback":"Honeycomb From Bee"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(beehoneycomb_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"villageremerald",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.villageremerald",\
        "fallback":"Emerald From Villager"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(villageremerald_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"elderguardianseaheart",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.elderguardianseaheart",\
        "fallback":"Heart of the Sea From Elder Guardian"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(elderguardianseaheart_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"piglingold",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.piglingold",\
        "fallback":"Gold Ingot From Piglin"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(piglingold_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"piglinbrutegoldblock",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.piglinbrutegoldblock",\
        "fallback":"Gold Block From Piglin Brute"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(piglinbrutegoldblock_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"allayshard",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.allayshard",\
        "fallback":"Amethyst Shard From Allay"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(allayshard_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"goatleather",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.goatleather",\
        "fallback":"Leather From Goats"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(goatleather_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"creakingresin",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.creakingresin",\
        "fallback":"Resin Clump From Creaking"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(creakingresin_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"foxsweetberries",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.foxsweetberries",\
        "fallback":"Sweet Berries From Foxes"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(foxsweetberries_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"traderlead",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.traderlead",\
        "fallback":"Lead From Wandering Trader"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(traderlead_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"batmembrane",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.batmembrane",\
        "fallback":"Phantom Membrane From Bat"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(batmembrane_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"dragonegg",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.dragonegg",\
        "fallback":"Dragon Egg From Ender Dragon"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(dragonegg_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"dragonelytra",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.dragonelytra",\
        "fallback":"Elytra From Ender Dragon"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(dragonelytra_initial)\
    },\
    {\
      type:"minecraft:number_range",\
      "key":"shulkerdrop",\
      "width": 256,\
      "label":{\
        translate:"option.mob_manager.shulkerdrop",\
        "fallback":"2nd Shulker Shell From Shulker"\
      },\
      "label_format":"options.percent_value",\
      "start":0,\
      "end":100,\
      "step":1,\
      "initial":$(shulkerdrop_initial)\
    }\
  ],\
  "can_close_with_escape":true,\
  "pause":true,\
  "after_action":"close",\
  "external_title":{\
    translate:"menu.mob_manager.mob_drops.title",\
    "fallback":"Additional Mob Drops"\
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
      "dialog":"evercraft:mobs/main"\
    }\
  }\
}