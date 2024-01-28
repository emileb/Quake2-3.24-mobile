LOCAL_PATH:= $(call my-dir)/../

include $(CLEAR_VARS)

LOCAL_MODULE := q2gamerogue

LOCAL_CFLAGS :=  -DANDROID -DREF_HARD_LINKED -DQUAKE2 -DOPENGL -DENGINE_NAME=\"quake2\" -D_stricmp=strcasecmp -Dstricmp=strcasecmp
LOCAL_CFLAGS +=


LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \

# Quake  2 source
LOCAL_SRC_FILES = \
	rsrc/dm_ball.c \
	rsrc/dm_tag.c \
	rsrc/g_ai.c \
	rsrc/g_chase.c \
	rsrc/g_cmds.c \
	rsrc/g_svcmds.c \
	rsrc/g_combat.c \
	rsrc/g_func.c \
	rsrc/g_items.c \
	rsrc/g_main.c \
	rsrc/g_misc.c \
	rsrc/g_monster.c \
	rsrc/g_newai.c \
	rsrc/g_newdm.c \
	rsrc/g_newfnc.c \
	rsrc/g_newtarg.c \
	rsrc/g_newtrig.c \
	rsrc/g_newweap.c \
	rsrc/g_phys.c \
	rsrc/g_spawn.c \
	rsrc/g_sphere.c \
	rsrc/g_target.c \
	rsrc/g_trigger.c \
	rsrc/g_turret.c \
	rsrc/g_utils.c \
	rsrc/g_weapon.c \
	rsrc/m_actor.c \
	rsrc/m_berserk.c \
	rsrc/m_boss2.c \
	rsrc/m_boss3.c \
	rsrc/m_boss31.c \
	rsrc/m_boss32.c \
	rsrc/m_brain.c \
	rsrc/m_chick.c \
	rsrc/m_carrier.c \
	rsrc/m_flipper.c \
	rsrc/m_float.c \
	rsrc/m_flyer.c \
	rsrc/m_gladiator.c \
	rsrc/m_gunner.c \
	rsrc/m_hover.c \
	rsrc/m_infantry.c \
	rsrc/m_insane.c \
	rsrc/m_medic.c \
	rsrc/m_move.c \
	rsrc/m_mutant.c \
	rsrc/m_parasite.c \
	rsrc/m_soldier.c \
	rsrc/m_stalker.c \
	rsrc/m_supertank.c \
	rsrc/m_tank.c \
	rsrc/m_turret.c \
	rsrc/m_widow.c \
	rsrc/m_widow2.c \
	rsrc/p_client.c \
	rsrc/p_hud.c \
	rsrc/p_trail.c \
	rsrc/p_view.c \
	rsrc/p_weapon.c \
	rsrc/q_shared.c \
	rsrc/m_flash.c \
	rsrc/g_save.c \

	#src/rsrc/g_save.c \
	#/src/rsrc/savegame/savegame.c \

LOCAL_LDLIBS := -lGLESv1_CM -ldl -llog  -lz
LOCAL_SHARED_LIBRARIES := saffal

include $(BUILD_SHARED_LIBRARY)
