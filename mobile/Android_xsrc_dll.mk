LOCAL_PATH:= $(call my-dir)/../


include $(CLEAR_VARS)

LOCAL_MODULE := q2gamexatrix

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
	xsrc/g_ai.c \
	xsrc/p_client.c \
	xsrc/g_chase.c \
	xsrc/g_cmds.c \
	xsrc/g_svcmds.c \
	xsrc/g_combat.c \
	xsrc/g_func.c \
	xsrc/g_items.c \
	xsrc/g_main.c \
	xsrc/g_misc.c \
	xsrc/g_monster.c \
	xsrc/g_phys.c \
	xsrc/g_spawn.c \
	xsrc/g_target.c \
	xsrc/g_trigger.c \
	xsrc/g_turret.c \
	xsrc/g_utils.c \
	xsrc/g_weapon.c \
	xsrc/m_actor.c \
	xsrc/m_berserk.c \
	xsrc/m_boss2.c \
	xsrc/m_boss3.c \
	xsrc/m_boss31.c \
	xsrc/m_boss32.c \
	xsrc/m_boss5.c \
	xsrc/m_brain.c \
	xsrc/m_chick.c \
	xsrc/m_flipper.c \
	xsrc/m_float.c \
	xsrc/m_flyer.c \
	xsrc/m_gladiator.c \
	xsrc/m_gladb.c \
	xsrc/m_gekk.c \
	xsrc/m_gunner.c \
	xsrc/m_hover.c \
	xsrc/m_infantry.c \
	xsrc/m_insane.c \
	xsrc/m_medic.c \
	xsrc/m_move.c \
	xsrc/m_mutant.c \
	xsrc/m_parasite.c \
	xsrc/m_soldier.c \
	xsrc/m_supertank.c \
	xsrc/m_tank.c \
	xsrc/m_fixbot.c \
	xsrc/p_hud.c \
	xsrc/p_trail.c \
	xsrc/p_view.c \
	xsrc/p_weapon.c \
	xsrc/q_shared.c \
	xsrc/m_flash.c \
	xsrc/g_save.c \

	#src/xsrc/g_save.c \
	#/src/xsrc/savegame/savegame.c \

LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog -lOpenSLES -lz
include $(BUILD_SHARED_LIBRARY)
