
package Lage.of.civilizations2.jakowski.lukasz.GameValues;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.JsonReader;
import com.badlogic.gdx.utils.JsonValue;

public class BattleConfigLoader {
    public static void applyModConfig() {
        try {
            // Safety check: Gdx.files might be null if called too early
            if (Gdx.files == null) return;

            // Priority 1: External Storage (Android/data/<pkg>/files/mods/)
            FileHandle file = Gdx.files.local("mods/battle.json");
            
            // Priority 2: Internal Assets (APK assets/mods/)
            if (!file.exists()) {
                file = Gdx.files.internal("mods/battle.json");
                if (!file.exists()) return;
            }

            // Parse JSON
            JsonValue root = new JsonReader().parse(file);
            if (root == null) return;

            // --- GV_Battle ---
            if (GameValues.gvBattle != null) {
                GV_Battle gv = GameValues.gvBattle;
                JsonValue v;

                v = root.get("TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT");
                if (v != null) gv.TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_DEFAULT = v.asInt();

                v = root.get("TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT");
                if (v != null) gv.TECHNOLOGY_LEVEL_BONUS_ARMY_ATTACK_LIMIT = v.asInt();

                v = root.get("TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT");
                if (v != null) gv.TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_DEFAULT = v.asInt();

                v = root.get("TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT");
                if (v != null) gv.TECHNOLOGY_LEVEL_BONUS_ARMY_DEFENSE_LIMIT = v.asInt();

                v = root.get("BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS");
                if (v != null) gv.BATTLE_PROVINCE_ECONOMY_LOSSES_UNITS = v.asFloat();

                v = root.get("BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC");
                if (v != null) gv.BATTLE_PROVINCE_ECONOMY_LOSSES_MAX_PERC = v.asFloat();

                v = root.get("BATTLE_PROVINCE_POPULATION_LOSSES_BASE");
                if (v != null) gv.BATTLE_PROVINCE_POPULATION_LOSSES_BASE = v.asFloat();

                v = root.get("BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER");
                if (v != null) gv.BATTLE_PROVINCE_POPULATION_LOSSES_TECH_LEVEL_MODIFIER = v.asFloat();

                v = root.get("BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC");
                if (v != null) gv.BATTLE_PROVINCE_POPULATION_LOSSES_OR_BASED_ON_POPULATION_PERC = v.asFloat();
            }

            // --- GV_Capital ---
            if (GameValues.gvCapital != null) {
                GV_Capital gv = GameValues.gvCapital;
                JsonValue v;

                v = root.get("BONUS_CAPITAL_ATTACK_FROM_CAPITAL");
                if (v != null) gv.BONUS_CAPITAL_ATTACK_FROM_CAPITAL = v.asInt();

                v = root.get("BONUS_CAPITAL_DEFENSE");
                if (v != null) gv.BONUS_CAPITAL_DEFENSE = v.asInt();
            }

            // --- GV_BuildingFort ---
            if (GameValues.gvBuildingFort != null) {
                GV_BuildingFort gv = GameValues.gvBuildingFort;
                JsonValue v;

                v = root.get("FORT_DEFENSE_BONUS_FORT");
                if (v != null) gv.FORT_DEFENSE_BONUS[0] = v.asInt();

                v = root.get("FORT_DEFENSE_BONUS_CASTLE");
                if (v != null) gv.FORT_DEFENSE_BONUS[1] = v.asInt();

                v = root.get("FORT_DEFENSE_BONUS_FORTRESS");
                if (v != null) gv.FORT_DEFENSE_BONUS[2] = v.asInt();
            }

            // --- GV_BuildingWatchTower ---
            if (GameValues.gvBuildingWatchTower != null) {
                GV_BuildingWatchTower gv = GameValues.gvBuildingWatchTower;
                JsonValue v;

                v = root.get("TOWER_DEFENSE_BONUS_BASE");
                if (v != null) gv.TOWER_DEFENSE_BONUS[0] = v.asInt();

                v = root.get("TOWER_DEFENSE_BONUS");
                if (v != null) gv.TOWER_DEFENSE_BONUS[1] = v.asInt();

                v = root.get("TOWER_DEFENSE_BONUS_FORTRESS");
                if (v != null) gv.TOWER_DEFENSE_BONUS[2] = v.asInt();
            }

            // --- GV_Military ---
            if (GameValues.gvMilitary != null) {
                GV_Military gv = GameValues.gvMilitary;
                JsonValue v;

                v = root.get("MILITARY_EXPERTISE_ATTACK_PER_POINT");
                if (v != null) gv.MILITARY_EXPERTISE_ATTACK_PER_POINT = v.asFloat();

                v = root.get("MILITARY_EXPERTISE_DEFENSE_PER_POINT");
                if (v != null) gv.MILITARY_EXPERTISE_DEFENSE_PER_POINT = v.asFloat();

                v = root.get("MILITARY_EXPERTISE_MAX_LEVEL");
                if (v != null) gv.MILITARY_EXPERTISE_MAX_LEVEL = v.asInt();

                v = root.get("MILITARY_EXPERTISE_MAX_ATTACK");
                if (v != null) gv.MILITARY_EXPERTISE_MAX_ATTACK = v.asInt();

                v = root.get("MILITARY_EXPERTISE_MAX_DEFENSE");
                if (v != null) gv.MILITARY_EXPERTISE_MAX_DEFENSE = v.asInt();
            }

        } catch (Exception e) {
            // Print stack trace for debugging
            e.printStackTrace();
        }
    }
}
