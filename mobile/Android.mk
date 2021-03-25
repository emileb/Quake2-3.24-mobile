LOCAL_PATH:= $(call my-dir)/../

include $(CLEAR_VARS)

LOCAL_MODULE := quake2

LOCAL_CFLAGS := -DANDROID -DC_ONLY -DREF_HARD_LINKED  -DQUAKE2 -DOPENGL -DENGINE_NAME=\"quake2\" -D_strnicmp=strncasecmp -D_stricmp=strcasecmp -Dstricmp=strcasecmp


LOCAL_C_INCLUDES :=     $(SDL_INCLUDE_PATHS)  \
                        $(TOP_DIR) \
                        $(TOP_DIR)/MobileTouchControls \
                        $(TOP_DIR)/AudioLibs_OpenTouch/liboggvorbis/include \
                        $(TOP_DIR)/Clibs_OpenTouch \
                        $(TOP_DIR)/Clibs_OpenTouch/quake \



QUAKE2_SRC := \
    client/cl_cin.c \
	client/cl_ents.c \
	client/cl_fx.c \
	client/cl_input.c \
	client/cl_inv.c \
	client/cl_main.c \
	client/cl_parse.c \
	client/cl_pred.c \
	client/cl_tent.c \
	client/cl_scrn.c \
	client/cl_view.c \
	client/cl_newfx.c \
	client/console.c \
	client/keys.c \
	client/menu.c \
	client/snd_dma.c \
	client/snd_mem.c \
	client/snd_mix.c \
	client/snd_stream.c \
	client/qmenu.c \
	qcommon/cmd.c \
	qcommon/cmodel.c \
	qcommon/common.c \
	qcommon/crc.c \
	qcommon/cvar.c \
	qcommon/files.c \
	qcommon/md4.c \
	qcommon/net_chan.c \
	qcommon/wildcard.c \
	server/sv_ccmds.c \
	server/sv_ents.c \
	server/sv_game.c \
	server/sv_init.c \
	server/sv_main.c \
	server/sv_send.c \
	server/sv_user.c \
	server/sv_world.c \
	linux/q_shlinux.c \
	linux/vid_menu.c \
	mobile/snd_sdl.c \
	linux/glob.c \
	linux/net_udp.c \
	qcommon/pmove.c \
	mobile/qgl_android.c \
	mobile/nanoWrap.c \
	mobile/sys_android.c \
    mobile/cd_droid.c \
    mobile/vid_so.c \
	mobile/game_interface.c \
    mobile/rw_sdl.c \
    ../../Clibs_OpenTouch/quake/android_jni.cpp \
    ../../Clibs_OpenTouch/quake/touch_interface.cpp \
    ../../Clibs_OpenTouch/touch_interface_base.cpp \

REF_GL_SRC = \
	ref_gl/gl_draw.c \
	ref_gl/gl_image.c \
	ref_gl/gl_light.c \
	ref_gl/gl_mesh.c \
	ref_gl/gl_model.c \
	ref_gl/gl_rmain.c \
	ref_gl/gl_rmisc.c \
	ref_gl/gl_rsurf.c \
	ref_gl/gl_warp.c \


#############################################################################
# REF_GL
#######

LOCAL_SRC_FILES += game/q_shared.c
LOCAL_SRC_FILES += game/m_flash.c

LOCAL_SRC_FILES += $(QUAKE2_SRC) + $(REF_GL_SRC)


LOCAL_LDLIBS := -lEGL -ldl -llog -lOpenSLES -lz -lGLESv1_CM
LOCAL_STATIC_LIBRARIES := sigc libzip libpng logwritter  libjpeg
LOCAL_SHARED_LIBRARIES := touchcontrols SDL2 SDL2_mixer core_shared saffal

include $(BUILD_SHARED_LIBRARY)
