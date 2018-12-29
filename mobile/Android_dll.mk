LOCAL_PATH:= $(call my-dir)/../

include $(CLEAR_VARS)

LOCAL_MODULE := q2game

LOCAL_CFLAGS :=  -DANDROID -DREF_HARD_LINKED -DQUAKE2 -DOPENGL -DENGINE_NAME=\"quake2\" -D_stricmp=strcasecmp -Dstricmp=strcasecmp
LOCAL_CFLAGS +=


LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \



# Quake  2 source
LOCAL_SRC_FILES = \
	game/g_ai.c \
	game/p_client.c \
	game/g_chase.c \
	game/g_cmds.c \
	game/g_svcmds.c \
	game/g_combat.c \
	game/g_func.c \
	game/g_items.c \
	game/g_main.c \
	game/g_misc.c \
	game/g_monster.c \
	game/g_phys.c \
	game/g_spawn.c \
	game/g_target.c \
	game/g_trigger.c \
	game/g_turret.c \
	game/g_utils.c \
	game/g_weapon.c \
	game/m_actor.c \
	game/m_berserk.c \
	game/m_boss2.c \
	game/m_boss3.c \
	game/m_boss31.c \
	game/m_boss32.c \
	game/m_brain.c \
	game/m_chick.c \
	game/m_flipper.c \
	game/m_float.c \
	game/m_flyer.c \
	game/m_gladiator.c \
	game/m_gunner.c \
	game/m_hover.c \
	game/m_infantry.c \
	game/m_insane.c \
	game/m_medic.c \
	game/m_move.c \
	game/m_mutant.c \
	game/m_parasite.c \
	game/m_soldier.c \
	game/m_supertank.c \
	game/m_tank.c \
	game/p_hud.c \
	game/p_trail.c \
	game/p_view.c \
	game/p_weapon.c \
	game/q_shared.c \
	game/m_flash.c \
	game/g_save.c \

	#src/game/g_save.c \
	#/src/game/savegame/savegame.c \


LOCAL_LDLIBS := -ldl -llog -lz
include $(BUILD_SHARED_LIBRARY)



include 
