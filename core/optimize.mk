# STRICT_ALIASING
ifeq ($(STRICT_ALIASING),true)
LOCAL_DISABLE_STRICT := \
	libc_bionic \
	libc_dns \
	libc_tzcode \
	libziparchive \
	busybox \
	libuclibcrpc \
	libziparchive-host \
	libpdfiumcore \
	libandroid_runtime \
	libmedia \
	libpdfiumcore \
	libpdfium \
	bluetooth.default \
	logd \
	mdnsd \
	net_net_gyp \
	libstagefright_webm \
	libaudioflinger \
	libmediaplayerservice \
	libstagefright \
	ping \
	ping6 \
	libdiskconfig \
	libjavacore \
	libfdlibm \
	libvariablespeed \
	librtp_jni \
	libwilhelm \
	libdownmix \
	libldnhncr \
	libqcomvisualizer \
	libvisualizer \
	libstlport \
	libutils \
	libandroidfw \
	dnsmasq \
	static_busybox \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	content_content_renderer_gyp \
	third_party_WebKit_Source_modules_modules_gyp \
	third_party_WebKit_Source_platform_blink_platform_gyp \
	third_party_WebKit_Source_core_webcore_remaining_gyp \
	third_party_angle_src_translator_lib_gyp \
	third_party_WebKit_Source_core_webcore_generated_gyp \
	libc_gdtoa \
	libc_openbsd \
	libc \
	libc_nomalloc \
        libc_malloc \
	patchoat \
	dex2oat \
	libart \
	libart-compiler \
	oatdump \
	libart-disassembler \
        camera.msm8084 \
        libstlport_static \
        mm-vdec-omx-test \
        sensors.flounder \
        libnvvisualizer

LOCAL_FORCE_DISABLE_STRICT := \
	libziparchive-host \
	libc_bionic \
	libc_dns \
	libziparchive \
	libdiskconfig \
	logd \
	libjavacore

ifeq (1,$(words $(filter $(LOCAL_FORCE_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fno-strict-aliasing
endif
ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fno-strict-aliasing
endif
endif

ifneq (1,$(words $(filter $(LOCAL_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fstrict-aliasing \
	-Werror=strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fstrict-aliasing \
	-Werror=strict-aliasing
endif
ifndef LOCAL_CLANG
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=3
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=3
else
LOCAL_CONLYFLAGS += \
	-Wstrict-aliasing=2
LOCAL_CPPFLAGS += \
	-Wstrict-aliasing=2
endif
endif
else

ifeq (1,$(words $(filter $(LOCAL_FORCE_DISABLE_STRICT),$(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CONLYFLAGS := \
	-fno-strict-aliasing
endif
ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fno-strict-aliasing
else
LOCAL_CPPFLAGS := \
	-fno-strict-aliasing
endif
endif
endif
#####

# ENABLE_GCCONLY
ifeq ($(ENABLE_GCCONLY),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GCCONLY := \
	bluetooth.default \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support

ifneq (1,$(words $(filter $(LOCAL_DISABLE_GCCONLY), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast
else
LOCAL_CONLYFLAGS := -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast
else
LOCAL_CPPFLAGS := -fira-loop-pressure \
	-fforce-addr \
	-funsafe-loop-optimizations \
	-funroll-loops \
	-ftree-loop-distribution \
	-fsection-anchors \
	-ftree-loop-im \
	-ftree-loop-ivcanon \
	-ffunction-sections \
	-fgcse-las \
	-fgcse-sm \
	-fweb \
	-ffp-contract=fast
endif
endif
endif
endif
endif
#####

# GRAPHITE_OPTS
ifeq ($(GRAPHITE_OPTS),true)
ifndef LOCAL_IS_HOST_MODULE
ifeq ($(LOCAL_CLANG),)
LOCAL_DISABLE_GRAPHITE := \
	libunwind \
	libFFTEm \
	libicui18n \
	libskia \
	libvpx \
	libmedia_jni \
	libstagefright_mp3dec \
	libart \
	libstagefright_amrwbenc \
	libpdfium \
	libpdfiumcore \
	libwebviewchromium \
	libwebviewchromium_loader \
	libwebviewchromium_plat_support \
	libjni_filtershow_filters \
	fio \
	libwebrtc_spl

ifneq (1,$(words $(filter $(LOCAL_DISABLE_GRAPHITE), $(LOCAL_MODULE))))
ifdef LOCAL_CONLYFLAGS
LOCAL_CONLYFLAGS += \
	-fgraphite \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
else
LOCAL_CONLYFLAGS := \
	-fgraphite \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif

ifdef LOCAL_CPPFLAGS
LOCAL_CPPFLAGS += \
	-fgraphite \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
else
LOCAL_CPPFLAGS := \
	-fgraphite \
	-floop-flatten \
	-floop-parallelize-all \
	-ftree-loop-linear \
	-floop-interchange \
	-floop-strip-mine \
	-floop-block
endif
endif
endif
endif
endif
#####
