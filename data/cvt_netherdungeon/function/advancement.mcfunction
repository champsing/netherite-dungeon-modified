execute as @a[predicate=cvt_netherdungeon:in_nether] at @s if entity @e[tag=cvt_dungeonmarker,tag=!claimed,type=marker,distance=..5] run function cvt_netherdungeon:grantpoint

advancement grant @a[scores={cvt_playerprogress=500}] only cvt_netherdungeon:netherite_discoverer
advancement grant @a[scores={cvt_playerprogress=1000}] only cvt_netherdungeon:netherite_richman
advancement grant @a[scores={cvt_playerprogress=1500}] only cvt_netherdungeon:netherite_veteran
advancement grant @a[scores={cvt_playerprogress=2000}] only cvt_netherdungeon:netherite_mighty