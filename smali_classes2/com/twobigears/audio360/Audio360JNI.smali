.class public Lcom/twobigears/audio360/Audio360JNI;
.super Ljava/lang/Object;
.source "Audio360JNI.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Audio360"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "Audio360-JNI"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->swig_module_init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final native AssetDescriptor_lengthInBytes_get(JLcom/twobigears/audio360/AssetDescriptor;)J
.end method

.method public static final native AssetDescriptor_lengthInBytes_set(JLcom/twobigears/audio360/AssetDescriptor;J)V
.end method

.method public static final native AssetDescriptor_offsetInBytes_get(JLcom/twobigears/audio360/AssetDescriptor;)J
.end method

.method public static final native AssetDescriptor_offsetInBytes_set(JLcom/twobigears/audio360/AssetDescriptor;J)V
.end method

.method public static final native AttenuationProps_factor_get(JLcom/twobigears/audio360/AttenuationProps;)F
.end method

.method public static final native AttenuationProps_factor_set(JLcom/twobigears/audio360/AttenuationProps;F)V
.end method

.method public static final native AttenuationProps_maxDistanceMute_get(JLcom/twobigears/audio360/AttenuationProps;)Z
.end method

.method public static final native AttenuationProps_maxDistanceMute_set(JLcom/twobigears/audio360/AttenuationProps;Z)V
.end method

.method public static final native AttenuationProps_maximumDistance_get(JLcom/twobigears/audio360/AttenuationProps;)F
.end method

.method public static final native AttenuationProps_maximumDistance_set(JLcom/twobigears/audio360/AttenuationProps;F)V
.end method

.method public static final native AttenuationProps_minimumDistance_get(JLcom/twobigears/audio360/AttenuationProps;)F
.end method

.method public static final native AttenuationProps_minimumDistance_set(JLcom/twobigears/audio360/AttenuationProps;F)V
.end method

.method public static final native AudioEngine_createAudioObject__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;I)I
.end method

.method public static final native AudioEngine_createAudioObject__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_createSpatDecoderFile__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;I)I
.end method

.method public static final native AudioEngine_createSpatDecoderFile__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_createSpatDecoderQueue(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_create__SWIG_0(JLcom/twobigears/audio360/EngineInitSettings;Landroid/content/res/AssetManager;)J
.end method

.method public static final native AudioEngine_create__SWIG_1(FLandroid/content/res/AssetManager;)J
.end method

.method public static final native AudioEngine_create__SWIG_2(FILandroid/content/res/AssetManager;)J
.end method

.method public static final native AudioEngine_create__SWIG_3(FIILandroid/content/res/AssetManager;)J
.end method

.method public static final native AudioEngine_destroyAudioObject(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/AudioObject;)V
.end method

.method public static final native AudioEngine_destroySpatDecoderFile(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderFile;)V
.end method

.method public static final native AudioEngine_destroySpatDecoderQueue(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/SpatDecoderQueue;)V
.end method

.method public static final native AudioEngine_enableLoudness__SWIG_0(JLcom/twobigears/audio360/AudioEngine;Z)V
.end method

.method public static final native AudioEngine_enableLoudness__SWIG_1(JLcom/twobigears/audio360/AudioEngine;)V
.end method

.method public static final native AudioEngine_enablePositionalTracking(JLcom/twobigears/audio360/AudioEngine;ZJLcom/twobigears/audio360/TBVector;)I
.end method

.method public static final native AudioEngine_enableTestTone__SWIG_0(JLcom/twobigears/audio360/AudioEngine;ZFF)V
.end method

.method public static final native AudioEngine_enableTestTone__SWIG_1(JLcom/twobigears/audio360/AudioEngine;ZF)V
.end method

.method public static final native AudioEngine_enableTestTone__SWIG_2(JLcom/twobigears/audio360/AudioEngine;Z)V
.end method

.method public static final native AudioEngine_getAudioDeviceName(I)Ljava/lang/String;
.end method

.method public static final native AudioEngine_getAudioMix(JLcom/twobigears/audio360/AudioEngine;Ljava/nio/ByteBuffer;II)I
.end method

.method public static final native AudioEngine_getBufferSize(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_getDSPTime(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getListenerForward(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getListenerPosition(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getListenerRotation(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getListenerUp(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getNumAudioDevices()I
.end method

.method public static final native AudioEngine_getNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getOutputAudioDeviceName(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;
.end method

.method public static final native AudioEngine_getOutputLatencyMs(JLcom/twobigears/audio360/AudioEngine;)D
.end method

.method public static final native AudioEngine_getOutputLatencySamples(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_getRenderedLoudness(JLcom/twobigears/audio360/AudioEngine;)J
.end method

.method public static final native AudioEngine_getSampleRate(JLcom/twobigears/audio360/AudioEngine;)F
.end method

.method public static final native AudioEngine_getVersionHash(JLcom/twobigears/audio360/AudioEngine;)Ljava/lang/String;
.end method

.method public static final native AudioEngine_getVersionMajor(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_getVersionMinor(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_getVersionPatch(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_positionalTrackingEnabled(JLcom/twobigears/audio360/AudioEngine;)Z
.end method

.method public static final native AudioEngine_resetLoudness(JLcom/twobigears/audio360/AudioEngine;)V
.end method

.method public static final native AudioEngine_setEventListenerInternal(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/EventListener;)V
.end method

.method public static final native AudioEngine_setListenerPosition(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;)V
.end method

.method public static final native AudioEngine_setListenerRotation__SWIG_0(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)V
.end method

.method public static final native AudioEngine_setListenerRotation__SWIG_1(JLcom/twobigears/audio360/AudioEngine;JLcom/twobigears/audio360/TBQuat;)V
.end method

.method public static final native AudioEngine_setListenerRotation__SWIG_2(JLcom/twobigears/audio360/AudioEngine;FFF)V
.end method

.method public static final native AudioEngine_setNumOutputBuffers(JLcom/twobigears/audio360/AudioEngine;J)I
.end method

.method public static final native AudioEngine_start(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioEngine_suspend(JLcom/twobigears/audio360/AudioEngine;)I
.end method

.method public static final native AudioObject_SWIGUpcast(J)J
.end method

.method public static final native AudioObject_close(JLcom/twobigears/audio360/AudioObject;)V
.end method

.method public static final native AudioObject_enableLooping(JLcom/twobigears/audio360/AudioObject;Z)Z
.end method

.method public static final native AudioObject_getAssetDurationInMs(JLcom/twobigears/audio360/AudioObject;)F
.end method

.method public static final native AudioObject_getAssetDurationInSamples(JLcom/twobigears/audio360/AudioObject;)J
.end method

.method public static final native AudioObject_getAttenuationMode(JLcom/twobigears/audio360/AudioObject;)I
.end method

.method public static final native AudioObject_getAttenuationProperties(JLcom/twobigears/audio360/AudioObject;)J
.end method

.method public static final native AudioObject_getDirectionalProperties(JLcom/twobigears/audio360/AudioObject;)J
.end method

.method public static final native AudioObject_getElapsedTimeInMs(JLcom/twobigears/audio360/AudioObject;)D
.end method

.method public static final native AudioObject_getElapsedTimeInSamples(JLcom/twobigears/audio360/AudioObject;)J
.end method

.method public static final native AudioObject_getPitch(JLcom/twobigears/audio360/AudioObject;)F
.end method

.method public static final native AudioObject_getSpatializationType(JLcom/twobigears/audio360/AudioObject;)I
.end method

.method public static final native AudioObject_isDirectionalityEnabled(JLcom/twobigears/audio360/AudioObject;)Z
.end method

.method public static final native AudioObject_isOpen(JLcom/twobigears/audio360/AudioObject;)Z
.end method

.method public static final native AudioObject_isSpatialised(JLcom/twobigears/audio360/AudioObject;)Z
.end method

.method public static final native AudioObject_loopingEnabled(JLcom/twobigears/audio360/AudioObject;)Z
.end method

.method public static final native AudioObject_open__SWIG_0(JLcom/twobigears/audio360/AudioObject;Ljava/lang/String;)I
.end method

.method public static final native AudioObject_open__SWIG_1(JLcom/twobigears/audio360/AudioObject;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;)I
.end method

.method public static final native AudioObject_seekToMs(JLcom/twobigears/audio360/AudioObject;F)I
.end method

.method public static final native AudioObject_seekToSample(JLcom/twobigears/audio360/AudioObject;J)I
.end method

.method public static final native AudioObject_setAttenuationMode(JLcom/twobigears/audio360/AudioObject;I)V
.end method

.method public static final native AudioObject_setAttenuationProperties(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/AttenuationProps;)V
.end method

.method public static final native AudioObject_setDirectionalProperties(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/DirectionalProps;)V
.end method

.method public static final native AudioObject_setDirectionalityEnabled(JLcom/twobigears/audio360/AudioObject;Z)V
.end method

.method public static final native AudioObject_setEventListenerInternal(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/EventListener;)V
.end method

.method public static final native AudioObject_setPitch(JLcom/twobigears/audio360/AudioObject;F)V
.end method

.method public static final native AudioObject_setSpatializationType(JLcom/twobigears/audio360/AudioObject;I)I
.end method

.method public static final native AudioObject_shouldSpatialise(JLcom/twobigears/audio360/AudioObject;Z)V
.end method

.method public static final native AudioObject_stop(JLcom/twobigears/audio360/AudioObject;)I
.end method

.method public static final native AudioObject_stopScheduled(JLcom/twobigears/audio360/AudioObject;F)I
.end method

.method public static final native AudioObject_stopWithFade(JLcom/twobigears/audio360/AudioObject;F)I
.end method

.method public static final native AudioResampler_create(JFFI)J
.end method

.method public static final native AudioResampler_getInputSampleRate(JLcom/twobigears/audio360/AudioResampler;)F
.end method

.method public static final native AudioResampler_getNumChannels(JLcom/twobigears/audio360/AudioResampler;)I
.end method

.method public static final native AudioResampler_getOutputSampleRate(JLcom/twobigears/audio360/AudioResampler;)F
.end method

.method public static final native AudioResampler_getQuality(JLcom/twobigears/audio360/AudioResampler;)I
.end method

.method public static final native AudioResampler_process(JLcom/twobigears/audio360/AudioResampler;Ljava/nio/ByteBuffer;JLjava/nio/ByteBuffer;JZ)J
.end method

.method public static final native AudioResampler_reset(JLcom/twobigears/audio360/AudioResampler;)V
.end method

.method public static final native AudioSettings_bufferSize_get(JLcom/twobigears/audio360/AudioSettings;)I
.end method

.method public static final native AudioSettings_bufferSize_set(JLcom/twobigears/audio360/AudioSettings;I)V
.end method

.method public static final native AudioSettings_customAudioDeviceName_get(JLcom/twobigears/audio360/AudioSettings;)Ljava/lang/String;
.end method

.method public static final native AudioSettings_customAudioDeviceName_set(JLcom/twobigears/audio360/AudioSettings;Ljava/lang/String;)V
.end method

.method public static final native AudioSettings_default_get()J
.end method

.method public static final native AudioSettings_deviceType_get(JLcom/twobigears/audio360/AudioSettings;)I
.end method

.method public static final native AudioSettings_deviceType_set(JLcom/twobigears/audio360/AudioSettings;I)V
.end method

.method public static final native AudioSettings_sampleRate_get(JLcom/twobigears/audio360/AudioSettings;)F
.end method

.method public static final native AudioSettings_sampleRate_set(JLcom/twobigears/audio360/AudioSettings;F)V
.end method

.method public static final native DirectionalProps_coneArea_get(JLcom/twobigears/audio360/DirectionalProps;)F
.end method

.method public static final native DirectionalProps_coneArea_set(JLcom/twobigears/audio360/DirectionalProps;F)V
.end method

.method public static final native DirectionalProps_effectLevel_get(JLcom/twobigears/audio360/DirectionalProps;)F
.end method

.method public static final native DirectionalProps_effectLevel_set(JLcom/twobigears/audio360/DirectionalProps;F)V
.end method

.method public static final native DirectionalProps_set(JLcom/twobigears/audio360/DirectionalProps;FF)V
.end method

.method public static final native EngineInitSettings_audioSettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J
.end method

.method public static final native EngineInitSettings_audioSettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/AudioSettings;)V
.end method

.method public static final native EngineInitSettings_default_get()J
.end method

.method public static final native EngineInitSettings_experimental_get(JLcom/twobigears/audio360/EngineInitSettings;)J
.end method

.method public static final native EngineInitSettings_experimental_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/Experimental;)V
.end method

.method public static final native EngineInitSettings_memorySettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J
.end method

.method public static final native EngineInitSettings_memorySettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/MemorySettings;)V
.end method

.method public static final native EngineInitSettings_platformSettings_get(JLcom/twobigears/audio360/EngineInitSettings;)J
.end method

.method public static final native EngineInitSettings_platformSettings_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/PlatformSettings;)V
.end method

.method public static final native EngineInitSettings_threads_get(JLcom/twobigears/audio360/EngineInitSettings;)J
.end method

.method public static final native EngineInitSettings_threads_set(JLcom/twobigears/audio360/EngineInitSettings;JLcom/twobigears/audio360/ThreadSettings;)V
.end method

.method public static final native EventListener_change_ownership(Lcom/twobigears/audio360/EventListener;JZ)V
.end method

.method public static final native EventListener_director_connect(Lcom/twobigears/audio360/EventListener;JZZ)V
.end method

.method public static final native EventListener_onNewEvent(JLcom/twobigears/audio360/EventListener;I)V
.end method

.method public static final native Experimental_ambisonicRenderer_get(JLcom/twobigears/audio360/Experimental;)I
.end method

.method public static final native Experimental_ambisonicRenderer_set(JLcom/twobigears/audio360/Experimental;I)V
.end method

.method public static final native LoudnessStatistics_integrated_get(JLcom/twobigears/audio360/LoudnessStatistics;)F
.end method

.method public static final native LoudnessStatistics_integrated_set(JLcom/twobigears/audio360/LoudnessStatistics;F)V
.end method

.method public static final native LoudnessStatistics_momentary_get(JLcom/twobigears/audio360/LoudnessStatistics;)F
.end method

.method public static final native LoudnessStatistics_momentary_set(JLcom/twobigears/audio360/LoudnessStatistics;F)V
.end method

.method public static final native LoudnessStatistics_shortTerm_get(JLcom/twobigears/audio360/LoudnessStatistics;)F
.end method

.method public static final native LoudnessStatistics_shortTerm_set(JLcom/twobigears/audio360/LoudnessStatistics;F)V
.end method

.method public static final native LoudnessStatistics_truePeak_get(JLcom/twobigears/audio360/LoudnessStatistics;)F
.end method

.method public static final native LoudnessStatistics_truePeak_set(JLcom/twobigears/audio360/LoudnessStatistics;F)V
.end method

.method public static final native MemorySettings_audioObjectPoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I
.end method

.method public static final native MemorySettings_audioObjectPoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V
.end method

.method public static final native MemorySettings_default_get()J
.end method

.method public static final native MemorySettings_spatDecoderFilePoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I
.end method

.method public static final native MemorySettings_spatDecoderFilePoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V
.end method

.method public static final native MemorySettings_spatDecoderQueuePoolSize_get(JLcom/twobigears/audio360/MemorySettings;)I
.end method

.method public static final native MemorySettings_spatDecoderQueuePoolSize_set(JLcom/twobigears/audio360/MemorySettings;I)V
.end method

.method public static final native MemorySettings_spatQueueSizePerChannel_get(JLcom/twobigears/audio360/MemorySettings;)I
.end method

.method public static final native MemorySettings_spatQueueSizePerChannel_set(JLcom/twobigears/audio360/MemorySettings;I)V
.end method

.method public static final native MemorySettings_speakersVirtualizersPoolSize_get(JLcom/twobigears/audio360/MemorySettings;)J
.end method

.method public static final native MemorySettings_speakersVirtualizersPoolSize_set(JLcom/twobigears/audio360/MemorySettings;J)V
.end method

.method public static final native NetworkSettings_default_get()J
.end method

.method public static final native NetworkSettings_maxDownloadSpeedBytes_get(JLcom/twobigears/audio360/NetworkSettings;)J
.end method

.method public static final native NetworkSettings_maxDownloadSpeedBytes_set(JLcom/twobigears/audio360/NetworkSettings;J)V
.end method

.method public static final native NetworkSettings_printDebugInfo_get(JLcom/twobigears/audio360/NetworkSettings;)Z
.end method

.method public static final native NetworkSettings_printDebugInfo_set(JLcom/twobigears/audio360/NetworkSettings;Z)V
.end method

.method public static final native NetworkSettings_streamingBufferSizeBytes_get(JLcom/twobigears/audio360/NetworkSettings;)J
.end method

.method public static final native NetworkSettings_streamingBufferSizeBytes_set(JLcom/twobigears/audio360/NetworkSettings;J)V
.end method

.method public static final native Object3D_SWIGUpcast(J)J
.end method

.method public static final native Object3D_getPosition(JLcom/twobigears/audio360/Object3D;)J
.end method

.method public static final native Object3D_getRotation(JLcom/twobigears/audio360/Object3D;)J
.end method

.method public static final native Object3D_setPosition(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBVector;)I
.end method

.method public static final native Object3D_setRotation__SWIG_0(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBQuat;)I
.end method

.method public static final native Object3D_setRotation__SWIG_1(JLcom/twobigears/audio360/Object3D;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)I
.end method

.method public static final native PlatformSettings_useAndroidFastPath_get(JLcom/twobigears/audio360/PlatformSettings;)Z
.end method

.method public static final native PlatformSettings_useAndroidFastPath_set(JLcom/twobigears/audio360/PlatformSettings;Z)V
.end method

.method public static final native SpatDecoderFile_SWIGUpcast(J)J
.end method

.method public static final native SpatDecoderFile_applyVolumeFade(JLcom/twobigears/audio360/SpatDecoderFile;FFF)V
.end method

.method public static final native SpatDecoderFile_close(JLcom/twobigears/audio360/SpatDecoderFile;)V
.end method

.method public static final native SpatDecoderFile_enableLooping(JLcom/twobigears/audio360/SpatDecoderFile;Z)V
.end method

.method public static final native SpatDecoderFile_getAssetDurationInMs(JLcom/twobigears/audio360/SpatDecoderFile;)F
.end method

.method public static final native SpatDecoderFile_getAssetDurationInSamples(JLcom/twobigears/audio360/SpatDecoderFile;)J
.end method

.method public static final native SpatDecoderFile_getElapsedTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;)D
.end method

.method public static final native SpatDecoderFile_getElapsedTimeInSamples(JLcom/twobigears/audio360/SpatDecoderFile;)J
.end method

.method public static final native SpatDecoderFile_getFreewheelTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;)D
.end method

.method public static final native SpatDecoderFile_getResyncThresholdMs(JLcom/twobigears/audio360/SpatDecoderFile;)D
.end method

.method public static final native SpatDecoderFile_getSyncMode(JLcom/twobigears/audio360/SpatDecoderFile;)I
.end method

.method public static final native SpatDecoderFile_isOpen(JLcom/twobigears/audio360/SpatDecoderFile;)Z
.end method

.method public static final native SpatDecoderFile_loopingEnabled(JLcom/twobigears/audio360/SpatDecoderFile;)Z
.end method

.method public static final native SpatDecoderFile_open__SWIG_0(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;I)I
.end method

.method public static final native SpatDecoderFile_open__SWIG_1(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;)I
.end method

.method public static final native SpatDecoderFile_open__SWIG_2(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;I)I
.end method

.method public static final native SpatDecoderFile_open__SWIG_3(JLcom/twobigears/audio360/SpatDecoderFile;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;)I
.end method

.method public static final native SpatDecoderFile_seekToMs(JLcom/twobigears/audio360/SpatDecoderFile;F)I
.end method

.method public static final native SpatDecoderFile_seekToSample(JLcom/twobigears/audio360/SpatDecoderFile;J)I
.end method

.method public static final native SpatDecoderFile_setEventListenerInternal(JLcom/twobigears/audio360/SpatDecoderFile;JLcom/twobigears/audio360/EventListener;)V
.end method

.method public static final native SpatDecoderFile_setExternalClockInMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V
.end method

.method public static final native SpatDecoderFile_setFreewheelTimeInMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V
.end method

.method public static final native SpatDecoderFile_setResyncThresholdMs(JLcom/twobigears/audio360/SpatDecoderFile;D)V
.end method

.method public static final native SpatDecoderFile_setSyncMode(JLcom/twobigears/audio360/SpatDecoderFile;I)V
.end method

.method public static final native SpatDecoderInterface_SWIGUpcast(J)J
.end method

.method public static final native SpatDecoderInterface_enableFocus(JLcom/twobigears/audio360/SpatDecoderInterface;ZZ)V
.end method

.method public static final native SpatDecoderInterface_getPlayState(JLcom/twobigears/audio360/SpatDecoderInterface;)I
.end method

.method public static final native SpatDecoderInterface_getVolume(JLcom/twobigears/audio360/SpatDecoderInterface;)F
.end method

.method public static final native SpatDecoderInterface_getVolumeDecibels(JLcom/twobigears/audio360/SpatDecoderInterface;)F
.end method

.method public static final native SpatDecoderInterface_pause(JLcom/twobigears/audio360/SpatDecoderInterface;)I
.end method

.method public static final native SpatDecoderInterface_pauseScheduled(JLcom/twobigears/audio360/SpatDecoderInterface;F)I
.end method

.method public static final native SpatDecoderInterface_pauseWithFade(JLcom/twobigears/audio360/SpatDecoderInterface;F)I
.end method

.method public static final native SpatDecoderInterface_play(JLcom/twobigears/audio360/SpatDecoderInterface;)I
.end method

.method public static final native SpatDecoderInterface_playScheduled(JLcom/twobigears/audio360/SpatDecoderInterface;F)I
.end method

.method public static final native SpatDecoderInterface_playWithFade(JLcom/twobigears/audio360/SpatDecoderInterface;F)I
.end method

.method public static final native SpatDecoderInterface_setFocusOrientationQuat(JLcom/twobigears/audio360/SpatDecoderInterface;JLcom/twobigears/audio360/TBQuat;)V
.end method

.method public static final native SpatDecoderInterface_setFocusProperties(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V
.end method

.method public static final native SpatDecoderInterface_setFocusWidthDegrees(JLcom/twobigears/audio360/SpatDecoderInterface;F)V
.end method

.method public static final native SpatDecoderInterface_setOffFocusLeveldB(JLcom/twobigears/audio360/SpatDecoderInterface;F)V
.end method

.method public static final native SpatDecoderInterface_setVolumeDecibels__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V
.end method

.method public static final native SpatDecoderInterface_setVolumeDecibels__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V
.end method

.method public static final native SpatDecoderInterface_setVolume__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V
.end method

.method public static final native SpatDecoderInterface_setVolume__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V
.end method

.method public static final native SpatDecoderQueue_SWIGUpcast(J)J
.end method

.method public static final native SpatDecoderQueue_enqueueDataFloat(JLcom/twobigears/audio360/SpatDecoderQueue;Ljava/nio/ByteBuffer;II)I
.end method

.method public static final native SpatDecoderQueue_enqueueDataInt16(JLcom/twobigears/audio360/SpatDecoderQueue;Ljava/nio/ByteBuffer;II)I
.end method

.method public static final native SpatDecoderQueue_enqueueSilence(JLcom/twobigears/audio360/SpatDecoderQueue;II)I
.end method

.method public static final native SpatDecoderQueue_flushQueue(JLcom/twobigears/audio360/SpatDecoderQueue;)V
.end method

.method public static final native SpatDecoderQueue_getEndOfStreamStatus(JLcom/twobigears/audio360/SpatDecoderQueue;)Z
.end method

.method public static final native SpatDecoderQueue_getFreeSpaceInQueue(JLcom/twobigears/audio360/SpatDecoderQueue;I)I
.end method

.method public static final native SpatDecoderQueue_getNumSamplesDequeuedPerChannel(JLcom/twobigears/audio360/SpatDecoderQueue;)Ljava/math/BigInteger;
.end method

.method public static final native SpatDecoderQueue_getQueueSize(JLcom/twobigears/audio360/SpatDecoderQueue;I)I
.end method

.method public static final native SpatDecoderQueue_setEndOfStream(JLcom/twobigears/audio360/SpatDecoderQueue;Z)V
.end method

.method public static final native SpatDecoderQueue_setEventListenerInternal(JLcom/twobigears/audio360/SpatDecoderQueue;JLcom/twobigears/audio360/EventListener;)V
.end method

.method public static SwigDirector_EventListener_onNewEvent(Lcom/twobigears/audio360/EventListener;I)V
    .locals 0

    .line 341
    invoke-static {p1}, Lcom/twobigears/audio360/Event;->swigToEnum(I)Lcom/twobigears/audio360/Event;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twobigears/audio360/EventListener;->onNewEvent(Lcom/twobigears/audio360/Event;)V

    return-void
.end method

.method public static final native TBQuat_antiRotateVectorByQuat(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBQuat_convertFromOpenGLQuaternion(FFFF)J
.end method

.method public static final native TBQuat_generateRandomQuat()J
.end method

.method public static final native TBQuat_getEulerAnglesFromQuat(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_getForwardFromQuat(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_getFromToQuatRotation(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBQuat_getQuatFromEulerAngles(FFF)J
.end method

.method public static final native TBQuat_getQuatFromForwardAndUpVectors(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBQuat_getQuatFromMatrix(FFFFFFFFF)J
.end method

.method public static final native TBQuat_getRightFromQuat(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_getUpFromQuat(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_identity()J
.end method

.method public static final native TBQuat_invert(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_normalise(JLcom/twobigears/audio360/TBQuat;)V
.end method

.method public static final native TBQuat_quatProductUnNormalised(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native TBQuat_rotateVectorByQuat(JLcom/twobigears/audio360/TBQuat;JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBQuat_toString__SWIG_0(JLcom/twobigears/audio360/TBQuat;I)Ljava/lang/String;
.end method

.method public static final native TBQuat_toString__SWIG_1(JLcom/twobigears/audio360/TBQuat;)Ljava/lang/String;
.end method

.method public static final native TBQuat_w_get(JLcom/twobigears/audio360/TBQuat;)F
.end method

.method public static final native TBQuat_w_set(JLcom/twobigears/audio360/TBQuat;F)V
.end method

.method public static final native TBQuat_x_get(JLcom/twobigears/audio360/TBQuat;)F
.end method

.method public static final native TBQuat_x_set(JLcom/twobigears/audio360/TBQuat;F)V
.end method

.method public static final native TBQuat_y_get(JLcom/twobigears/audio360/TBQuat;)F
.end method

.method public static final native TBQuat_y_set(JLcom/twobigears/audio360/TBQuat;F)V
.end method

.method public static final native TBQuat_z_get(JLcom/twobigears/audio360/TBQuat;)F
.end method

.method public static final native TBQuat_z_set(JLcom/twobigears/audio360/TBQuat;F)V
.end method

.method public static final native TBVector_Angle(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_CrossProduct(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBVector_DotProduct(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_abs__SWIG_0(JLcom/twobigears/audio360/TBVector;)V
.end method

.method public static final native TBVector_clampMagnitude(JLcom/twobigears/audio360/TBVector;F)V
.end method

.method public static final native TBVector_forward()J
.end method

.method public static final native TBVector_getVectorFromAziEle(FF)J
.end method

.method public static final native TBVector_getVectorFromAziEleDist(FFF)J
.end method

.method public static final native TBVector_getVectorFromEuler(JLcom/twobigears/audio360/TBVector;)J
.end method

.method public static final native TBVector_magSquared(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_magnitude(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_max_val(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_min_val(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_normalise(JLcom/twobigears/audio360/TBVector;)V
.end method

.method public static final native TBVector_rotateByVectors(JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;JLcom/twobigears/audio360/TBVector;)V
.end method

.method public static final native TBVector_set(JLcom/twobigears/audio360/TBVector;FFF)V
.end method

.method public static final native TBVector_toString__SWIG_0(JLcom/twobigears/audio360/TBVector;I)Ljava/lang/String;
.end method

.method public static final native TBVector_toString__SWIG_1(JLcom/twobigears/audio360/TBVector;)Ljava/lang/String;
.end method

.method public static final native TBVector_up()J
.end method

.method public static final native TBVector_x_get(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_x_set(JLcom/twobigears/audio360/TBVector;F)V
.end method

.method public static final native TBVector_y_get(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_y_set(JLcom/twobigears/audio360/TBVector;F)V
.end method

.method public static final native TBVector_z_get(JLcom/twobigears/audio360/TBVector;)F
.end method

.method public static final native TBVector_z_set(JLcom/twobigears/audio360/TBVector;F)V
.end method

.method public static final native TBVector_zero()J
.end method

.method public static final native ThreadSettings_useDecoderThread_get(JLcom/twobigears/audio360/ThreadSettings;)Z
.end method

.method public static final native ThreadSettings_useDecoderThread_set(JLcom/twobigears/audio360/ThreadSettings;Z)V
.end method

.method public static final native TransportControl_getPlayState(JLcom/twobigears/audio360/TransportControl;)I
.end method

.method public static final native TransportControl_pause(JLcom/twobigears/audio360/TransportControl;)I
.end method

.method public static final native TransportControl_pauseScheduled(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native TransportControl_pauseWithFade(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native TransportControl_play(JLcom/twobigears/audio360/TransportControl;)I
.end method

.method public static final native TransportControl_playScheduled(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native TransportControl_playWithFade(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native TransportControl_stop(JLcom/twobigears/audio360/TransportControl;)I
.end method

.method public static final native TransportControl_stopScheduled(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native TransportControl_stopWithFade(JLcom/twobigears/audio360/TransportControl;F)I
.end method

.method public static final native delete_AssetDescriptor(J)V
.end method

.method public static final native delete_AttenuationProps(J)V
.end method

.method public static final native delete_AudioEngine(J)V
.end method

.method public static final native delete_AudioResampler(J)V
.end method

.method public static final native delete_AudioSettings(J)V
.end method

.method public static final native delete_DirectionalProps(J)V
.end method

.method public static final native delete_EngineInitSettings(J)V
.end method

.method public static final native delete_EventListener(J)V
.end method

.method public static final native delete_Experimental(J)V
.end method

.method public static final native delete_LoudnessStatistics(J)V
.end method

.method public static final native delete_MemorySettings(J)V
.end method

.method public static final native delete_NetworkSettings(J)V
.end method

.method public static final native delete_PlatformSettings(J)V
.end method

.method public static final native delete_TBQuat(J)V
.end method

.method public static final native delete_TBVector(J)V
.end method

.method public static final native delete_ThreadSettings(J)V
.end method

.method public static final native getNumChannelsForMap(I)I
.end method

.method public static final native kMaxStrSize_get()J
.end method

.method public static final native new_AssetDescriptor__SWIG_0()J
.end method

.method public static final native new_AssetDescriptor__SWIG_1(JJ)J
.end method

.method public static final native new_AttenuationProps__SWIG_0()J
.end method

.method public static final native new_AttenuationProps__SWIG_1(FFFZ)J
.end method

.method public static final native new_AttenuationProps__SWIG_2(FFF)J
.end method

.method public static final native new_AudioSettings()J
.end method

.method public static final native new_DirectionalProps__SWIG_0()J
.end method

.method public static final native new_DirectionalProps__SWIG_1(FF)J
.end method

.method public static final native new_EngineInitSettings()J
.end method

.method public static final native new_EventListener()J
.end method

.method public static final native new_Experimental()J
.end method

.method public static final native new_LoudnessStatistics()J
.end method

.method public static final native new_MemorySettings()J
.end method

.method public static final native new_NetworkSettings()J
.end method

.method public static final native new_PlatformSettings()J
.end method

.method public static final native new_TBQuat__SWIG_0()J
.end method

.method public static final native new_TBQuat__SWIG_1(FFFF)J
.end method

.method public static final native new_TBQuat__SWIG_2(JLcom/twobigears/audio360/TBQuat;)J
.end method

.method public static final native new_TBVector__SWIG_0()J
.end method

.method public static final native new_TBVector__SWIG_1(FFF)J
.end method

.method public static final native new_TBVector__SWIG_2(F)J
.end method

.method public static final native new_ThreadSettings()J
.end method

.method private static final native swig_module_init()V
.end method
