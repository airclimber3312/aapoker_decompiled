.class final Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;
.super Lcom/google/android/gms/cast/framework/media/zzg;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field private synthetic zzfed:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzfed:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-direct {p0}, Lcom/google/android/gms/cast/framework/media/zzg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;Lcom/google/android/gms/cast/framework/media/zzl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;-><init>(Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;)V

    return-void
.end method


# virtual methods
.method public final getCompactViewActionIndices()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzfed:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->getCompactViewActionIndices()[I

    move-result-object v0

    return-object v0
.end method

.method public final getNotificationActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/framework/media/NotificationAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzfed:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;->getNotificationActions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzadx()I
    .locals 1

    const v0, 0xba544e

    return v0
.end method

.method public final zzafg()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider$zza;->zzfed:Lcom/google/android/gms/cast/framework/media/NotificationActionsProvider;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method
