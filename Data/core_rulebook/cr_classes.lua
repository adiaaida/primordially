-- Converted From LST file data\pathfinder\paizo\roleplaying_game\core_rulebook\cr_classes.lst
-- From repository https://github.com/pcgen/pcgen at commit 11ceb52482855f2e5f0f6c108c3dc665b12af237
SetSource({
  SourceLong="Core Rulebook",
  SourceShort="CR",
  SourceWeb="http://paizo.com/store/downloads/pathfinder/pathfinderRPG/v5748btpy88yj",
  SourceDate="2009-08",
})
DefineClass({
  Name="Barbarian",
  Definitions={
    {
      Name="BarbarianLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BarbarianLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  SourcePage="p.31",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return not (character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE")
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Barbarian"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=12,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  ExClass="Ex-Barbarian",
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Brb",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Barbarian",
        },
      },
    },
  },
})
DefineClass({
  Name="Ex-Barbarian",
  Definitions={
    {
      Name="BarbarianLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BarbarianLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  HitDie=12,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Visible=false,
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Brb",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Barbarian",
        },
      },
    },
  },
})
DefineClass({
  Name="Bard",
  SpellStat="CHA",
  Definitions={
    {
      Name="BardLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLBard",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "BardLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Bard",
      },
      Formula="Caster_Level_Bard-CasterLevelBLBard",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Bard",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLBard",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Bard",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Bard\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Bard",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Bard",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Bard",
      },
      Formula="Caster_Level_BL_Stripped_Bard",
    },
  },
  SourcePage="p.34",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  Memorize=false,
  Roles={
    "Skill",
  },
  Types={
    "Base",
    "PC",
    "SpontaneousArcane",
    "Spontaneous",
  },
  Facts={
    ClassType="PC",
    Abb="Brd",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      SpellsPerDay={
        0, 1, },
      SpellsKnown={
        4, 2, },
    },
    {
      Level="2",
      SpellsPerDay={
        0, 2, },
      SpellsKnown={
        5, 3, },
    },
    {
      Level="3",
      SpellsPerDay={
        0, 3, },
      SpellsKnown={
        6, 4, },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 3, 1, },
      SpellsKnown={
        6, 4, 2, },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 4, 2, },
      SpellsKnown={
        6, 4, 3, },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 4, 3, },
      SpellsKnown={
        6, 4, 4, },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 4, 3, 1, },
      SpellsKnown={
        6, 5, 4, 2, },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 4, 4, 2, },
      SpellsKnown={
        6, 5, 4, 3, },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 5, 4, 3, },
      SpellsKnown={
        6, 5, 4, 4, },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 5, 4, 3, 1, },
      SpellsKnown={
        6, 5, 5, 4, 2, },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 5, 4, 3, },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 5, 4, 4, },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 5, 5, 4, 3, 1, },
      SpellsKnown={
        6, 6, 5, 5, 4, 2, },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 5, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 6, 5, 4, 3, },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 5, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 6, 5, 4, 4, },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 5, 5, 5, 4, 3, 1, },
      SpellsKnown={
        6, 6, 6, 5, 5, 4, 2, },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 5, 5, 5, 4, 4, 2, },
      SpellsKnown={
        6, 6, 6, 6, 5, 4, 3, },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 5, 5, 5, 5, 4, 3, },
      SpellsKnown={
        6, 6, 6, 6, 5, 4, 4, },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 5, 5, 5, 5, 5, 4, },
      SpellsKnown={
        6, 6, 6, 6, 5, 5, 4, },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 5, 5, 5, 5, 5, 5, },
      SpellsKnown={
        6, 6, 6, 6, 6, 5, 5, },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Bard",
        },
      },
    },
  },
})
DefineClass({
  Name="Cleric",
  SpellStat="WIS",
  Definitions={
    {
      Name="ClericLVL",
      InitialValue=0,
    },
    {
      Name="ClericDomainCount",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLCleric",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="DOMAIN",
      Variables={
        "NUMBER",
      },
      Formula="ClericDomainCount",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClericLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "DomainLVL",
      },
      Formula="ClericLVL",
    },
    {
      Category="VAR",
      Variables={
        "ClericDomainCount",
      },
      Formula="2",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Cleric",
      },
      Formula="Caster_Level_Cleric-CasterLevelBLCleric",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Cleric",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLCleric",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Cleric",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Cleric\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Cleric",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Cleric",
      },
      Formula="Caster_Level_BL_Stripped_Cleric",
    },
  },
  SourcePage="p.38",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  BonusLanguages={
    {
      Name="Abyssal",
    },
    {
      Name="Celestial",
    },
    {
      Name="Infernal",
    },
  },
  Roles={
    "Cleric",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Clr",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    {
      Level=0,
    },
    {
      Level=1,
    },
    {
      Level=2,
    },
    {
      Level=3,
    },
    {
      Level=4,
    },
    {
      Level=5,
    },
    {
      Level=6,
    },
    {
      Level=7,
    },
    {
      Level=8,
    },
    {
      Level=9,
    },
  },
  Levels={
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Good",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Good"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Evil",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Evil"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Lawful",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Lawful"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Chaotic",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Chaotic"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Cleric",
        },
      },
    },
    {
      Level="Start=1,Repeat=1",
      Definitions={
        {
          Name="ClericSkillPts",
          InitialValue=0,
        },
      },
      Bonuses={
        {
          Category="SKILLPOOL",
          Variables={
            "NUMBER",
          },
          Formula="ClericSkillPts",
        },
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
    },
  },
})
DefineClass({
  Name="Druid",
  SpellStat="WIS",
  Definitions={
    {
      Name="DruidLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLDruid",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DruidLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Druid",
      },
      Formula="Caster_Level_Druid-CasterLevelBLDruid",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Druid",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLDruid",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Druid",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Druid\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Druid",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Druid",
      },
      Formula="Caster_Level_BL_Stripped_Druid",
    },
  },
  SourcePage="p.48",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "NG" or character.Alignment == "LN" or character.Alignment == "TN" or character.Alignment == "CN" or character.Alignment == "NE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Druid"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  BonusLanguages={
    {
      Name="Sylvan",
    },
  },
  Roles={
    "Druid",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Drd",
    SpellType="Divine",
  },
  AutomaticLanguages={
    {
      Name="Druidic",
    },
  },
  AutomaticKnownSpells={
    {
      Level=0,
    },
    {
      Level=1,
    },
    {
      Level=2,
    },
    {
      Level=3,
    },
    {
      Level=4,
    },
    {
      Level=5,
    },
    {
      Level=6,
    },
    {
      Level=7,
    },
    {
      Level=8,
    },
    {
      Level=9,
    },
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Druid",
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Good",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Good"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Evil",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Evil"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Lawful",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Lawful"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="1",
      ProhibitedSpells={
        {
          Alignment="Chaotic",
          Conditions={
            function (character)
              return (character.Variables["ProhibitSpell_Alignment_Chaotic"] == 1)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Air",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Air")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Animal",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Animal")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Earth",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Earth")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Fire",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Fire")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Plant",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Plant")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Water",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Water")
              end)
            end,
          },
        },
      },
    },
    {
      Level="0",
      Domains={
        {
          Names={
            "Weather",
          },
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Special Ability" and (ability.Name == "Druid Domain ~ Weather")
              end)
            end,
          },
        },
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
    },
  },
})
DefineClass({
  Name="Fighter",
  Definitions={
    {
      Name="FighterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "FighterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  SourcePage="p.55",
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Ftr",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Fighter",
        },
      },
    },
  },
})
DefineClass({
  Name="Monk",
  Definitions={
    {
      Name="FlurryOfBlows",
      InitialValue=0,
    },
    {
      Name="MonkLVL",
      InitialValue=0,
    },
    {
      Name="KiPoolWis",
      InitialValue=0,
    },
    {
      Name="MonkFeatQualify",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="VAR",
      Variables={
        "FlurryOfBlows",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "MonkLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "KiPoolWis",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "KiPool",
      },
      Formula="1",
    },
  },
  SourcePage="p.56",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LG" or character.Alignment == "LN" or character.Alignment == "LE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Monk"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Roles={
    "None",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Mnk",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Monk",
        },
      },
    },
    {
      Level="1",
    },
  },
})
DefineClass({
  Name="Paladin",
  SpellStat="CHA",
  Definitions={
    {
      Name="PaladinLVL",
      InitialValue=0,
    },
    {
      Name="PaladinDomainCount",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLPaladin",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="DOMAIN",
      Variables={
        "NUMBER",
      },
      Formula="PaladinDomainCount",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PaladinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Paladin",
      },
      Formula="Caster_Level_Paladin-CasterLevelBLPaladin",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Paladin",
      },
      Formula="CL+Caster_Level_Bonus-3+CasterLevelBLPaladin",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Paladin",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Paladin\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Paladin",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Paladin",
      },
      Formula="Caster_Level_BL_Stripped_Paladin",
      Conditions={
        function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Paladin" and level >= 4)
          end)
        end,
      },
    },
  },
  SourcePage="p.60",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LG"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Paladin"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
  },
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  ExClass="Ex-Paladin",
  ItemCreationCasterLevel="CL-3",
  Roles={
    "None",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Pld",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    {
      Level=1,
    },
    {
      Level=2,
    },
    {
      Level=3,
    },
    {
      Level=4,
    },
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Paladin",
        },
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 0, },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 1, },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 1, 0, },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 1, 1, },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 2, 1, 0, },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 2, 1, 1, },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 2, 2, 1, },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 3, 2, 1, 0, },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 3, 2, 1, 1, },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 3, 2, 2, 1, },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 3, 3, 2, 1, },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 4, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 4, 3, 2, 2, },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 4, 3, 3, 2, },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 4, 4, 3, 3, },
    },
  },
})
DefineClass({
  Name="Ex-Paladin",
  Definitions={
    {
      Name="PaladinLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PaladinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Visible=false,
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="XPal",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Paladin",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Paladin",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy" or ability.Type == "PaladinArmorProficiencyLight" or ability.Type == "PaladinArmorProficiencyMedium" or ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Weapon Prof ~ Simple",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinWeaponProficiencies")
              end))
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Heavy",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyHeavy")
              end))
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Light",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyLight")
              end))
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Armor Prof ~ Medium",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinArmorProficiencyMedium")
              end))
            end,
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Internal",
          Nature="AUTOMATIC",
          Name="Shield Prof",
          Conditions={
            function (character)
              return not (1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "PaladinArmorProficiency" or ability.Type == "PaladinShieldProf" or ability.Type == "PaladinShieldProficiency")
              end))
            end,
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Ranger",
  SpellStat="WIS",
  Definitions={
    {
      Name="RangerLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLRanger",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "RangerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Ranger",
      },
      Formula="Caster_Level_Ranger-CasterLevelBLRanger",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Ranger",
      },
      Formula="CL+Caster_Level_Bonus-3+CasterLevelBLRanger",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Ranger",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Ranger\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Ranger",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Ranger",
      },
      Formula="Caster_Level_Ranger",
      Conditions={
        function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Ranger" and level >= 4)
          end)
        end,
      },
    },
  },
  Abilities={
    {
      Category="Internal",
      Nature="AUTOMATIC",
      Name="Class Skills ~ Ranger",
      Conditions={
        function (character)
          return not (1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Archetype" and (ability.Type == "RangerClassSkills")
          end))
        end,
      },
    },
  },
  SourcePage="p.64",
  HitDie=10,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  ItemCreationCasterLevel="CL-3",
  Roles={
    "Combat",
    "Skill",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Rgr",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    {
      Level=1,
    },
    {
      Level=2,
    },
    {
      Level=3,
    },
    {
      Level=4,
    },
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Ranger",
        },
      },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 0, },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 1, },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 1, 0, },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 1, 1, },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 2, 1, 0, },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 2, 1, 1, },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 2, 2, 1, },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 3, 2, 1, 0, },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 3, 2, 1, 1, },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 3, 2, 2, 1, },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 3, 3, 2, 1, },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 4, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 4, 3, 2, 2, },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 4, 3, 3, 2, },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 4, 4, 3, 3, },
    },
    {
      Level="1",
      Definitions={
        {
          Name="DisableRangerHuntersBond",
          InitialValue=0,
        },
      },
      Bonuses={
        {
          Category="VAR",
          Variables={
            "DisableRangerHuntersBond",
          },
          Formula="1",
          Conditions={
            function (character)
              return 1 <= #filter(character.Abilities, function (ability)
                return ability.Category == "Archetype" and (ability.Type == "RangerHuntersBond")
              end)
            end,
          },
        },
      },
    },
  },
})
DefineClass({
  Name="Rogue",
  Definitions={
    {
      Name="RogueLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "RogueLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  SourcePage="p.67",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=8,
  Roles={
    "Skill",
  },
  Types={
    "Base",
    "PC",
    "Rogue",
  },
  Facts={
    ClassType="PC",
    Abb="Rog",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Rogue",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Rogue",
        },
      },
    },
  },
})
DefineClass({
  Name="Sorcerer",
  SpellStat="CHA",
  Definitions={
    {
      Name="SorcererLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLSorcerer",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "SorcererLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Sorcerer",
      },
      Formula="Caster_Level_Sorcerer-CasterLevelBLSorcerer",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Sorcerer",
      },
      Formula="CL+Caster_Level_Bonus+CasterLevelBLSorcerer",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Sorcerer",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Sorcerer\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Sorcerer",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Sorcerer",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Sorcerer",
      },
      Formula="Caster_Level_BL_Stripped_Sorcerer",
    },
  },
  SourcePage="p.70",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Memorize=false,
  Roles={
    "Sorcerer",
  },
  Types={
    "Base",
    "PC",
    "SpontaneousArcane",
    "Spontaneous",
  },
  Facts={
    ClassType="PC",
    Abb="Sor",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Sorcerer",
        },
      },
    },
    {
      Level="1",
      SpellsPerDay={
        0, 3, },
      SpellsKnown={
        4, 2, },
    },
    {
      Level="2",
      SpellsPerDay={
        0, 4, },
      SpellsKnown={
        5, 2, },
    },
    {
      Level="3",
      SpellsPerDay={
        0, 5, },
      SpellsKnown={
        5, 3, },
    },
    {
      Level="4",
      SpellsPerDay={
        0, 6, 3, },
      SpellsKnown={
        6, 3, 1, },
    },
    {
      Level="5",
      SpellsPerDay={
        0, 6, 4, },
      SpellsKnown={
        6, 4, 2, },
    },
    {
      Level="6",
      SpellsPerDay={
        0, 6, 5, 3, },
      SpellsKnown={
        7, 4, 2, 1, },
    },
    {
      Level="7",
      SpellsPerDay={
        0, 6, 6, 4, },
      SpellsKnown={
        7, 5, 3, 2, },
    },
    {
      Level="8",
      SpellsPerDay={
        0, 6, 6, 5, 3, },
      SpellsKnown={
        8, 5, 3, 2, 1, },
    },
    {
      Level="9",
      SpellsPerDay={
        0, 6, 6, 6, 4, },
      SpellsKnown={
        8, 5, 4, 3, 2, },
    },
    {
      Level="10",
      SpellsPerDay={
        0, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 4, 3, 2, 1, },
    },
    {
      Level="11",
      SpellsPerDay={
        0, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 3, 2, },
    },
    {
      Level="12",
      SpellsPerDay={
        0, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 3, 2, 1, },
    },
    {
      Level="13",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 3, 2, },
    },
    {
      Level="14",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 3, 2, 1, },
    },
    {
      Level="15",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 2, },
    },
    {
      Level="16",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="17",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="18",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 5, 3, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 2, 1, },
    },
    {
      Level="19",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 6, 4, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 3, 2, },
    },
    {
      Level="20",
      SpellsPerDay={
        0, 6, 6, 6, 6, 6, 6, 6, 6, 6, },
      SpellsKnown={
        9, 5, 5, 4, 4, 4, 3, 3, 3, 3, },
    },
  },
})
DefineClass({
  Name="Wizard",
  SpellStat="INT",
  Definitions={
    {
      Name="DisallowWizardArcaneSchoolArchetype",
      InitialValue=0,
    },
    {
      Name="WizardLVL",
      InitialValue=0,
    },
    {
      Name="SpellMasteryQualify",
      InitialValue=0,
    },
    {
      Name="Caster_Level_BL_Stripped_Wizard",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLWizard",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "WizardLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "SpellMasteryQualify",
      },
      Formula="1",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Wizard",
      },
      Formula="Caster_Level_Wizard-CasterLevelBLWizard",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Wizard",
      },
      Formula="WizardLVL+Caster_Level_Bonus+CasterLevelBLWizard",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Wizard",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Wizard\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Arcane",
      },
      Formula="Caster_Level_Wizard",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Total__Arcane",
      },
      Formula="Caster_Level_Wizard",
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Wizard",
      },
      Formula="Caster_Level_BL_Stripped_Wizard",
    },
  },
  SourcePage="p.77",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  AllowBaseClass=false,
  Spellbook=true,
  Roles={
    "Wizard",
  },
  Types={
    "Base",
    "PC",
  },
  Facts={
    ClassType="PC",
    Abb="Wiz",
    SpellType="Arcane",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Wizard",
        },
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
    },
    {
      Level="2",
      SpellsPerDay={
        4, 2, },
    },
    {
      Level="3",
      SpellsPerDay={
        4, 2, 1, },
    },
    {
      Level="4",
      SpellsPerDay={
        4, 3, 2, },
    },
    {
      Level="5",
      SpellsPerDay={
        4, 3, 2, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        4, 3, 3, 2, },
    },
    {
      Level="7",
      SpellsPerDay={
        4, 4, 3, 2, 1, },
    },
    {
      Level="8",
      SpellsPerDay={
        4, 4, 3, 3, 2, },
    },
    {
      Level="9",
      SpellsPerDay={
        4, 4, 4, 3, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        4, 4, 4, 3, 3, 2, },
    },
    {
      Level="11",
      SpellsPerDay={
        4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="12",
      SpellsPerDay={
        4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="13",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="14",
      SpellsPerDay={
        4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="15",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="16",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="17",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 3, 3, 2, },
    },
    {
      Level="19",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 3, 3, },
    },
    {
      Level="20",
      SpellsPerDay={
        4, 4, 4, 4, 4, 4, 4, 4, 4, 4, },
    },
  },
  SubClasses={
    {
      Choice={
        Kind="SCHOOL",
        Value="Abjuration",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Abjuration School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Abjurer",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Conjuration",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Conjuration School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Conjurer",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Divination",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Divination School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Diviner",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Enchantment",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Enchantment School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Enchanter",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Evocation",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Evocation School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Evoker",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Illusion",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Illusion School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Illusionist",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Necromancy",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Necromancy School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Necromancer",
    },
    {
      Choice={
        Kind="SCHOOL",
        Value="Transmutation",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Transmutation School",
            },
          },
          Conditions={
            function (character)
              return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
            end,
          },
        },
      },
      Name="Transmuter",
    },
    {
      Choice={
        Kind="",
        Value="",
      },
      Cost=0,
      Levels={
        {
          Level="1",
          Abilities={
            {
              Category="Wizard Class Feature",
              Nature="AUTOMATIC",
              Name="Universal School",
              Conditions={
                function (character)
                  return (character.Variables["Wizard_CF_ArcaneSchool"] == 0)
                end,
                function (character)
                  return (character.Variables["DisallowWizardArcaneSchoolArchetype"] == 0)
                end,
              },
            },
          },
        },
      },
      Name="Universalist",
    },
  },
})
DefineClass({
  Name="Arcane Archer",
  Definitions={
    {
      Name="ArcaneArcherLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArcaneArcherLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Perception",
    "Ride",
    "Stealth",
    "Survival",
  },
  SourcePage="p.374",
  Conditions={
    function (character)
      return 2 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Point-Blank Shot" or ability.Name == "Precise Shot")
      end)
    end,
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Weapon Focus (Longbow)" or ability.Name == "Weapon Focus (Shortbow)")
      end)
    end,
    function (character)
      return (character.SpellCount("Arcane", 1)) >= 1
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Arc",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="CLASS",
          Nature="AUTOMATIC",
          Name="Arcane Archer",
        },
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
  },
})
DefineClass({
  Name="Arcane Trickster",
  Definitions={
    {
      Name="ArcaneTricksterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ArcaneTricksterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Appraise",
    "Bluff",
    "Climb",
    "Diplomacy",
    "Disable Device",
    "Disguise",
    "Escape Artist",
    "TYPE=Knowledge",
    "Perception",
    "Sense Motive",
    "Sleight of Hand",
    "Spellcraft",
    "Stealth",
    "Swim",
  },
  SourcePage="p.376",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "NG" or character.Alignment == "TN" or character.Alignment == "NE" or character.Alignment == "CG" or character.Alignment == "CN" or character.Alignment == "CE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Arcane_Trickster"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return ((character.BestSkillOfType("Disable Device").ranks >= 4 and 1 or 0) + (character.BestSkillOfType("Escape Artist").ranks >= 4 and 1 or 0) + (character.BestSkillOfType("Knowledge (Arcana)").ranks >= 4 and 1 or 0)) >= 3
    end,
    function (character)
      return (character.HasSpell("Mage Hand") and 1 or 0) >= 1
    end,
    function (character)
      return (character.SpellCount("Arcane", 2)) >= 1
    end,
    function (character)
      return (character.Variables["SneakAttackDice"] >= 2)
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Art",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Arcane Trickster",
        },
      },
    },
  },
})
DefineClass({
  Name="Assassin",
  Definitions={
    {
      Name="AssassinLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AssassinLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Climb",
    "Diplomacy",
    "Disable Device",
    "Disguise",
    "Escape Artist",
    "Intimidate",
    "Linguistics",
    "Perception",
    "Sense Motive",
    "Sleight of Hand",
    "Stealth",
    "Swim",
    "Use Magic Device",
  },
  SourcePage="p.378",
  Conditions={
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Alignment == "LE" or character.Alignment == "NE" or character.Alignment == "CE"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        return (character.Variables["BypassClassAlignment_Assassin"] == 1)
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return ((character.BestSkillOfType("Disguise").ranks >= 2 and 1 or 0) + (character.BestSkillOfType("Stealth").ranks >= 5 and 1 or 0)) >= 2
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Asn",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Assassin",
        },
      },
    },
  },
})
DefineClass({
  Name="Dragon Disciple",
  Definitions={
    {
      Name="DragonDiscipleLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DragonDiscipleLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Diplomacy",
    "Escape Artist",
    "Fly",
    "TYPE=Knowledge",
    "Perception",
    "Spellcraft",
  },
  SourcePage="p.380",
  Conditions={
    function (character)
      return (#filter(character.Languages, function (lang)
      if lang.Name == "Draconic" then return true end
       end)) >= 1
    end,
    function (character)
      local count = 0
      local subCondition
      subCondition = function (character)
        return character.Facts["ABILITIES"]["QualifiedForDragonDisciple"] == "true"
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return any(character.Classes, function (class) return class.Memorize == false end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return any(character.Classes, function (class) return contains(class.Types, "Arcane") end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return not (1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Sorcerer" and level >= 1)
          end))
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 3
      end
      if subCondition(character) then
        count = count + 1
      end
      subCondition = function (character)
        local count = 0
        local subCondition
        subCondition = function (character)
          return 1 <= #filter(ipairs(character.ClassLevels),
          function (class, level)
            return (class == "Sorcerer" and level >= 1)
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        subCondition = function (character)
          return 1 <= #filter(character.Abilities, function (ability)
            return ability.Category == "Special Ability" and (ability.Name == "Sorcerer Bloodline ~ Draconic")
          end)
        end
        if subCondition(character) then
          count = count + 1
        end
        return count >= 2
      end
      if subCondition(character) then
        count = count + 1
      end
      return count >= 1
    end,
    function (character)
      return not (((any(character.Race.RaceTypes, function (type) stringMatch(type, "Dragon") end) and 1 or 0)) >= 1)
    end,
    function (character)
      return ((character.BestSkillOfType("Knowledge (Arcana)").ranks >= 5 and 1 or 0)) >= 1
    end,
    function (character)
      return not (((any(character.Templates, function (template) return stringMatch(template.Name, "Half Dragon") end) and 1 or 0)) >= 1)
    end,
  },
  HitDie=12,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="DrD",
  },
  Levels={
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Dragon Disciple",
        },
      },
    },
  },
})
DefineClass({
  Name="Duelist",
  Definitions={
    {
      Name="DuelistLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "DuelistLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Escape Artist",
    "Perception",
    "TYPE=Perform",
    "Sense Motive",
  },
  SourcePage="p.382",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Dodge" or ability.Name == "Mobility" or ability.Name == "Weapon Finesse")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Acrobatics").ranks >= 2 and 1 or 0) + (character.Skill("(400,100): Perform").ranks >= 2 and 1 or 0)) >= 2
    end,
    function (character)
      return character.TotalAttackBonus >= 6
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Dul",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Duelist",
        },
      },
    },
  },
})
DefineClass({
  Name="Eldritch Knight",
  Definitions={
    {
      Name="EldritchKnightLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABFull",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "EldritchKnightLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Climb",
    "Knowledge (Arcana)",
    "Knowledge (Nobility)",
    "Linguistics",
    "Ride",
    "Sense Motive",
    "Spellcraft",
    "Swim",
  },
  SourcePage="p.384",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "Internal" and (ability.Name == "Weapon Prof ~ Martial")
      end)
    end,
    function (character)
      return (character.SpellCount("Arcane", 3)) >= 1
    end,
  },
  HitDie=10,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Elk",
  },
  Levels={
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Eldritch Knight",
        },
      },
    },
  },
})
DefineClass({
  Name="Loremaster",
  Definitions={
    {
      Name="LoremasterLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "LoremasterLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Diplomacy",
    "Handle Animal",
    "Heal",
    "TYPE=Knowledge",
    "Linguistics",
    "TYPE=Perform",
    "Spellcraft",
    "Use Magic Device",
  },
  SourcePage="p.385",
  Conditions={
    function (character)
      return 1 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Skill Focus (Knowledge%)")
      end)
    end,
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "TYPE=Metamagic" or ability.Name == "TYPE=ItemCreation")
      end)
    end,
    function (character)
      return ((character.Skill("(431,145): Knowledge").ranks >= 7 and 1 or 0) + (character.Skill("(431,162): Knowledge").ranks >= 7 and 1 or 0)) >= 2
    end,
    function (character)
      return ((#filter(character.SpellsKnown, function (spell) return spell.School == "Divination" and spell.Level >= 3 end))) >= 1
    end,
    function (character)
      return ((#filter(character.SpellsKnown, function (spell) return spell.School == "Divination" and spell.Level >= 0 end))) >= 7
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=4,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Lor",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Any=true,
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Loremaster",
        },
      },
    },
  },
})
DefineClass({
  Name="Mystic Theurge",
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Knowledge (Arcana)",
    "Knowledge (Religion)",
    "Sense Motive",
    "Spellcraft",
  },
  SourcePage="p.387",
  Conditions={
    function (character)
      return ((character.BestSkillOfType("Knowledge (Arcana)").ranks >= 3 and 1 or 0) + (character.BestSkillOfType("Knowledge (Religion)").ranks >= 3 and 1 or 0)) >= 2
    end,
    function (character)
      return (character.SpellCount("Divine", 2)) >= 1
    end,
    function (character)
      return (character.SpellCount("Arcane", 2)) >= 1
    end,
  },
  HitDie=6,
  MaxLevel=10,
  SkillPointsPerLevel=2,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Myt",
  },
  Levels={
    {
      Level="1",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="2",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="3",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="4",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="5",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="6",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="7",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="8",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="9",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="10",
      AddedSpellCasterLevels={
        {
          Type="Arcane",
        },
        {
          Type="Divine",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Mystic Theurge",
        },
      },
    },
  },
})
DefineClass({
  Name="Pathfinder Chronicler",
  Definitions={
    {
      Name="PathfinderChroniclerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
        "BASE.Fortitude",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "PathfinderChroniclerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Bluff",
    "Diplomacy",
    "Disguise",
    "Escape Artist",
    "Intimidate",
    "TYPE=Knowledge",
    "Linguistics",
    "Perception",
    "TYPE=Perform",
    "Ride",
    "Sense Motive",
    "Sleight of Hand",
    "Survival",
    "Use Magic Device",
  },
  SourcePage="p.388",
  Conditions={
    function (character)
      return ((character.BestSkillOfType("Linguistics").ranks >= 3 and 1 or 0) + (character.BestSkillOfType("Perform (Oratory)").ranks >= 5 and 1 or 0) + (character.BestSkillOfType("Profession (Scribe)").ranks >= 5 and 1 or 0)) >= 3
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=8,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="PfC",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Pathfinder Chronicler",
        },
      },
    },
  },
})
DefineClass({
  Name="Shadowdancer",
  Definitions={
    {
      Name="ShadowdancerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Reflex",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/2",
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Will",
      },
      Formula="(classlevel(\"APPLIEDAS=NONEPIC\")+1)/3",
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ShadowdancerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Acrobatics",
    "Bluff",
    "Diplomacy",
    "Disguise",
    "Escape Artist",
    "Perception",
    "TYPE=Perform",
    "Sleight of Hand",
    "Stealth",
  },
  SourcePage="p.391",
  Conditions={
    function (character)
      return 3 <= #filter(character.Abilities, function (ability)
        return ability.Category == "FEAT" and (ability.Name == "Combat Reflexes" or ability.Name == "Dodge" or ability.Name == "Mobility")
      end)
    end,
    function (character)
      return ((character.BestSkillOfType("Stealth").ranks >= 5 and 1 or 0) + (character.BestSkillOfType("Perform (Dance)").ranks >= 2 and 1 or 0)) >= 2
    end,
  },
  HitDie=8,
  MaxLevel=10,
  SkillPointsPerLevel=6,
  Types={
    "PC",
    "Prestige",
  },
  Facts={
    ClassType="PC",
    Abb="Shd",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Class",
          Nature="AUTOMATIC",
          Name="Shadowdancer",
        },
      },
    },
  },
})
DefineClass({
  Name="Adept",
  SpellStat="WIS",
  SpellListChoiceCount="1",
  SpellListChoices={
    "Adept",
  },
  Definitions={
    {
      Name="AdeptLVL",
      InitialValue=0,
    },
    {
      Name="CasterLevelBLAdept",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AdeptLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_BL_Stripped_Adept",
      },
      Formula="Caster_Level_Adept-CasterLevelBLAdept",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Adept",
      },
      Formula="AdeptLVL+Caster_Level_Bonus+CasterLevelBLAdept",
    },
    {
      Category="VAR",
      Variables={
        "CasterLevelBL_x_Adept",
      },
      Formula="charbonusto(\"PCLEVEL\",\"Adept\")",
    },
    {
      Category="VAR",
      Variables={
        "Caster_Level_Highest__Divine",
      },
      Formula="Caster_Level_Adept",
      Type={
        Name="Base",
        Replace=false,
        Stack=false,
      },
    },
    {
      Category="CASTERLEVEL",
      Variables={
        "Adept",
      },
      Formula="Caster_Level_BL_Stripped_Adept",
    },
  },
  ClassSkills={
    "TYPE=Craft",
    "Handle Animal",
    "Heal",
    "TYPE=Knowledge",
    "TYPE=Profession",
    "Spellcraft",
    "Survival",
  },
  SourcePage="p.448",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Adp",
    SpellType="Divine",
  },
  AutomaticKnownSpells={
    {
      Level=0,
    },
    {
      Level=1,
    },
    {
      Level=2,
    },
    {
      Level=3,
    },
    {
      Level=4,
    },
    {
      Level=5,
    },
  },
  Levels={
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=0,
              Spells={
                "Create Water",
                "Detect Magic",
                "Ghost Sound",
                "Guidance",
                "Light",
                "Mending",
                "Purify Food and Drink",
                "Read Magic",
                "Stabilize",
                "Touch of Fatigue",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=1,
              Spells={
                "Bless",
                "Burning Hands",
                "Cause Fear",
                "Command",
                "Comprehend Languages",
                "Cure Light Wounds",
                "Detect Chaos",
                "Detect Evil",
                "Detect Good",
                "Detect Law",
                "Endure Elements",
                "Obscuring Mist",
                "Protection from Chaos",
                "Protection from Evil",
                "Protection from Good",
                "Protection from Law",
                "Sleep",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=2,
              Spells={
                "Aid",
                "Animal Trance",
                "Bear's Endurance",
                "Bull's Strength",
                "Cat's Grace",
                "Cure Moderate Wounds",
                "Darkness",
                "Delay Poison",
                "Invisibility",
                "Mirror Image",
                "Resist Energy",
                "Scorching Ray",
                "See Invisibility",
                "Web",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=3,
              Spells={
                "Animate Dead",
                "Bestow Curse",
                "Contagion",
                "Continual Flame",
                "Cure Serious Wounds",
                "Daylight",
                "Deeper Darkness",
                "Lightning Bolt",
                "Neutralize Poison",
                "Remove Curse",
                "Remove Disease",
                "Tongues",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=4,
              Spells={
                "Cure Critical Wounds",
                "Minor Creation",
                "Polymorph",
                "Restoration",
                "Stoneskin",
                "Wall of Fire",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      SpellLists={
        {
          Kind="Class",
          Name="Adept",
          Levels={
            {
              SpellLevel=5,
              Spells={
                "Baleful Polymorph",
                "Break Enchantment",
                "Commune",
                "Heal",
                "Major Creation",
                "Raise Dead",
                "True Seeing",
                "Wall of Stone",
              },
            },
          },
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Automatic Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
    },
    {
      Level="1",
      SpellsPerDay={
        3, 1, },
    },
    {
      Level="2",
      SpellsPerDay={
        3, 1, },
      Bonuses={
        {
          Category="VAR",
          Variables={
            "FamiliarMasterLVL",
          },
          Formula="CL",
        },
      },
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Arcane Bond ~ Familiar",
        },
      },
    },
    {
      Level="3",
      SpellsPerDay={
        3, 2, },
    },
    {
      Level="4",
      SpellsPerDay={
        3, 2, 0, },
    },
    {
      Level="5",
      SpellsPerDay={
        3, 2, 1, },
    },
    {
      Level="6",
      SpellsPerDay={
        3, 2, 1, },
    },
    {
      Level="7",
      SpellsPerDay={
        3, 3, 2, },
    },
    {
      Level="8",
      SpellsPerDay={
        3, 3, 2, 0, },
    },
    {
      Level="9",
      SpellsPerDay={
        3, 3, 2, 1, },
    },
    {
      Level="10",
      SpellsPerDay={
        3, 3, 2, 1, },
    },
    {
      Level="11",
      SpellsPerDay={
        3, 3, 3, 2, },
    },
    {
      Level="12",
      SpellsPerDay={
        3, 3, 3, 2, 0, },
    },
    {
      Level="13",
      SpellsPerDay={
        3, 3, 3, 2, 1, },
    },
    {
      Level="14",
      SpellsPerDay={
        3, 3, 3, 2, 1, },
    },
    {
      Level="15",
      SpellsPerDay={
        3, 3, 3, 3, 2, },
    },
    {
      Level="16",
      SpellsPerDay={
        3, 3, 3, 3, 2, 0, },
    },
    {
      Level="17",
      SpellsPerDay={
        3, 3, 3, 3, 2, 1, },
    },
    {
      Level="18",
      SpellsPerDay={
        3, 3, 3, 3, 2, 1, },
    },
    {
      Level="19",
      SpellsPerDay={
        3, 3, 3, 3, 3, 2, },
    },
    {
      Level="20",
      SpellsPerDay={
        3, 3, 3, 3, 3, 2, },
    },
  },
})
DefineClass({
  Name="Aristocrat",
  Definitions={
    {
      Name="AristocratLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "AristocratLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Appraise",
    "Bluff",
    "TYPE=Craft",
    "Diplomacy",
    "Disguise",
    "Handle Animal",
    "Intimidate",
    "TYPE=Knowledge",
    "Linguistics",
    "Perception",
    "TYPE=Perform",
    "TYPE=Profession",
    "Ride",
    "Sense Motive",
    "Swim",
    "Survival",
  },
  SourcePage="p.449",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=4,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Ari",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Martial Weapon Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Armor Proficiency (Medium)",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Tower Shield Proficiency",
        },
      },
    },
  },
})
DefineClass({
  Name="Commoner",
  Definitions={
    {
      Name="CommonerLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABPoor",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "CommonerLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  ClassSkills={
    "Climb",
    "TYPE=Craft",
    "Handle Animal",
    "Perception",
    "TYPE=Profession",
    "Ride",
    "Swim",
  },
  WeaponBonusProficiencySelections={
    {
      "TYPE=Simple", 
    }},
  SourcePage="p.449",
  HitDie=6,
  MaxLevel=20,
  SkillPointsPerLevel=2,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Com",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="Weapon and Armor Proficiency ~ Commoner",
        },
      },
    },
  },
})
DefineClass({
  Name="Expert",
  Definitions={
    {
      Name="ExpertLVL",
      InitialValue=0,
    },
  },
  Bonuses={
    {
      Category="COMBAT",
      Variables={
        "BASEAB",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")*3/4",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateBABProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Fortitude",
        "BASE.Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/3",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="SAVE",
      Variables={
        "BASE.Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")/2+2",
      Conditions={
        function (character)
          return (character.Variables["UseAlternateSaveProgression"] == 0)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassBABModerate",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalBAB"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ExpertLVL",
      },
      Formula="CL",
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Fortitude",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSavePoor_Reflex",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
    {
      Category="VAR",
      Variables={
        "ClassSaveGood_Will",
      },
      Formula="classlevel(\"APPLIEDAS=NONEPIC\")",
      Conditions={
        function (character)
          return (character.Variables["UseFractionalSave"] == 1)
        end,
      },
    },
  },
  SourcePage="p.450",
  HitDie=8,
  MaxLevel=20,
  SkillPointsPerLevel=6,
  Types={
    "Base",
    "NPC",
  },
  Facts={
    ClassType="NPC",
    Abb="Exp",
  },
  Levels={
    {
      Level="1",
      Abilities={
        {
          Category="Special Ability",
          Nature="AUTOMATIC",
          Name="All Automatic Proficiencies",
        },
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Simple Weapon Proficiency",
        },
      },
    },
    {
      Level="1",
      Abilities={
        {
          Category="FEAT",
          Nature="AUTOMATIC",
          Name="Armor Proficiency (Light)",
        },
      },
    },
    {
      Level="1",
      Bonuses={
        {
          Category="ABILITYPOOL",
          Variables={
            "Expert Class Skills",
          },
          Formula="10",
        },
      },
    },
  },
})
