.class final Lcom/google/android/gms/wearable/internal/zzhn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzlry:Lcom/google/android/gms/wearable/internal/zzaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzaw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzhn;->zzlry:Lcom/google/android/gms/wearable/internal/zzaw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzajh()V
    .locals 0

    return-void
.end method

.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhn;->zzlry:Lcom/google/android/gms/wearable/internal/zzaw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/wearable/internal/zzaw;->zza(Lcom/google/android/gms/wearable/ChannelApi$ChannelListener;)V

    return-void
.end method
