.class public Lio/agora/rtc2/internal/AudioRoutingController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;,
        Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallbackImpl;,
        Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallback;,
        Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerBaseState;,
        Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;,
        Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;,
        Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;,
        Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;
    }
.end annotation


# static fields
.field public static final AUDIO_DEVICE_EVENT_FALLBACK_TO_A2DP:I = 0x4

.field private static final BLUETOOTH_SCO_TIMEOUT_MS:I = 0xbb8

.field private static final BT_SCO_STATE_CONNECTED:I = 0x1

.field private static final BT_SCO_STATE_CONNECTING:I = 0x0

.field private static final BT_SCO_STATE_DISCONNECTED:I = 0x3

.field private static final BT_SCO_STATE_DISCONNECTING:I = 0x2

.field public static final CMD_FORCE_TO_A2DP:I = 0x10

.field public static final CMD_FORCE_TO_SPEAKER:I = 0xb

.field public static final CMD_MUTE_VIDEO_ALL:I = 0xe

.field public static final CMD_MUTE_VIDEO_LOCAL:I = 0xc

.field public static final CMD_MUTE_VIDEO_REMOTES:I = 0xd

.field public static final CMD_SET_DEFAULT_ROUTING:I = 0xa

.field private static final CMD_SET_PREFER_ROUTING:I = 0x19

.field public static final CMD_START_BT_SCO:I = 0xf

.field public static final DEVICE_EVT_BT_OFF:I = 0x0

.field public static final DEVICE_EVT_BT_RECONNECT:I = 0x1

.field public static final DEVICE_OUTPUT_OUT_IP:I = 0x800000

.field public static final DEVICE_OUT_AUX_DIGITAL:I = 0x400

.field public static final DEVICE_OUT_BLUETOOTH_A2DP:I = 0x80

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES:I = 0x100

.field public static final DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER:I = 0x200

.field public static final DEVICE_OUT_EARPIECE:I = 0x1

.field public static final DEVICE_OUT_SPEAKER:I = 0x2

.field public static final DEVICE_OUT_USB_DEVICE:I = 0x4000

.field public static final DEVICE_OUT_USB_HEADSET:I = 0x4000000

.field public static final DEVICE_OUT_WIRED_HEADPHONE:I = 0x8

.field public static final DEVICE_OUT_WIRED_HEADSET:I = 0x4

.field private static final ERROR:I = 0x4

.field private static final EVT_BT_HEADSET:I = 0x2

.field private static final EVT_BT_HEADSET_RECONNECT:I = 0x17

.field private static final EVT_BT_SCO:I = 0x3

.field public static final EVT_CHANNEL_PROFILE:I = 0x14

.field public static final EVT_ENGINE_ROLE_CHANGED:I = 0x15

.field private static final EVT_HDMI:I = 0x6

.field private static final EVT_HEADSET:I = 0x1

.field public static final EVT_PHONE_STATE_CHANGED:I = 0x16

.field private static final EVT_USB:I = 0x4

.field private static final EVT_USB_HEADSET:I = 0x5

.field private static final MAX_SCO_CONNECT_ATTEMPS:I = 0x2

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1

.field private static final ROUTE_TYPE_TO_EVT:Landroid/util/SparseIntArray;

.field public static final SDK_INT_FOR_DEVICE_INVENTORY:I = 0x17

.field private static final START:I = 0x1

.field private static final STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AudioRoute"

.field private static final UNINIT:I = 0x0

.field public static final UNSET:I = -0x1

.field private static deviceSpecialMonitor:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor; = null

.field private static mockBlueToothEnable:Z = false

.field private static mockedAudioManager:Landroid/media/AudioManager;

.field private static mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;


# instance fields
.field private ROUTING_ATTR_SPEAKER_SWITCH_SUPPORT:I

.field private final bluetoothTimeoutRunnable:Ljava/lang/Runnable;

.field private ctrlAudioDeviceCb:Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;

.field private dynamic_timeout:I

.field private mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

.field private mBtScoState:I

.field private mChannelProfile:I

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentRouting:I

.field private mDefaultRouting:I

.field private mDisposed:Z

.field private mEngineRole:I

.field private mErrorState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

.field private mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

.field private mForceUseA2dp:I

.field private mForcedRouting:I

.field private mHeadsetType:I

.field private mIsBTHeadsetPlugged:Z

.field private mIsBTScoStarted:Z

.field private mIsWiredHeadsetPlugged:Z

.field private mMuteLocal:Z

.field private mMuteRemotes:Z

.field private mNativeHandle:J

.field private mPhoneInCall:Z

.field private mScoConnectionAttemps:I

.field mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

.field private mSpeakerCommVolume:I

.field private mStartState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

.field private mState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

.field private mStopState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

.field private final mThreadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

.field private mVersionInUsed:I

.field private mVideoDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->ROUTE_TYPE_TO_EVT:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "handle"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    const/4 v1, -0x1

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    const/4 v2, 0x1

    iput v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->ROUTING_ATTR_SPEAKER_SWITCH_SUPPORT:I

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    const/4 v3, 0x3

    iput v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForcedRouting:I

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mChannelProfile:I

    iput-boolean v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVideoDisabled:Z

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteLocal:Z

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteRemotes:Z

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEngineRole:I

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mPhoneInCall:Z

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mSpeakerCommVolume:I

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    iput v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    const/16 v1, 0xbb8

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->dynamic_timeout:I

    const/4 v1, 0x0

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStopState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStartState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

    new-instance v3, Lio/agora/rtc2/internal/AudioRoutingController$1;

    invoke-direct {v3, p0}, Lio/agora/rtc2/internal/AudioRoutingController$1;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    iput-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->ctrlAudioDeviceCb:Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDisposed:Z

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mNativeHandle:J

    new-instance p1, Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-direct {p1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;-><init>()V

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mThreadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-lt p1, p2, :cond_0

    iput v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc2/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->bluetoothTimeout()V

    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc2/internal/AudioRoutingController;)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

    return-object p0
.end method

.method static synthetic access$1002(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVideoDisabled:Z

    return p1
.end method

.method static synthetic access$102(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;
    .locals 0

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

    return-object p1
.end method

.method static synthetic access$1102(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteLocal:Z

    return p1
.end method

.method static synthetic access$1202(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteRemotes:Z

    return p1
.end method

.method static synthetic access$1302(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEngineRole:I

    return p1
.end method

.method static synthetic access$1400(Lio/agora/rtc2/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    return p0
.end method

.method static synthetic access$1402(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    return p1
.end method

.method static synthetic access$1500(Lio/agora/rtc2/internal/AudioRoutingController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lio/agora/rtc2/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mPhoneInCall:Z

    return p0
.end method

.method static synthetic access$1602(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mPhoneInCall:Z

    return p1
.end method

.method static synthetic access$1800(Lio/agora/rtc2/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->cancelTimer()V

    return-void
.end method

.method static synthetic access$1900(Lio/agora/rtc2/internal/AudioRoutingController;)Landroid/media/AudioManager;
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lio/agora/rtc2/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    return p0
.end method

.method static synthetic access$2002(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lio/agora/rtc2/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->stopBtSco()V

    return-void
.end method

.method static synthetic access$2200(Lio/agora/rtc2/internal/AudioRoutingController;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->evtAsString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2302(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForcedRouting:I

    return p1
.end method

.method static synthetic access$2402(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    return p1
.end method

.method static synthetic access$2500(Lio/agora/rtc2/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$2502(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$2600(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lio/agora/rtc2/internal/AudioRoutingController;)Z
    .locals 0

    iget-boolean p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p0
.end method

.method static synthetic access$2702(Lio/agora/rtc2/internal/AudioRoutingController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$2800(Lio/agora/rtc2/internal/AudioRoutingController;)Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;
    .locals 0

    iget-object p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    return-object p0
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lio/agora/rtc2/internal/AudioRoutingController;->mockBlueToothEnable:Z

    return v0
.end method

.method static synthetic access$300(Lio/agora/rtc2/internal/AudioRoutingController;I)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3002(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    return p1
.end method

.method static synthetic access$3102(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    return p1
.end method

.method static synthetic access$3200(Lio/agora/rtc2/internal/AudioRoutingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->selectRoutingForCommunication(I)V

    return-void
.end method

.method static synthetic access$3300()Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;
    .locals 1

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->deviceSpecialMonitor:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    return-object v0
.end method

.method static synthetic access$3400(Lio/agora/rtc2/internal/AudioRoutingController;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lio/agora/rtc2/internal/AudioRoutingController;->nativeAudioDeviceStateChanged(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$3500()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->ROUTE_TYPE_TO_EVT:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400(Lio/agora/rtc2/internal/AudioRoutingController;)V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->resetAudioRouting()V

    return-void
.end method

.method static synthetic access$500(Lio/agora/rtc2/internal/AudioRoutingController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    return-void
.end method

.method static synthetic access$600(Lio/agora/rtc2/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mChannelProfile:I

    return p0
.end method

.method static synthetic access$602(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mChannelProfile:I

    return p1
.end method

.method static synthetic access$700(Lio/agora/rtc2/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    return p0
.end method

.method static synthetic access$702(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    return p1
.end method

.method static synthetic access$800(Lio/agora/rtc2/internal/AudioRoutingController;)I
    .locals 0

    iget p0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    return p0
.end method

.method static synthetic access$802(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    return p1
.end method

.method static synthetic access$900(Lio/agora/rtc2/internal/AudioRoutingController;I)I
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->updateBluetoothSco(I)I

    move-result p0

    return p0
.end method

.method private bluetoothTimeout()V
    .locals 5

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    const/4 v3, 0x2

    const-string v4, "AudioRoute"

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attemps trying, bt sco started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " sco connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " times "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->startTimer()V

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->stopBtSco()V

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    goto :goto_1

    :cond_1
    const-string v0, "Soc connected success."

    invoke-static {v4, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->cancelTimer()V

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start bluetooth sco timeout, actual routing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->cancelTimer()V

    const/16 v0, 0x406

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->nativeAudioRoutingError(I)V

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->checkFallbackA2dpIfNeed()V

    :goto_1
    return-void
.end method

.method private btStateAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "SCO_DISCONNECTED"

    goto :goto_0

    :cond_1
    const-string p1, "SCO_DISCONNECTING"

    goto :goto_0

    :cond_2
    const-string p1, "SCO_CONNECTED"

    goto :goto_0

    :cond_3
    const-string p1, "SCO_CONNECTING"

    :goto_0
    return-object p1
.end method

.method private cancelTimer()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    const-string v0, "AudioRoute"

    const-string v1, "cancel bluetooth timer"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private changeState(I)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStopState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

    if-nez p1, :cond_0

    new-instance p1, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

    invoke-direct {p1, p0}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStopState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;->reset()V

    :goto_0
    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStopState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStopState;

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStartState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

    if-nez p1, :cond_2

    new-instance p1, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

    invoke-direct {p1, p0}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStartState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;->reset()V

    :goto_1
    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mStartState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerStartState;

    return-object p1

    :cond_3
    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

    if-nez p1, :cond_4

    new-instance p1, Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$1;)V

    iput-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;->reset()V

    :goto_2
    iget-object p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mErrorState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerErrorState;

    return-object p1
.end method

.method private checkFallbackA2dpIfNeed()V
    .locals 2

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->nativeAudioRoutingCallbackEvent(I)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "AudioRoute"

    const-string v1, "could not use a2dp also.."

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->resetAudioRouting()V

    return-void
.end method

.method private doSetAudioOutputRouting(I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation

    const-string v0, "Audio routing not changed, ignore: "

    const-string v1, "Different audio routing from target "

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set audio output routing from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AudioRoute"

    invoke-static {v3, v2}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v5, 0x3

    if-ne p1, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_1
    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v4

    if-eq v4, p1, :cond_2

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actual routing: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->updateBluetoothSco(I)I

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    if-ne p1, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "Set audio output routing failed:"

    invoke-static {v3, v0, p1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v2
.end method

.method private doStartBTSco(Landroid/media/AudioManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    const-string v0, "AudioRoute"

    const-string v1, "doStartBTSco "

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sco on: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lio/agora/rtc2/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    const-wide/16 v1, 0x258

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    const-string v1, "doStartBTSco in sco already on, try stop old connect firstly!"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "doStartBTSco fail "

    invoke-static {v0, v1, p1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private doStopBTSco(Landroid/media/AudioManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "am"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doStopBTSco "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sco on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private evtAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "evt"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    const/16 v0, 0xe

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    if-eq p1, v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "evt "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "EVT_PHONE_STATE_CHANGED"

    goto :goto_0

    :cond_1
    const-string p1, "EVT_CHANNEL_PROFILE"

    goto :goto_0

    :cond_2
    const-string p1, "CMD_FORCE_TO_A2DP"

    goto :goto_0

    :cond_3
    const-string p1, "CMD_MUTE_VIDEO_REMOTES"

    goto :goto_0

    :cond_4
    const-string p1, "CMD_FORCE_TO_SPEAKER"

    goto :goto_0

    :cond_5
    const-string p1, "CMD_SET_DEFAULT_ROUTING"

    goto :goto_0

    :cond_6
    const-string p1, "EVT_USB"

    goto :goto_0

    :cond_7
    const-string p1, "EVT_BT_SCO"

    goto :goto_0

    :cond_8
    const-string p1, "EVT_BT_HEADSET"

    goto :goto_0

    :cond_9
    const-string p1, "EVT_HEADSET"

    :goto_0
    return-object p1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->mockedAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getAudioRouteDesc(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Unknown"

    return-object p1

    :pswitch_1
    const-string p1, "USB_HEADSET"

    return-object p1

    :pswitch_2
    const-string p1, "USBDevice"

    return-object p1

    :pswitch_3
    const-string p1, "HeadsetBluetooth"

    return-object p1

    :pswitch_4
    const-string p1, "Loudspeaker"

    return-object p1

    :pswitch_5
    const-string p1, "Speakerphone"

    return-object p1

    :pswitch_6
    const-string p1, "HeadsetOnly"

    return-object p1

    :pswitch_7
    const-string p1, "Earpiece"

    return-object p1

    :pswitch_8
    const-string p1, "Headset"

    return-object p1

    :pswitch_9
    const-string p1, "Default"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getOutputDevicesByStream(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stream"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-class v2, Landroid/media/AudioManager;

    const-string v3, "getDevicesForStream"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AudioRoute"

    const-string v2, "Error while getDevicesForStream! "

    invoke-static {v0, v2, p1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v1
.end method

.method private getSdkDeviceByAndroidType(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "devices"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_2

    const/16 v1, 0x200

    if-eq p1, v1, :cond_2

    const/16 v1, 0x400

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4000

    const/4 v2, 0x6

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x800000

    and-int/2addr p1, v1

    if-eqz p1, :cond_5

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method private isAudioOnly()Z
    .locals 1

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVideoDisabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteLocal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mMuteRemotes:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private modeAsString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "MODE_IN_COMMUNICATION"

    goto :goto_0

    :cond_1
    const-string p1, "MODE_IN_CALL"

    goto :goto_0

    :cond_2
    const-string p1, "MODE_RINGTONE"

    goto :goto_0

    :cond_3
    const-string p1, "MODE_NORMAL"

    :goto_0
    return-object p1
.end method

.method private native nativeAudioDeviceStateChanged(Ljava/lang/String;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "devId",
            "devName",
            "devType",
            "devState"
        }
    .end annotation
.end method

.method private native nativeAudioRoutingCallbackEvent(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cbEvt"
        }
    .end annotation
.end method

.method private native nativeAudioRoutingChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "routing"
        }
    .end annotation
.end method

.method private native nativeAudioRoutingError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errCode"
        }
    .end annotation
.end method

.method private notifyAudioRoutingChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "routing"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Enter notifyAudioRoutingChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", force a2dp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDisposed:Z

    if-eqz v0, :cond_0

    const-string p1, "notifyAudioRoutingChanged returned cause of disposed"

    invoke-static {v1, p1}, Lio/agora/utils2/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "callback A2DP but its not stable yet"

    invoke-static {v1, p1}, Lio/agora/utils2/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 p1, 0xa

    :cond_2
    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->nativeAudioRoutingChanged(I)V

    return-void
.end method

.method private resetAudioRouting()V
    .locals 6

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    const-string v1, "AudioRoute"

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v3, 0x3

    :cond_1
    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getOutputDevicesByStream(I)I

    move-result v0

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->getSdkDeviceByAndroidType(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "In multidevice connect, query target: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v3, v2, :cond_2

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    if-eq v3, v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_5

    iget v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    goto :goto_1

    :cond_5
    iget v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForcedRouting:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_6

    goto :goto_1

    :cond_6
    iget v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Reset audio routing, default routing: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current routing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", target routing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actual system routing: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v3

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result v0

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    if-eq v0, v1, :cond_8

    :cond_7
    invoke-direct {p0, v2}, Lio/agora/rtc2/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    :cond_8
    return-void
.end method

.method private selectRoutingForCommunication(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "route"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Api select prefer communication route: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AudioRoute"

    invoke-static {v3, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/16 v1, 0x8

    if-eq p1, v1, :cond_2

    const/4 p1, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    invoke-interface {v1, p1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Selected route is not connected"

    invoke-static {v3, p1}, Lio/agora/utils2/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    if-eq p1, v0, :cond_4

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->doSetAudioOutputRouting(I)I

    :cond_4
    :goto_1
    return-void
.end method

.method public static setAudioDeviceChangedSpecialMonitor(Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "specialMonitor"
        }
    .end annotation

    const-string v0, "AudioRoute"

    const-string v1, "setAudioDeviceChangedSpecialMonitor"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p0, Lio/agora/rtc2/internal/AudioRoutingController;->deviceSpecialMonitor:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    return-void
.end method

.method public static setMockBlueToothEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockBlueToothEnable"
        }
    .end annotation

    sput-boolean p0, Lio/agora/rtc2/internal/AudioRoutingController;->mockBlueToothEnable:Z

    return-void
.end method

.method public static setMockedAudioManager(Landroid/media/AudioManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockedAudioManager"
        }
    .end annotation

    sput-object p0, Lio/agora/rtc2/internal/AudioRoutingController;->mockedAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public static setMockedBroadcaster(Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mockedBroadcaster"
        }
    .end annotation

    sput-object p0, Lio/agora/rtc2/internal/AudioRoutingController;->mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;

    invoke-static {p0}, Lio/agora/rtc2/internal/AudioDeviceInventoryMocker;->setMockedBroadcaster(Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;)V

    return-void
.end method

.method private setupHotPlugDeviceInitValue()V
    .locals 3

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    const/4 v2, 0x6

    invoke-interface {v0, v2}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_0
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->notifyAudioRoutingChanged(I)V

    :cond_3
    return-void
.end method

.method private startBtSco()V
    .locals 4

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Start opening bt sco "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/agora/rtc2/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v1}, Lio/agora/rtc2/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sco on: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRoute"

    invoke-static {v2, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->doStartBTSco(Landroid/media/AudioManager;)V

    :cond_0
    return-void
.end method

.method private startTimer()V
    .locals 4

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->dynamic_timeout:I

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoConnectionAttemps:I

    mul-int/lit16 v1, v1, 0xbb8

    add-int/2addr v0, v1

    iput v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->dynamic_timeout:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start bluetooth timer "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->dynamic_timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->bluetoothTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopBtSco()V
    .locals 4

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "try to stopping bt sco "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lio/agora/rtc2/internal/AudioRoutingController;->modeAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v1}, Lio/agora/rtc2/internal/AudioRoutingController;->btStateAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sco on: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioRoute"

    invoke-static {v2, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    iput v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    invoke-direct {p0, v0}, Lio/agora/rtc2/internal/AudioRoutingController;->doStopBTSco(Landroid/media/AudioManager;)V

    :cond_1
    return-void
.end method

.method private updateBluetoothSco(I)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetRouting"
        }
    .end annotation

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mPhoneInCall:Z

    const/4 v1, 0x0

    const-string v2, "AudioRoute"

    if-eqz v0, :cond_0

    const-string p1, "Not process updateBluetoothSco in call"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Update sco control, current sco : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", audio route target: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] current: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    invoke-direct {p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioRouteDesc(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], engine role: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEngineRole:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mForceUseA2dp:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p1, "Enable hfp"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->startTimer()V

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->startBtSco()V

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    if-eqz p1, :cond_3

    const-string p1, "Enable a2dp"

    invoke-static {v2, p1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mCurrentRouting:I

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    if-eqz p1, :cond_3

    :goto_0
    iput-boolean v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTScoStarted:Z

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->cancelTimer()V

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->stopBtSco()V

    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method public checkVersion(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-ne p1, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    :cond_1
    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->dispose()V

    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->initialize()I

    :cond_3
    return v1
.end method

.method public dispose()V
    .locals 3

    const-string v0, "AudioRoute"

    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mThreadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-boolean v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDisposed:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDisposed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mNativeHandle:J

    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->dispose()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;->getRegistered()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lio/agora/rtc2/internal/AudioRoutingController;->mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-interface {v1, v2}, Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;->unRegisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;->setRegistered(Z)V

    :cond_4
    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    invoke-virtual {v1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AudioRoutingController dispose fail: "

    invoke-static {v0, v2, v1}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "dispose"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentUsbAudioDevicePID(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mic_or_spk"
        }
    .end annotation

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->deviceSpecialMonitor:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;->GetUSBDevicePID(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    if-nez v0, :cond_1

    const-string p1, "null"

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "getPIDFromNative: mic_or_spk=%d, pid=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioRoute"

    invoke-static {v1, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCurrentUsbAudioDeviceVID(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mic_or_spk"
        }
    .end annotation

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->deviceSpecialMonitor:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedSpecialMonitor;->GetUSBDeviceVID(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    if-nez v0, :cond_1

    const-string p1, "null"

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "getVIDFromNative: mic_or_spk=%d, vid=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "AudioRoute"

    invoke-static {v1, p1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNativeHandle()J
    .locals 2

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mThreadChecker:Lio/agora/base/internal/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lio/agora/base/internal/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-wide v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mNativeHandle:J

    return-wide v0
.end method

.method public handleBluetoothHeadsetEvent(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x5

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result p1

    :goto_1
    return p1
.end method

.method public handleHeadsetEvent(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_0

    if-gez p1, :cond_0

    const-string p1, "AudioRoute"

    const-string v0, "not handle extra headset event, as headset still connect"

    invoke-static {p1, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    :cond_0
    iput p1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->queryCurrentAudioRouting()I

    move-result p1

    :goto_1
    return p1
.end method

.method public initialize()I
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRoutingController initialize+ (Android: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AudioRoute"

    invoke-static {v2, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v3, -0x1

    if-nez v0, :cond_0

    const-string v0, "context has been GCed"

    :goto_0
    invoke-static {v2, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v0, "invalid context: can\'t get AudioManager"

    goto :goto_0

    :cond_1
    new-instance v3, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$1;)V

    iput-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->ctrlAudioDeviceCb:Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;

    invoke-static {v3}, Lio/agora/base/internal/voiceengine/WebRtcAudioRecord;->setRecordRouteCallback(Lio/agora/base/internal/voiceengine/WebRtcAudioRecord$AudioRecordRouteCallback;)V

    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->ctrlAudioDeviceCb:Lio/agora/rtc2/internal/AudioRoutingController$ControllerAudioDeviceChangeCallback;

    invoke-static {v3}, Lio/agora/base/internal/voiceengine/WebRtcAudioTrack;->setTrackRouteCallback(Lio/agora/base/internal/voiceengine/WebRtcAudioTrack$AudioTrackRouteCallback;)V

    new-instance v3, Landroid/os/HandlerThread;

    invoke-direct {v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v6, p0, v3}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;Landroid/os/Looper;)V

    iput-object v6, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    sget-object v3, Lio/agora/rtc2/internal/AudioRoutingController;->mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    new-instance v3, Lio/agora/rtc2/internal/AudioDeviceInventoryMocker;

    invoke-direct {v3}, Lio/agora/rtc2/internal/AudioDeviceInventoryMocker;-><init>()V

    :goto_1
    iput-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    goto :goto_2

    :cond_2
    iget v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mVersionInUsed:I

    if-ne v3, v6, :cond_3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v3, v7, :cond_3

    new-instance v3, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;

    invoke-direct {v3, v0}, Lio/agora/rtc2/internal/AudioDeviceInventoryMorHigher;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    new-instance v3, Lio/agora/rtc2/internal/AudioDeviceInventoryLowerThanM;

    invoke-direct {v3, v0}, Lio/agora/rtc2/internal/AudioDeviceInventoryLowerThanM;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    new-instance v7, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallbackImpl;

    invoke-direct {v7, p0, v5}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallbackImpl;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$1;)V

    invoke-interface {v3, v7}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->setAudioDeviceChangeCallback(Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceChangedCallback;)V

    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    invoke-interface {v3}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->initialize()V

    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v3

    const/4 v8, 0x2

    if-eqz v3, :cond_4

    iput-boolean v6, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    iput v7, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    invoke-interface {v3, v8}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v6, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    iput v8, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    :cond_5
    :goto_3
    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    const/4 v9, 0x5

    invoke-interface {v3, v9}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v3

    iput-boolean v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x3

    :goto_4
    iput v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Headset state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "(type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), BT state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "(sco: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mBtScoState:I

    if-ne v4, v6, :cond_7

    const-string v4, " enable "

    goto :goto_5

    :cond_7
    const-string v4, " disable"

    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-direct {v1, p0, v5}, Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;Lio/agora/rtc2/internal/AudioRoutingController$1;)V

    iput-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lio/agora/rtc2/internal/AudioRoutingController;->mockedBroadcaster:Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-interface {v0, v3, v1}, Lio/agora/rtc2/internal/AudioRoutingController$MockedBroadcaseter;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_8
    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mScoStateReceiver:Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;

    invoke-virtual {v0, v6}, Lio/agora/rtc2/internal/AudioRoutingController$AudioManagerScoStateReceiver;->setRegistered(Z)V

    iput-boolean v7, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDisposed:Z

    invoke-direct {p0, v8}, Lio/agora/rtc2/internal/AudioRoutingController;->changeState(I)Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

    move-result-object v0

    iput-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mState:Lio/agora/rtc2/internal/AudioRoutingController$ControllerState;

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->setupHotPlugDeviceInitValue()V

    const-string v0, "AudioRoutingController initialize-"

    invoke-static {v2, v0}, Lio/agora/utils2/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method public queryCurrentAudioRouting()I
    .locals 4

    invoke-direct {p0}, Lio/agora/rtc2/internal/AudioRoutingController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lio/agora/rtc2/internal/AudioRoutingController;->getOutputDevicesByStream(I)I

    move-result v1

    invoke-direct {p0, v1}, Lio/agora/rtc2/internal/AudioRoutingController;->getSdkDeviceByAndroidType(I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    return v0

    :cond_6
    :goto_1
    const/4 v0, 0x5

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AudioRoute"

    const-string v2, "fatal error @queryCurrentAudioRouting"

    invoke-static {v1, v2, v0}, Lio/agora/utils2/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    return v0
.end method

.method public sendEvent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "arg"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendEvent: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], extra arg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    invoke-virtual {p2, p1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public startMonitoring()I
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "startMonitoring()"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    new-instance v1, Lio/agora/rtc2/internal/AudioRoutingController$2;

    invoke-direct {v1, p0}, Lio/agora/rtc2/internal/AudioRoutingController$2;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    invoke-virtual {v0, v1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsBTHeadsetPlugged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mIsWiredHeadsetPlugged:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mHeadsetType:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mAudioDeviceInventory:Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lio/agora/rtc2/internal/AudioRoutingController$AudioDeviceInventory;->isDeviceAvaliable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    iget v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mDefaultRouting:I

    :goto_0
    return v0
.end method

.method public stopMonitoring()V
    .locals 2

    const-string v0, "AudioRoute"

    const-string v1, "stopMonitoring()"

    invoke-static {v0, v1}, Lio/agora/utils2/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc2/internal/AudioRoutingController;->mEventHandler:Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;

    new-instance v1, Lio/agora/rtc2/internal/AudioRoutingController$3;

    invoke-direct {v1, p0}, Lio/agora/rtc2/internal/AudioRoutingController$3;-><init>(Lio/agora/rtc2/internal/AudioRoutingController;)V

    invoke-virtual {v0, v1}, Lio/agora/rtc2/internal/AudioRoutingController$EventHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
