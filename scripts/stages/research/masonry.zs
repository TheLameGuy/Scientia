#priority 100
import crafttweaker.item.IItemStack;

var stage = stages.masonry;

val stoneBlocks = [
<bloodmagic:demon_brick_1>,
<bloodmagic:demon_brick_1:1>,
<bloodmagic:demon_brick_1:2>,
<bloodmagic:demon_brick_1:3>,
<bloodmagic:demon_brick_1:4>,
<bloodmagic:demon_brick_2>,
<bloodmagic:demon_brick_2:1>,
<bloodmagic:demon_brick_2:2>,
<bloodmagic:demon_brick_2:3>,
<bloodmagic:demon_brick_2:4>,
<bloodmagic:demon_brick_2:5>,
<bloodmagic:demon_brick_2:6>,
<bloodmagic:demon_brick_2:7>,
<bloodmagic:demon_brick_2:8>,
<bloodmagic:demon_brick_2:9>,
<bloodmagic:demon_brick_2:10>,
<bloodmagic:demon_brick_2:11>,
<bloodmagic:demon_brick_2:12>,
<bloodmagic:demon_brick_2:13>,
<bloodmagic:demon_brick_2:14>,

<bloodmagic:demon_extras>,
<bloodmagic:demon_extras:1>,
<bloodmagic:demon_extras:2>,
<bloodmagic:demon_extras:3>,
<bloodmagic:demon_extras:4>,
<bloodmagic:demon_extras:5>,
<bloodmagic:demon_extras:6>,
<bloodmagic:demon_extras:7>,
<bloodmagic:demon_extras:8>,
<bloodmagic:demon_extras:9>,
<bloodmagic:demon_extras:10>,
<bloodmagic:demon_extras:11>,
<bloodmagic:demon_extras:12>,
<bloodmagic:demon_extras:13>,
<bloodmagic:demon_extras:14>,

<bloodmagic:demon_light>,
<bloodmagic:demon_light:1>,
<bloodmagic:demon_light:2>,
<bloodmagic:demon_light:3>,
<bloodmagic:demon_light:4>,
<bloodmagic:demon_pillar_1>,
<bloodmagic:demon_pillar_1:1>,
<bloodmagic:demon_pillar_1:2>,
<bloodmagic:demon_pillar_1:3>,
<bloodmagic:demon_pillar_1:4>,
<bloodmagic:demon_pillar_2>,
<bloodmagic:demon_pillar_2:1>,
<bloodmagic:demon_pillar_2:2>,
<bloodmagic:demon_pillar_2:3>,
<bloodmagic:demon_pillar_2:4>,
<bloodmagic:demon_pillar_cap_1>,
<bloodmagic:demon_pillar_cap_1:1>,
<bloodmagic:demon_pillar_cap_2>,
<bloodmagic:demon_pillar_cap_2:1>,
<bloodmagic:demon_pillar_cap_3>,

<bloodmagic:demon_stairs_1>,
<bloodmagic:demon_stairs_1:1>,
<bloodmagic:demon_stairs_2>,
<bloodmagic:demon_stairs_2:1>,
<bloodmagic:demon_stairs_3>,
<bloodmagic:demon_wall_1>,
<bloodmagic:demon_wall_1:1>,
<bloodmagic:demon_wall_1:2>,
<bloodmagic:demon_wall_1:3>,
<bloodmagic:demon_wall_1:4>,
<bloodmagic:demon_wall_1:5>,
<bloodmagic:demon_wall_1:6>,
<bloodmagic:demon_wall_1:7>,
<bloodmagic:demon_wall_1:8>,
<bloodmagic:demon_wall_1:9>,
<bloodmagic:demon_wall_1:10>,
<bloodmagic:demon_wall_1:11>,
<bloodmagic:demon_wall_1:12>,
<bloodmagic:demon_wall_1:13>,
<bloodmagic:demon_wall_1:14>,

<bloodmagic:inversion_pillar>,
<bloodmagic:inversion_pillar:1>,
<bloodmagic:inversion_pillar:2>,
<bloodmagic:inversion_pillar:3>,
<bloodmagic:inversion_pillar:4>,
<bloodmagic:inversion_pillar_end>,
<bloodmagic:inversion_pillar_end:1>,
<bloodmagic:inversion_pillar_end:2>,
<bloodmagic:inversion_pillar_end:3>,
<bloodmagic:inversion_pillar_end:4>,
<bloodmagic:inversion_pillar_end:5>,
<bloodmagic:inversion_pillar_end:6>,
<bloodmagic:inversion_pillar_end:7>,
<bloodmagic:inversion_pillar_end:8>,
<bloodmagic:inversion_pillar_end:9>,

<tconstruct:brownstone>,
<tconstruct:brownstone:1>,
<tconstruct:brownstone:2>,
<tconstruct:brownstone:3>,
<tconstruct:brownstone:4>,
<tconstruct:brownstone:5>,
<tconstruct:brownstone:6>,
<tconstruct:brownstone:7>,
<tconstruct:brownstone:8>,
<tconstruct:brownstone:9>,
<tconstruct:brownstone:10>,
<tconstruct:brownstone:11>,
<tconstruct:brownstone_slab>,
<tconstruct:brownstone_slab:1>,
<tconstruct:brownstone_slab:2>,
<tconstruct:brownstone_slab:3>,
<tconstruct:brownstone_slab:4>,
<tconstruct:brownstone_slab:5>,
<tconstruct:brownstone_slab:6>,
<tconstruct:brownstone_slab:7>,
<tconstruct:brownstone_slab2>,
<tconstruct:brownstone_slab2:1>,
<tconstruct:brownstone_slab2:2>,
<tconstruct:brownstone_slab2:3>,
<tconstruct:brownstone_stairs_brick>,
<tconstruct:brownstone_stairs_brick_cracked>,
<tconstruct:brownstone_stairs_brick_fancy>,
<tconstruct:brownstone_stairs_brick_small>,
<tconstruct:brownstone_stairs_brick_square>,
<tconstruct:brownstone_stairs_brick_triangle>,
<tconstruct:brownstone_stairs_creeper>,
<tconstruct:brownstone_stairs_paver>,
<tconstruct:brownstone_stairs_road>,
<tconstruct:brownstone_stairs_rough>,
<tconstruct:brownstone_stairs_smooth>,
<tconstruct:brownstone_stairs_tile>,

<tconstruct:seared_slab:1>,
<tconstruct:seared_slab:2>,
<tconstruct:seared_slab:3>,
<tconstruct:seared_slab:4>,
<tconstruct:seared_slab:5>,
<tconstruct:seared_slab:6>,
<tconstruct:seared_slab:7>,
<tconstruct:seared_slab2>,
<tconstruct:seared_slab2:1>,
<tconstruct:seared_slab2:2>,
<tconstruct:seared_slab2:3>,
<tconstruct:seared_stairs_brick>,
<tconstruct:seared_stairs_brick_cracked>,
<tconstruct:seared_stairs_brick_fancy>,
<tconstruct:seared_stairs_brick_small>,
<tconstruct:seared_stairs_brick_square>,
<tconstruct:seared_stairs_brick_triangle>,
<tconstruct:seared_stairs_cobble>,
<tconstruct:seared_stairs_creeper>,
<tconstruct:seared_stairs_paver>,
<tconstruct:seared_stairs_road>,
<tconstruct:seared_stairs_stone>,
<tconstruct:seared_stairs_tile>,
    
#<magneticraft:limestone:1>,
#<magneticraft:burnt_limestone:1>,

<minecraft:stone_slab:4>,
<minecraft:stone_slab:5>,
<minecraft:stone_slab:6>,
<minecraft:brick_block>,
<minecraft:stonebrick>,
<minecraft:stonebrick:1>,
<minecraft:stonebrick:2>,
<minecraft:stonebrick:3>,
<minecraft:brick_stairs>,
<minecraft:stone_brick_stairs>,
<minecraft:nether_brick>,
<minecraft:nether_brick_stairs>,
<minecraft:prismarine:1>,
<minecraft:end_bricks>,
<minecraft:red_nether_brick>,
<minecraft:monster_egg:2>,
<minecraft:monster_egg:3>,
<minecraft:monster_egg:4>,
<minecraft:monster_egg:5>,
<minecraft:nether_brick_fence>,

<bloodmagic:decorative_brick:1>,
<bloodmagic:decorative_brick:3>,
<bloodmagic:path:2>,
<bloodmagic:path:4>,
<bloodmagic:path:6>,

<botania:livingrock1stairs>,
<botania:livingrock1slab>,
<botania:livingrock:1>,
<botania:livingrock:2>,
<botania:livingrock:3>,
<botania:livingrock:4>,

<immersiveengineering:stone_decoration>,
<immersiveengineering:stone_decoration:1>,
<immersiveengineering:stone_decoration:2>,
<immersiveengineering:stone_decoration:10>,
<immersiveengineering:stone_decoration_slab>,
<immersiveengineering:stone_decoration_slab:1>,
<immersiveengineering:stone_decoration_slab:2>,
<immersiveengineering:stone_decoration_slab:10>,

<tconstruct:deco_ground>,
<tconstruct:deco_ground_slab>,
<tconstruct:mudbrick_stairs>,
<tconstruct:seared:3>,
<tconstruct:seared:4>,
<tconstruct:seared:5>,
<tconstruct:seared:6>,
<tconstruct:seared:9>,
<tconstruct:seared:10>,
<tconstruct:dried_clay:1>,
<tconstruct:dried_clay_slab:1>,
<tconstruct:dried_brick_stairs>,

<traverse:red_rock_bricks>,
<traverse:red_rock_bricks_stairs>,
<traverse:red_rock_bricks_slab>,
<traverse:red_rock_bricks_chiseled>,
<traverse:blue_rock_bricks>,
<traverse:blue_rock_bricks_stairs>,
<traverse:blue_rock_bricks_slab>,
<traverse:blue_rock_bricks_chiseled>

] as IItemStack[];

for item in stoneBlocks {
    mods.ItemStages.addItemStage(stage, item);
}