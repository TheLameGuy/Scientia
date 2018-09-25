#priority 1999

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

import mods.recipestages.Recipes.setRecipeStage;

import mods.TinkerStages.addMaterialStage;
import mods.TinkerStages.addToolTypeStage;

import mods.ItemStages.addItemStage;
import mods.ItemStages.removeItemStage;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.addDescription;

function disableItem(item as IItemStack) {
	item.addTooltip(format.darkPurple("This item is disabled. If you somehow obtained it, please report it on Scientia's issue tracker."));
	addDescription(item, 
		"This item is disabled.", 
		"If you somehow obtained it, please report it on Scientia's issue tracker.", 
		"There's a link in the Game Menu and the Esc Menu.");
	removeAndHide(item);
	addItemStage("disabled", item);
}

function stageMod(mod as string, stage as string) {
	for item in loadedMods[mod].items {
		addItemStage(stage, item);
		setRecipeStage(stage, item);	
	}
}

function stageTinkersMaterial(stage as string, material as string) {
	var parts = [

		<conarm:helmet_core>.withTag({Material: material}),
		<conarm:chest_core>.withTag({Material: material}),
		<conarm:leggings_core>.withTag({Material: material}),
		<conarm:boots_core>.withTag({Material: material}),
		<conarm:armor_trim>.withTag({Material: material}),
		<conarm:armor_plate>.withTag({Material: material}),
		<conarm:polishing_kit>.withTag({Material: material}),

		<conarm:helmet>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:chestplate>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:leggings>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<conarm:boots>.withTag({TinkerData: {Materials: [material, material, material]}}),
		
		<forge:bucketfilled>.withTag({FluidName: material, Amount: 1000}),

		<tconstruct:pick_head>.withTag({Material: material}),
		<tconstruct:shovel_head>.withTag({Material: material}),
		<tconstruct:axe_head>.withTag({Material: material}),
		<tconstruct:broad_axe_head>.withTag({Material: material}),
		<tconstruct:sword_blade>.withTag({Material: material}),
		<tconstruct:large_sword_blade>.withTag({Material: material}),
		<tconstruct:hammer_head>.withTag({Material: material}),
		<tconstruct:excavator_head>.withTag({Material: material}),
		<tconstruct:kama_head>.withTag({Material: material}),
		<tconstruct:scythe_head>.withTag({Material: material}),
		<tconstruct:pan_head>.withTag({Material: material}),
		<tconstruct:sign_head>.withTag({Material: material}),
		<tconstruct:tool_rod>.withTag({Material: material}),
		<tconstruct:tough_tool_rod>.withTag({Material: material}),
		<tconstruct:binding>.withTag({Material: material}),
		<tconstruct:tough_binding>.withTag({Material: material}),
		<tconstruct:wide_guard>.withTag({Material: material}),
		<tconstruct:hand_guard>.withTag({Material: material}),
		<tconstruct:cross_guard>.withTag({Material: material}),
		<tconstruct:large_plate>.withTag({Material: material}),
		<tconstruct:knife_blade>.withTag({Material: material}),
		<tconstruct:bow_limb>.withTag({Material: material}),
		<tconstruct:arrow_head>.withTag({Material: material}),
		<tconstruct:shard>.withTag({Material: material}),
		<tconstruct:sharpening_kit>.withTag({Material: material}),

		<tconstruct:bolt_core>.withTag({TinkerData: {Materials: [material, "iron"]}}),
		<tconstruct:pickaxe>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:shovel>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:hatchet>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:mattock>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:kama>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:hammer>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:excavator>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:lumberaxe>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:scythe>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:broadsword>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:longsword>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:rapier>.withTag({TinkerData: {Materials: [material, material, material]}}),
		<tconstruct:frypan>.withTag({TinkerData: {Materials: [material, material]}}),
		<tconstruct:battlesign>.withTag({TinkerData: {Materials: [material, material]}}),
		<tconstruct:cleaver>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:shortbow>.withTag({TinkerData: {Materials: [material, material, "string"]}}),
		<tconstruct:longbow>.withTag({TinkerData: {Materials: [material, material, material, "string"]}}),
		<tconstruct:crossbow>.withTag({TinkerData: {Materials: [material, material, material, "string"]}}),
		<tconstruct:arrow>.withTag({TinkerData: {Materials: ["wood", material, "feather"]}}),
		<tconstruct:shuriken>.withTag({TinkerData: {Materials: [material, material, material, material]}}),
		<tconstruct:bolt>.withTag({TinkerData: {Materials: ["wood", material, "feather"]}})

	] as IItemStack[];

	for part in parts {
		addItemStage(stage, part);
	}
	addMaterialStage(stage, material);
}

function stageTinkersTool(stage as string, tool as IItemStack, toolString as string) {
	addItemStage(stage, tool);
	addToolTypeStage(stage, toolString);
}

function stageTinkersPart(stage as string, part as IItemStack, partString as string) {
	addItemStage(stage, <tconstruct:pattern>.withTag({PartType: partString}));
	addItemStage(stage, <tconstruct:cast>.withTag({PartType: partString}));
	addItemStage(stage, <tconstruct:clay_cast>.withTag({PartType: partString}));
	addItemStage(stage, part);
}

function disableModStageList(mod as string, stage as string, exceptions as IItemStack[]) {
	for item in loadedMods[mod].items {
		item.addTooltip(format.darkPurple(
		"This item is disabled. If you somehow obtained it, please report it on Scientia's issue tracker."));
		addDescription(item, 
		"This item is disabled.", 
		"If you somehow obtained it, please report it on Scientia's issue tracker.", 
		"There's a link in the Game Menu and the Esc Menu.");
		addItemStage("disabled", item);
	}
	for item in exceptions {
		removeItemStage(item);
		setRecipeStage(stage, item);
		addItemStage(stage, item);
	}
}