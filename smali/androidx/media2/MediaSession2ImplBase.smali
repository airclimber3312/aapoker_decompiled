.class Landroidx/media2/MediaSession2ImplBase;
.super Ljava/lang/Object;
.source "MediaSession2ImplBase.java"

# interfaces
.implements Landroidx/media2/MediaSession2$MediaSession2Impl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;,
        Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;,
        Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final DEFAULT_MEDIA_SESSION_TAG_DELIM:Ljava/lang/String; = "."

.field private static final DEFAULT_MEDIA_SESSION_TAG_PREFIX:Ljava/lang/String; = "android.media.session2.id"

.field static final TAG:Ljava/lang/String; = "MS2ImplBase"


# instance fields
.field final mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

.field final mCallback:Landroidx/media2/MediaSession2$SessionCallback;

.field private final mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mInstance:Landroidx/media2/MediaSession2;

.field final mLock:Ljava/lang/Object;

.field mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

.field private mPlayer:Landroidx/media2/MediaPlayerConnector;

.field private final mPlayerEventCallback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

.field private mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

.field private final mPlaylistEventCallback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

.field private final mSession2Stub:Landroidx/media2/MediaSession2Stub;

.field private final mSessionActivity:Landroid/app/PendingIntent;

.field private final mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

.field private final mSessionLegacyStub:Landroidx/media2/MediaSessionLegacyStub;

.field private mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

.field private final mSessionToken:Landroidx/media2/SessionToken2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MS2ImplBase"

    const/4 v1, 0x3

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroidx/media2/MediaSession2;Landroid/content/Context;Ljava/lang/String;Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;Landroid/app/PendingIntent;Ljava/util/concurrent/Executor;Landroidx/media2/MediaSession2$SessionCallback;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    .line 116
    iput-object v2, v0, Landroidx/media2/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    .line 117
    iput-object v1, v0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    .line 118
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "MediaController2_Thread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 120
    new-instance v12, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v12, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v12, v0, Landroidx/media2/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v9, Landroidx/media2/MediaSession2Stub;

    invoke-direct {v9, p0}, Landroidx/media2/MediaSession2Stub;-><init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V

    iput-object v9, v0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    .line 123
    iput-object v11, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    move-object/from16 v3, p8

    .line 125
    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    move-object/from16 v3, p7

    .line 126
    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const-string v3, "audio"

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 129
    new-instance v3, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;

    invoke-direct {v3, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlayerEventCallback;-><init>(Landroidx/media2/MediaSession2ImplBase;)V

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mPlayerEventCallback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    .line 130
    new-instance v3, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;

    invoke-direct {v3, p0}, Landroidx/media2/MediaSession2ImplBase$MyPlaylistEventCallback;-><init>(Landroidx/media2/MediaSession2ImplBase;)V

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistEventCallback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    .line 131
    new-instance v3, Landroidx/media2/AudioFocusHandler;

    invoke-direct {v3, v2, v1}, Landroidx/media2/AudioFocusHandler;-><init>(Landroid/content/Context;Landroidx/media2/MediaSession2;)V

    iput-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    const-string v1, "android.media.MediaLibraryService2"

    .line 134
    invoke-static {v2, v1, v10}, Landroidx/media2/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "android.media.MediaSessionService2"

    .line 135
    invoke-static {v2, v1, v10}, Landroidx/media2/MediaSession2ImplBase;->getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v7, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ambiguous session type. Multiple session services define the same id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 140
    new-instance v1, Landroidx/media2/SessionToken2;

    new-instance v13, Landroidx/media2/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x2

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v13

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/media2/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/IMediaSession2;)V

    invoke-direct {v1, v13}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    iput-object v1, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    .line 144
    new-instance v13, Landroidx/media2/SessionToken2;

    new-instance v14, Landroidx/media2/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x1

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v14

    move-object v7, v1

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/media2/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/IMediaSession2;)V

    invoke-direct {v13, v14}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    iput-object v13, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    goto :goto_1

    .line 148
    :cond_3
    new-instance v1, Landroidx/media2/SessionToken2;

    new-instance v13, Landroidx/media2/SessionToken2ImplBase;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/4 v5, 0x0

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v3, v13

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v9}, Landroidx/media2/SessionToken2ImplBase;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/media2/IMediaSession2;)V

    invoke-direct {v1, v13}, Landroidx/media2/SessionToken2;-><init>(Landroidx/media2/SessionToken2$SessionToken2Impl;)V

    iput-object v1, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.media.session2.id"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const-string v4, "."

    .line 152
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    new-instance v4, Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v5, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v5}, Landroidx/media2/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v2, v1, v5}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iput-object v4, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 157
    new-instance v1, Landroidx/media2/MediaSessionLegacyStub;

    invoke-direct {v1, p0}, Landroidx/media2/MediaSessionLegacyStub;-><init>(Landroidx/media2/MediaSession2$MediaSession2Impl;)V

    iput-object v1, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionLegacyStub:Landroidx/media2/MediaSessionLegacyStub;

    .line 159
    invoke-virtual {v4, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->setSessionActivity(Landroid/app/PendingIntent;)V

    const/4 v5, 0x7

    .line 160
    invoke-virtual {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->setFlags(I)V

    .line 163
    invoke-virtual {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 164
    iget-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    invoke-virtual {v3}, Landroidx/media2/SessionToken2;->getType()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v2, 0x0

    .line 165
    iput-object v2, v0, Landroidx/media2/MediaSession2ImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    goto :goto_2

    .line 167
    :cond_4
    iget-object v3, v0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    .line 168
    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v5

    .line 167
    invoke-virtual {p0, v2, v3, v5}, Landroidx/media2/MediaSession2ImplBase;->createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/SessionToken2;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/MediaSession2ImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    :goto_2
    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 171
    invoke-virtual {p0, v2, v3}, Landroidx/media2/MediaSession2ImplBase;->updatePlayer(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V

    .line 174
    invoke-virtual {v4, v1, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method private getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I
    .locals 2

    const/4 v0, 0x3

    if-nez p1, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1}, Landroidx/media/AudioAttributesCompat;->getLegacyStreamType()I

    move-result p1

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method private static getServiceName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1019
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1020
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 p0, 0x80

    .line 1022
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    const/4 v0, 0x0

    .line 1026
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1027
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-static {v1}, Landroidx/media2/SessionToken2;->getSessionId(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1028
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1029
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1036
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 1033
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Ambiguous session type. Multiple session services define the same id="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private isInPlaybackState(Landroidx/media2/MediaPlayerConnector;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlayerState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlayerState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private notifyAgentUpdatedNotLocked(Landroidx/media2/MediaPlaylistAgent;)V
    .locals 2

    .line 1052
    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    .line 1053
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .line 1054
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$9;

    invoke-direct {v0, p0, v1}, Landroidx/media2/MediaSession2ImplBase$9;-><init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    goto :goto_0

    .line 1063
    :cond_0
    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    .line 1064
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v1

    .line 1065
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1066
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$10;

    invoke-direct {v0, p0, v1}, Landroidx/media2/MediaSession2ImplBase$10;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaMetadata2;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1074
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    .line 1075
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v1

    .line 1076
    invoke-static {v0, v1}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1077
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$11;

    invoke-direct {v0, p0, v1}, Landroidx/media2/MediaSession2ImplBase$11;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaItem2;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1084
    :cond_2
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getRepeatMode()I

    move-result v0

    .line 1085
    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getRepeatMode()I

    move-result v1

    if-eq v1, v0, :cond_3

    .line 1086
    new-instance v1, Landroidx/media2/MediaSession2ImplBase$12;

    invoke-direct {v1, p0, v0}, Landroidx/media2/MediaSession2ImplBase$12;-><init>(Landroidx/media2/MediaSession2ImplBase;I)V

    invoke-virtual {p0, v1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1093
    :cond_3
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getShuffleMode()I

    move-result v0

    .line 1094
    invoke-virtual {p1}, Landroidx/media2/MediaPlaylistAgent;->getShuffleMode()I

    move-result p1

    if-eq p1, v0, :cond_4

    .line 1095
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$13;

    invoke-direct {p1, p0, v0}, Landroidx/media2/MediaSession2ImplBase$13;-><init>(Landroidx/media2/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    :cond_4
    return-void
.end method

.method private notifyPlayerUpdatedNotLocked(Landroidx/media2/MediaPlayerConnector;)V
    .locals 12

    .line 1107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1108
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v9

    .line 1109
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlayerState()I

    move-result v6

    .line 1110
    new-instance v11, Landroidx/media2/MediaSession2ImplBase$14;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroidx/media2/MediaSession2ImplBase$14;-><init>(Landroidx/media2/MediaSession2ImplBase;JJI)V

    invoke-virtual {p0, v11}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1116
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1118
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getBufferingState()I

    move-result v3

    .line 1119
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v4

    .line 1120
    new-instance v6, Landroidx/media2/MediaSession2ImplBase$15;

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2ImplBase$15;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaItem2;IJ)V

    invoke-virtual {p0, v6}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 1127
    :cond_0
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v6

    .line 1128
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getPlaybackSpeed()F

    move-result p1

    cmpl-float p1, v6, p1

    if-eqz p1, :cond_1

    .line 1129
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$16;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, v7

    move-wide v4, v9

    invoke-direct/range {v0 .. v6}, Landroidx/media2/MediaSession2ImplBase$16;-><init>(Landroidx/media2/MediaSession2ImplBase;JJF)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addPlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 781
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 782
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 783
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 785
    invoke-virtual {v1, p1, p2}, Landroidx/media2/MediaPlaylistAgent;->addPlaylistItem(ILandroidx/media2/MediaItem2;)V

    goto :goto_0

    .line 786
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    .line 787
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 783
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 778
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 775
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clearOnDataSourceMissingHelper()V
    .locals 2

    .line 678
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 679
    :try_start_0
    iput-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    .line 680
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 681
    invoke-virtual {v1}, Landroidx/media2/SessionPlaylistAgentImplBase;->clearOnDataSourceMissingHelper()V

    .line 683
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 3

    .line 328
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-nez v1, :cond_0

    .line 330
    monitor-exit v0

    return-void

    .line 332
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    invoke-virtual {v1}, Landroidx/media2/AudioFocusHandler;->close()V

    .line 333
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayerEventCallback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    invoke-virtual {v1, v2}, Landroidx/media2/MediaPlayerConnector;->unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    const/4 v1, 0x0

    .line 334
    iput-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 335
    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 336
    new-instance v2, Landroidx/media2/MediaSession2ImplBase$2;

    invoke-direct {v2, p0}, Landroidx/media2/MediaSession2ImplBase$2;-><init>(Landroidx/media2/MediaSession2ImplBase;)V

    invoke-virtual {p0, v2}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    .line 342
    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 343
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 350
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method createLegacyBrowserService(Landroid/content/Context;Landroidx/media2/SessionToken2;Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroidx/media/MediaBrowserServiceCompat;
    .locals 1

    .line 995
    invoke-virtual {p2}, Landroidx/media2/SessionToken2;->getType()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1000
    :cond_0
    new-instance p2, Landroidx/media2/MediaSessionService2LegacyStub;

    invoke-direct {p2, p1, p0, p3}, Landroidx/media2/MediaSessionService2LegacyStub;-><init>(Landroid/content/Context;Landroidx/media2/MediaSession2$MediaSession2Impl;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    return-object p2
.end method

.method createPlaybackInfo(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 4

    .line 284
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object v0

    .line 286
    instance-of v1, p1, Landroidx/media2/BaseRemoteMediaPlayerConnector;

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 287
    invoke-direct {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I

    move-result p1

    .line 289
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 292
    :cond_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 296
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioManager:Landroid/media/AudioManager;

    .line 297
    invoke-virtual {v3, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    const/4 v3, 0x1

    .line 292
    invoke-static {v3, v0, v2, v1, p1}, Landroidx/media2/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object p1

    return-object p1

    .line 299
    :cond_1
    check-cast p1, Landroidx/media2/BaseRemoteMediaPlayerConnector;

    .line 303
    invoke-virtual {p1}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getVolumeControlType()I

    move-result v1

    .line 304
    invoke-virtual {p1}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getMaxPlayerVolume()F

    move-result v3

    float-to-int v3, v3

    .line 305
    invoke-virtual {p1}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getPlayerVolume()F

    move-result p1

    float-to-int p1, p1

    .line 300
    invoke-static {v2, v0, v1, v3, p1}, Landroidx/media2/MediaController2$PlaybackInfo;->createPlaybackInfo(ILandroidx/media/AudioAttributesCompat;III)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object p1

    return-object p1
.end method

.method public createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 10

    .line 952
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 953
    :try_start_0
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlayerState()I

    move-result v1

    .line 954
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getBufferingState()I

    move-result v2

    .line 953
    invoke-static {v1, v2}, Landroidx/media2/MediaUtils2;->convertToPlaybackStateCompatState(II)I

    move-result v4

    .line 972
    new-instance v3, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    invoke-direct {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;-><init>()V

    .line 973
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getCurrentPosition()J

    move-result-wide v5

    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getPlaybackSpeed()F

    move-result v7

    .line 974
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 973
    invoke-virtual/range {v3 .. v9}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setState(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    const-wide/32 v2, 0x37ffff

    .line 975
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setActions(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 976
    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->getBufferedPosition()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->setBufferedPosition(J)Landroid/support/v4/media/session/PlaybackStateCompat$Builder;

    move-result-object v1

    .line 977
    invoke-virtual {v1}, Landroid/support/v4/media/session/PlaybackStateCompat$Builder;->build()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 978
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioFocusHandler()Landroidx/media2/AudioFocusHandler;
    .locals 1

    .line 942
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 3

    .line 610
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    invoke-direct {p0, v1}, Landroidx/media2/MediaSession2ImplBase;->isInPlaybackState(Landroidx/media2/MediaPlayerConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0

    .line 615
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 616
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    .line 612
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBufferingState()I
    .locals 3

    .line 624
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getBufferingState()I

    move-result v0

    return v0

    .line 629
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 630
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 626
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCallback()Landroidx/media2/MediaSession2$SessionCallback;
    .locals 1

    .line 932
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    return-object v0
.end method

.method public getCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 927
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getConnectedControllers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            ">;"
        }
    .end annotation

    .line 374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 375
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v1}, Landroidx/media2/MediaSession2Stub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Landroidx/media2/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 377
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionLegacyStub:Landroidx/media2/MediaSessionLegacyStub;

    invoke-virtual {v1}, Landroidx/media2/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v1

    .line 378
    invoke-virtual {v1}, Landroidx/media2/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v1

    .line 377
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 922
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentMediaItem()Landroidx/media2/MediaItem2;
    .locals 3

    .line 829
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 831
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 833
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getCurrentMediaItem()Landroidx/media2/MediaItem2;

    move-result-object v0

    return-object v0

    .line 834
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 835
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 831
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentPosition()J
    .locals 3

    .line 580
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 582
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    invoke-direct {p0, v1}, Landroidx/media2/MediaSession2ImplBase;->isInPlaybackState(Landroidx/media2/MediaPlayerConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0

    .line 585
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 586
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    .line 582
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getDuration()J
    .locals 3

    .line 594
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 596
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-direct {p0, v1}, Landroidx/media2/MediaSession2ImplBase;->isInPlaybackState(Landroidx/media2/MediaPlayerConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 601
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 602
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    .line 596
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getInstance()Landroidx/media2/MediaSession2;
    .locals 1

    .line 912
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    return-object v0
.end method

.method getLegacyBrowserService()Landroidx/media/MediaBrowserServiceCompat;
    .locals 1

    .line 1015
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    return-object v0
.end method

.method public getLegacyBrowserServiceBinder()Landroid/os/IBinder;
    .locals 2

    .line 1007
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    if-eqz v0, :cond_0

    .line 1008
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.browse.MediaBrowserService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1009
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mBrowserServiceLegacyStub:Landroidx/media/MediaBrowserServiceCompat;

    invoke-virtual {v1, v0}, Landroidx/media/MediaBrowserServiceCompat;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlaybackInfo()Landroidx/media2/MediaController2$PlaybackInfo;
    .locals 2

    .line 983
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 984
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 985
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaybackSpeed()F
    .locals 3

    .line 638
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 641
    invoke-direct {p0, v1}, Landroidx/media2/MediaSession2ImplBase;->isInPlaybackState(Landroidx/media2/MediaPlayerConnector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getPlaybackSpeed()F

    move-result v0

    return v0

    .line 643
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 644
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :catchall_0
    move-exception v1

    .line 640
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlayer()Landroidx/media2/MediaPlayerConnector;
    .locals 2

    .line 355
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 357
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlayerState()I
    .locals 3

    .line 566
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 568
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getPlayerState()I

    move-result v0

    return v0

    .line 571
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 572
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x3

    return v0

    :catchall_0
    move-exception v1

    .line 568
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylist()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;"
        }
    .end annotation

    .line 689
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 691
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getPlaylist()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 694
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 695
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 691
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPlaylistAgent()Landroidx/media2/MediaPlaylistAgent;
    .locals 2

    .line 362
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 364
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPlaylistMetadata()Landroidx/media2/MediaMetadata2;
    .locals 3

    .line 761
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 762
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 763
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 765
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getPlaylistMetadata()Landroidx/media2/MediaMetadata2;

    move-result-object v0

    return-object v0

    .line 766
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 767
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    .line 763
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getRepeatMode()I
    .locals 3

    .line 856
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 857
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 858
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 860
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getRepeatMode()I

    move-result v0

    return v0

    .line 861
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 862
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 858
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 990
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionActivity:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSessionBinder()Landroid/os/IBinder;
    .locals 1

    .line 917
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getSessionCompat()Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .line 937
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method public getShuffleMode()I
    .locals 3

    .line 883
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 884
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 885
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->getShuffleMode()I

    move-result v0

    return v0

    .line 888
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 889
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 885
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getToken()Landroidx/media2/SessionToken2;
    .locals 1

    .line 369
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionToken:Landroidx/media2/SessionToken2;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 947
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public notifyError(ILandroid/os/Bundle;)V
    .locals 1

    .line 544
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$7;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSession2ImplBase$7;-><init>(Landroidx/media2/MediaSession2ImplBase;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method notifyPlaybackInfoChangedNotLocked(Landroidx/media2/MediaController2$PlaybackInfo;)V
    .locals 1

    .line 1213
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$21;

    invoke-direct {v0, p0, p1}, Landroidx/media2/MediaSession2ImplBase$21;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaController2$PlaybackInfo;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method notifyPlaylistChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaPlaylistAgent;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation

    .line 1142
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1143
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1145
    monitor-exit v0

    return-void

    .line 1147
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroidx/media2/MediaSession2$SessionCallback;->onPlaylistChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    .line 1149
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$17;

    invoke-direct {p1, p0, p2, p3}, Landroidx/media2/MediaSession2ImplBase$17;-><init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1147
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyPlaylistMetadataChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V
    .locals 2

    .line 1160
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1161
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1163
    monitor-exit v0

    return-void

    .line 1165
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1166
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaSession2$SessionCallback;->onPlaylistMetadataChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;Landroidx/media2/MediaMetadata2;)V

    .line 1167
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$18;

    invoke-direct {p1, p0, p2}, Landroidx/media2/MediaSession2ImplBase$18;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaMetadata2;)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1165
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyRepeatModeChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 2

    .line 1178
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1181
    monitor-exit v0

    return-void

    .line 1183
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaSession2$SessionCallback;->onRepeatModeChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;I)V

    .line 1185
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$19;

    invoke-direct {p1, p0, p2}, Landroidx/media2/MediaSession2ImplBase$19;-><init>(Landroidx/media2/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1183
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public notifyRoutesInfoChanged(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 555
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$8;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2ImplBase$8;-><init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method notifyShuffleModeChangedOnExecutor(Landroidx/media2/MediaPlaylistAgent;I)V
    .locals 2

    .line 1196
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1197
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-eq p1, v1, :cond_0

    .line 1199
    monitor-exit v0

    return-void

    .line 1201
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mCallback:Landroidx/media2/MediaSession2$SessionCallback;

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mInstance:Landroidx/media2/MediaSession2;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/media2/MediaSession2$SessionCallback;->onShuffleModeChanged(Landroidx/media2/MediaSession2;Landroidx/media2/MediaPlaylistAgent;I)V

    .line 1203
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$20;

    invoke-direct {p1, p0, p2}, Landroidx/media2/MediaSession2ImplBase$20;-><init>(Landroidx/media2/MediaSession2ImplBase;I)V

    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1201
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3

    .line 1246
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    .line 1247
    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media2/ConnectedControllersManager;->getConnectedControllers()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1248
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1249
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/MediaSession2$ControllerInfo;

    invoke-virtual {p0, v2, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionLegacyStub:Landroidx/media2/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaSessionLegacyStub;->getControllersForAll()Landroidx/media2/MediaSession2$ControllerInfo;

    move-result-object v0

    .line 1252
    invoke-virtual {p0, v0, p1}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void
.end method

.method notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V
    .locals 3

    const-string v0, "MS2ImplBase"

    if-nez p1, :cond_0

    return-void

    .line 1227
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->getControllerCb()Landroidx/media2/MediaSession2$ControllerCb;

    move-result-object v1

    invoke-interface {p2, v1}, Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;->run(Landroidx/media2/MediaSession2$ControllerCb;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p2

    .line 1229
    sget-boolean v1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/media2/MediaSession2$ControllerInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is gone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1234
    :cond_1
    iget-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {p2}, Landroidx/media2/MediaSession2Stub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/media2/ConnectedControllersManager;->removeController(Landroidx/media2/MediaSession2$ControllerInfo;)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 482
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 484
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 486
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    invoke-virtual {v0}, Landroidx/media2/AudioFocusHandler;->onPauseRequested()V

    .line 487
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->pause()V

    goto :goto_0

    .line 488
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 489
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 484
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public play()V
    .locals 3

    .line 459
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 461
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 463
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mAudioFocusHandler:Landroidx/media2/AudioFocusHandler;

    invoke-virtual {v0}, Landroidx/media2/AudioFocusHandler;->onPlayRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 464
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->getPlayerState()I

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->prepare()V

    .line 470
    :cond_0
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->play()V

    goto :goto_0

    :cond_1
    const-string v0, "MS2ImplBase"

    const-string v1, "play() wouldn\'t be called because of the failure in audio focus"

    .line 472
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_2
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 475
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 461
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public prepare()V
    .locals 3

    .line 509
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 511
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 513
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->prepare()V

    goto :goto_0

    .line 514
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 515
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 511
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 797
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 798
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlaylistAgent;->removePlaylistItem(Landroidx/media2/MediaItem2;)V

    goto :goto_0

    .line 802
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 803
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 799
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 794
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public replacePlaylistItem(ILandroidx/media2/MediaItem2;)V
    .locals 2

    if-ltz p1, :cond_3

    if-eqz p2, :cond_2

    .line 816
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 818
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 820
    invoke-virtual {v1, p1, p2}, Landroidx/media2/MediaPlaylistAgent;->replacePlaylistItem(ILandroidx/media2/MediaItem2;)V

    goto :goto_0

    .line 821
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    .line 822
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 818
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 813
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "item shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 810
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "index shouldn\'t be negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reset()V
    .locals 3

    .line 496
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v1}, Landroidx/media2/MediaPlayerConnector;->reset()V

    goto :goto_0

    .line 501
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 502
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 498
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public seekTo(J)V
    .locals 2

    .line 522
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 524
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 526
    invoke-virtual {v1, p1, p2}, Landroidx/media2/MediaPlayerConnector;->seekTo(J)V

    goto :goto_0

    .line 527
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 524
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendCustomCommand(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 448
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$6;

    invoke-direct {v0, p0, p2, p3, p4}, Landroidx/media2/MediaSession2ImplBase$6;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 446
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 443
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendCustomCommand(Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 430
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$5;

    invoke-direct {v0, p0, p1, p2}, Landroidx/media2/MediaSession2ImplBase$5;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommand2;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToAllControllers(Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 428
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "command shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 409
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/media2/ConnectedControllersManager;->isConnected(Landroidx/media2/MediaSession2$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSession2Stub:Landroidx/media2/MediaSession2Stub;

    invoke-virtual {v0}, Landroidx/media2/MediaSession2Stub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    .line 411
    invoke-virtual {v0, p1, p2}, Landroidx/media2/ConnectedControllersManager;->updateAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    .line 412
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$4;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2ImplBase$4;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/SessionCommandGroup2;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionLegacyStub:Landroidx/media2/MediaSessionLegacyStub;

    invoke-virtual {v0}, Landroidx/media2/MediaSessionLegacyStub;->getConnectedControllersManager()Landroidx/media2/ConnectedControllersManager;

    move-result-object v0

    .line 420
    invoke-virtual {v0, p1, p2}, Landroidx/media2/ConnectedControllersManager;->updateAllowedCommands(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/SessionCommandGroup2;)V

    :goto_0
    return-void

    .line 406
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "commands shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomLayout(Landroidx/media2/MediaSession2$ControllerInfo;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media2/MediaSession2$ControllerInfo;",
            "Ljava/util/List<",
            "Landroidx/media2/MediaSession2$CommandButton;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 391
    new-instance v0, Landroidx/media2/MediaSession2ImplBase$3;

    invoke-direct {v0, p0, p2}, Landroidx/media2/MediaSession2ImplBase$3;-><init>(Landroidx/media2/MediaSession2ImplBase;Ljava/util/List;)V

    invoke-virtual {p0, p1, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyToController(Landroidx/media2/MediaSession2$ControllerInfo;Landroidx/media2/MediaSession2ImplBase$NotifyRunnable;)V

    return-void

    .line 389
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "layout shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 386
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "controller shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 668
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 669
    :try_start_0
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    .line 670
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v1, p1}, Landroidx/media2/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V

    .line 673
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 666
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "helper shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPlaybackSpeed(F)V
    .locals 2

    .line 652
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 654
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlayerConnector;->setPlaybackSpeed(F)V

    goto :goto_0

    .line 657
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 658
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 654
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media2/MediaItem2;",
            ">;",
            "Landroidx/media2/MediaMetadata2;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 706
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 708
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 710
    invoke-virtual {v1, p1, p2}, Landroidx/media2/MediaPlaylistAgent;->setPlaylist(Ljava/util/List;Landroidx/media2/MediaMetadata2;)V

    goto :goto_0

    .line 711
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string p2, "API calls after the close()"

    .line 712
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 708
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 703
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRepeatMode(I)V
    .locals 2

    .line 870
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 872
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 874
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlaylistAgent;->setRepeatMode(I)V

    goto :goto_0

    .line 875
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 876
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 872
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setShuffleMode(I)V
    .locals 2

    .line 897
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 898
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 899
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 901
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlaylistAgent;->setShuffleMode(I)V

    goto :goto_0

    .line 902
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 903
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 899
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public skipBackward()V
    .locals 0

    return-void
.end method

.method public skipForward()V
    .locals 0

    return-void
.end method

.method public skipToNextItem()V
    .locals 3

    .line 748
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 749
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 750
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 752
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->skipToNextItem()V

    goto :goto_0

    .line 753
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 754
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 750
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public skipToPlaylistItem(Landroidx/media2/MediaItem2;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 722
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 724
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 726
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlaylistAgent;->skipToPlaylistItem(Landroidx/media2/MediaItem2;)V

    goto :goto_0

    .line 727
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 728
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 724
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 719
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipToPreviousItem()V
    .locals 3

    .line 735
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 737
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 739
    invoke-virtual {v1}, Landroidx/media2/MediaPlaylistAgent;->skipToPreviousItem()V

    goto :goto_0

    .line 740
    :cond_0
    sget-boolean v0, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MS2ImplBase"

    const-string v1, "API calls after the close()"

    .line 741
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 737
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePlayer(Landroidx/media2/MediaPlayerConnector;Landroidx/media2/MediaPlaylistAgent;)V
    .locals 8

    if-eqz p1, :cond_e

    .line 184
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-ne p2, v1, :cond_0

    .line 186
    monitor-exit v0

    return-void

    .line 188
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 194
    invoke-virtual {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->createPlaybackInfo(Landroidx/media2/MediaPlayerConnector;)Landroidx/media2/MediaController2$PlaybackInfo;

    move-result-object v0

    .line 196
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_1
    iget-object v2, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 199
    :goto_0
    iget-object v3, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    .line 200
    iget-object v4, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 201
    iput-object p1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-nez p2, :cond_3

    .line 204
    new-instance p2, Landroidx/media2/SessionPlaylistAgentImplBase;

    invoke-direct {p2, p0, p1}, Landroidx/media2/SessionPlaylistAgentImplBase;-><init>(Landroidx/media2/MediaSession2ImplBase;Landroidx/media2/MediaPlayerConnector;)V

    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

    .line 205
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mDsmHelper:Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;

    if-eqz v5, :cond_2

    .line 206
    invoke-virtual {p2, v5}, Landroidx/media2/SessionPlaylistAgentImplBase;->setOnDataSourceMissingHelper(Landroidx/media2/MediaSession2$OnDataSourceMissingHelper;)V

    .line 208
    :cond_2
    iget-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

    goto :goto_1

    .line 209
    :cond_3
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionPlaylistAgent:Landroidx/media2/SessionPlaylistAgentImplBase;

    if-eqz v5, :cond_4

    .line 210
    invoke-virtual {v5, p1}, Landroidx/media2/SessionPlaylistAgentImplBase;->setPlayer(Landroidx/media2/MediaPlayerConnector;)V

    .line 212
    :cond_4
    :goto_1
    iput-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 213
    iput-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaybackInfo:Landroidx/media2/MediaController2$PlaybackInfo;

    .line 215
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    if-eq v3, v5, :cond_6

    if-eqz v3, :cond_5

    .line 218
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayerEventCallback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    invoke-virtual {v3, v5}, Landroidx/media2/MediaPlayerConnector;->unregisterPlayerEventCallback(Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    .line 221
    :cond_5
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayer:Landroidx/media2/MediaPlayerConnector;

    iget-object v6, p0, Landroidx/media2/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/media2/MediaSession2ImplBase;->mPlayerEventCallback:Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;

    invoke-virtual {v5, v6, v7}, Landroidx/media2/MediaPlayerConnector;->registerPlayerEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlayerConnector$PlayerEventCallback;)V

    .line 224
    :cond_6
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    if-eq v4, v5, :cond_8

    if-eqz v4, :cond_7

    .line 227
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistEventCallback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {v4, v5}, Landroidx/media2/MediaPlaylistAgent;->unregisterPlaylistEventCallback(Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 229
    :cond_7
    iget-object v5, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    iget-object v6, p0, Landroidx/media2/MediaSession2ImplBase;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v7, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistEventCallback:Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;

    invoke-virtual {v5, v6, v7}, Landroidx/media2/MediaPlaylistAgent;->registerPlaylistEventCallback(Ljava/util/concurrent/Executor;Landroidx/media2/MediaPlaylistAgent$PlaylistEventCallback;)V

    .line 232
    :cond_8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_9

    .line 239
    iget-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p0}, Landroidx/media2/MediaSession2ImplBase;->createPlaybackStateCompat()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_2

    :cond_9
    if-eq p2, v4, :cond_a

    .line 247
    invoke-direct {p0, v4}, Landroidx/media2/MediaSession2ImplBase;->notifyAgentUpdatedNotLocked(Landroidx/media2/MediaPlaylistAgent;)V

    :cond_a
    if-eq p1, v3, :cond_b

    .line 250
    invoke-direct {p0, v3}, Landroidx/media2/MediaSession2ImplBase;->notifyPlayerUpdatedNotLocked(Landroidx/media2/MediaPlayerConnector;)V

    :cond_b
    if-eqz v2, :cond_c

    .line 255
    invoke-virtual {p0, v0}, Landroidx/media2/MediaSession2ImplBase;->notifyPlaybackInfoChangedNotLocked(Landroidx/media2/MediaController2$PlaybackInfo;)V

    .line 259
    :cond_c
    :goto_2
    instance-of p2, p1, Landroidx/media2/BaseRemoteMediaPlayerConnector;

    if-eqz p2, :cond_d

    .line 260
    move-object v5, p1

    check-cast v5, Landroidx/media2/BaseRemoteMediaPlayerConnector;

    .line 262
    new-instance p1, Landroidx/media2/MediaSession2ImplBase$1;

    .line 263
    invoke-virtual {v5}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getVolumeControlType()I

    move-result v2

    .line 264
    invoke-virtual {v5}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getMaxPlayerVolume()F

    move-result p2

    float-to-int v3, p2

    .line 265
    invoke-virtual {v5}, Landroidx/media2/BaseRemoteMediaPlayerConnector;->getPlayerVolume()F

    move-result p2

    float-to-int v4, p2

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/MediaSession2ImplBase$1;-><init>(Landroidx/media2/MediaSession2ImplBase;IIILandroidx/media2/BaseRemoteMediaPlayerConnector;)V

    .line 276
    iget-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToRemote(Landroidx/media/VolumeProviderCompat;)V

    goto :goto_3

    .line 278
    :cond_d
    invoke-virtual {p1}, Landroidx/media2/MediaPlayerConnector;->getAudioAttributes()Landroidx/media/AudioAttributesCompat;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media2/MediaSession2ImplBase;->getLegacyStreamType(Landroidx/media/AudioAttributesCompat;)I

    move-result p1

    .line 279
    iget-object p2, p0, Landroidx/media2/MediaSession2ImplBase;->mSessionCompat:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {p2, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->setPlaybackToLocal(I)V

    :goto_3
    return-void

    :catchall_0
    move-exception p1

    .line 232
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 188
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 181
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "player shouldn\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V
    .locals 2

    .line 843
    iget-object v0, p0, Landroidx/media2/MediaSession2ImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 844
    :try_start_0
    iget-object v1, p0, Landroidx/media2/MediaSession2ImplBase;->mPlaylistAgent:Landroidx/media2/MediaPlaylistAgent;

    .line 845
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 847
    invoke-virtual {v1, p1}, Landroidx/media2/MediaPlaylistAgent;->updatePlaylistMetadata(Landroidx/media2/MediaMetadata2;)V

    goto :goto_0

    .line 848
    :cond_0
    sget-boolean p1, Landroidx/media2/MediaSession2ImplBase;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "MS2ImplBase"

    const-string v0, "API calls after the close()"

    .line 849
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 845
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
