.class final Lcom/google/android/gms/iid/zzac;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic zzioa:Lcom/google/android/gms/iid/zzaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/iid/zzaa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/iid/zzac;->zzioa:Lcom/google/android/gms/iid/zzaa;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const/4 p1, 0x3

    const-string v0, "InstanceID/Rpc"

    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Received GSF callback via dynamic receiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/iid/zzac;->zzioa:Lcom/google/android/gms/iid/zzaa;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/iid/zzaa;->zzj(Landroid/content/Intent;)V

    return-void
.end method
