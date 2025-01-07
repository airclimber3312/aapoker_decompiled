.class final Lcom/google/android/gms/wearable/internal/zzat;
.super Lcom/google/android/gms/common/api/internal/zzcq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzcq<",
        "Lcom/google/android/gms/wearable/internal/zzhg;",
        "Lcom/google/android/gms/wearable/ChannelClient$ChannelCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private zzlnm:Ljava/lang/String;

.field private zzlsb:[Landroid/content/IntentFilter;

.field private zzltd:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

.field private zzlte:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Ljava/lang/String;[Landroid/content/IntentFilter;Lcom/google/android/gms/common/api/internal/zzci;Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/IntentFilter;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelClient$ChannelCallback;",
            ">;",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lcom/google/android/gms/common/api/internal/zzcq;-><init>(Lcom/google/android/gms/common/api/internal/zzci;)V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzltd:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlsb:[Landroid/content/IntentFilter;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlnm:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlte:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method protected final synthetic zzb(Lcom/google/android/gms/common/api/Api$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/wearable/internal/zzhg;

    new-instance v1, Lcom/google/android/gms/wearable/internal/zzgh;

    invoke-direct {v1, p2}, Lcom/google/android/gms/wearable/internal/zzgh;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object v2, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzltd:Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v3, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlte:Lcom/google/android/gms/common/api/internal/zzci;

    iget-object v4, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlnm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/wearable/internal/zzat;->zzlsb:[Landroid/content/IntentFilter;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/wearable/internal/zzhg;->zza(Lcom/google/android/gms/common/api/internal/zzn;Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;Lcom/google/android/gms/common/api/internal/zzci;Ljava/lang/String;[Landroid/content/IntentFilter;)V

    return-void
.end method
