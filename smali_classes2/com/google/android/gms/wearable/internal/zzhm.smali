.class final Lcom/google/android/gms/wearable/internal/zzhm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/wearable/MessageApi$MessageListener;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzlrs:Lcom/google/android/gms/wearable/internal/zzfe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/internal/zzfe;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzhm;->zzlrs:Lcom/google/android/gms/wearable/internal/zzfe;

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

    check-cast p1, Lcom/google/android/gms/wearable/MessageApi$MessageListener;

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzhm;->zzlrs:Lcom/google/android/gms/wearable/internal/zzfe;

    invoke-interface {p1, v0}, Lcom/google/android/gms/wearable/MessageApi$MessageListener;->onMessageReceived(Lcom/google/android/gms/wearable/MessageEvent;)V

    return-void
.end method
