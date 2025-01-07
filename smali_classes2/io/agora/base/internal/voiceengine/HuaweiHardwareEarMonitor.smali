.class public Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;
.super Ljava/lang/Object;
.source "HuaweiHardwareEarMonitor.java"

# interfaces
.implements Lio/agora/base/internal/voiceengine/IHardwareEarMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiHardwareEarMonitor"


# instance fields
.field private mAudioKitCallbackImpl:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;

.field private mContext:Landroid/content/Context;

.field private volatile mEarMonitorEnabled:Z

.field private mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

.field private mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mHwAudioKit:Ljava/lang/Object;

.field private mHwAudioKitClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile mInitialized:Z

.field private volatile mIsDestroyed:Z

.field private mListener:Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

.field private mParamNameClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;-><init>(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$1;)V

    iput-object v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mAudioKitCallbackImpl:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;

    .line 29
    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKit:Ljava/lang/Object;

    .line 30
    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mInitialized:Z

    .line 35
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mIsDestroyed:Z

    .line 36
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mEarMonitorEnabled:Z

    .line 39
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, ">>ctor"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mListener:Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    .line 41
    invoke-static {}, Lio/agora/base/internal/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mIsDestroyed:Z

    return p0
.end method

.method static synthetic access$300(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->destroyImpl()V

    return-void
.end method

.method static synthetic access$400(Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;)Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mListener:Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    return-object p0
.end method

.method private destroyImpl()V
    .locals 5

    const-string v0, "destroy"

    .line 227
    :try_start_0
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 228
    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 229
    iget-object v3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKitClass:Ljava/lang/Class;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKit:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "karaoke kit destroy call."

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 234
    sget-object v1, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v2, "destroy failed "

    invoke-static {v1, v2, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 215
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "karaoke kit destroy"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mListener:Lio/agora/base/internal/voiceengine/HardwareEarMonitorListener;

    .line 217
    iget-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mInitialized:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mInitialized:Z

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mIsDestroyed:Z

    .line 222
    invoke-direct {p0}, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->destroyImpl()V

    return-void
.end method

.method public enableHardwareEarMonitor(Z)I
    .locals 10

    const-string v0, "latency: "

    const-string v1, "enableKaraokeFeature failed ret "

    .line 190
    sget-object v2, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>enableHardwareEarMonitor "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    .line 192
    :try_start_0
    iget-object v4, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const-string v5, "enableKaraokeFeature"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 193
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 194
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 199
    :cond_0
    iput-boolean p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mEarMonitorEnabled:Z

    .line 200
    iget-boolean p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mEarMonitorEnabled:Z

    if-eqz p1, :cond_1

    .line 201
    iget-object p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const-string v1, "getKaraokeLatency"

    new-array v4, v9, [Ljava/lang/Class;

    .line 202
    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 203
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v9

    :catch_0
    move-exception p1

    .line 207
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "enableHardwareEarMonitor failed "

    invoke-static {v0, v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method getInvocationHandler()Ljava/lang/reflect/InvocationHandler;
    .locals 1

    .line 51
    iget-object v0, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mAudioKitCallbackImpl:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;

    return-object v0
.end method

.method public initialize()V
    .locals 9

    .line 107
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "HwAudioKit initialize"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null!"

    .line 109
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-boolean v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mInitialized:Z

    if-eqz v1, :cond_1

    const-string v1, "already initialized, ignore"

    .line 113
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit"

    .line 118
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit"

    .line 119
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKitClass:Ljava/lang/Class;

    const-string v1, "com.huawei.multimedia.audiokit.interfaces.IAudioKitCallback"

    .line 121
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.huawei.multimedia.audiokit.interfaces.HwAudioKit$FeatureType"

    .line 123
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "com.huawei.multimedia.audiokit.interfaces.HwAudioKaraokeFeatureKit$ParameName"

    .line 124
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mParamNameClass:Ljava/lang/Class;

    .line 127
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    iget-object v7, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mAudioKitCallbackImpl:Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor$AudioKitCallbackImpl;

    invoke-static {v3, v5, v7}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/lang/Class;

    .line 129
    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v6

    aput-object v1, v7, v4

    .line 130
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKitClass:Ljava/lang/Class;

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v5, v5, [Ljava/lang/Object;

    .line 131
    iget-object v7, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mContext:Landroid/content/Context;

    aput-object v7, v5, v6

    aput-object v3, v5, v4

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKit:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKitClass:Ljava/lang/Class;

    const-string v3, "initialize"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 133
    iget-object v3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKit:Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKitClass:Ljava/lang/Class;

    const-string v3, "createFeature"

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v2, v5, v6

    .line 135
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 136
    iget-object v3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKit:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v6

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    .line 138
    iput-boolean v4, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mInitialized:Z

    const-string v1, "HwAudioKit initialize success"

    .line 139
    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    :catch_0
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "HwAudioKit initialize failed"

    invoke-static {v0, v1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public isHardwareEarMonitorSupported()Z
    .locals 6

    const-string v0, "Karaoke earmonitor is"

    .line 147
    sget-object v1, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v2, ">>isHardwareEarMonitorSupported"

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 149
    :try_start_0
    iget-object v3, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const-string v4, "isKaraokeFeatureSupport"

    new-array v5, v2, [Ljava/lang/Class;

    .line 150
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 151
    iget-object v4, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    new-array v5, v2, [Ljava/lang/Object;

    .line 152
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    const-string v0, " "

    goto :goto_0

    :cond_0
    const-string v0, "not "

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "support "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v0

    .line 156
    sget-object v1, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v3, "isHardwareEarMonitorSupported false "

    invoke-static {v1, v3, v0}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2
.end method

.method public setHardwareEarMonitorVolume(I)I
    .locals 10

    const-string v0, "setParameter ret "

    .line 163
    iget-boolean v1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mEarMonitorEnabled:Z

    if-nez v1, :cond_0

    const/4 p1, -0x7

    return p1

    .line 166
    :cond_0
    sget-object v1, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ">>setHardwareEarMonitorVolume "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x64

    if-le p1, v3, :cond_2

    const/16 p1, 0x64

    :cond_2
    :goto_0
    const/4 v3, -0x1

    .line 173
    :try_start_0
    iget-object v4, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKitClass:Ljava/lang/Class;

    const-string v5, "setParameter"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    iget-object v8, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mParamNameClass:Ljava/lang/Class;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 175
    iget-object v5, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mParamNameClass:Ljava/lang/Class;

    .line 176
    invoke-virtual {v7}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v7

    aget-object v7, v7, v9

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v9

    .line 175
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/base/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    :catch_0
    move-exception p1

    .line 182
    sget-object v0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->TAG:Ljava/lang/String;

    const-string v1, "setHardwareEarMonitorVolume failed "

    invoke-static {v0, v1, p1}, Lio/agora/base/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method setHwAudioKaraokeFeatureKit(Ljava/lang/Object;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lio/agora/base/internal/voiceengine/HuaweiHardwareEarMonitor;->mHwAudioKaraokeFeatureKit:Ljava/lang/Object;

    return-void
.end method
