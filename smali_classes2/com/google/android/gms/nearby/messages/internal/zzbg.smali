.class Lcom/google/android/gms/nearby/messages/internal/zzbg;
.super Lcom/google/android/gms/nearby/messages/internal/zzab;


# static fields
.field private static final zzkdu:Lcom/google/android/gms/internal/zzcvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzcvf<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzhnp:Lcom/google/android/gms/common/api/internal/zzci;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/nearby/messages/internal/zzbh;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/internal/zzbh;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzkdu:Lcom/google/android/gms/internal/zzcvf;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzci;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/zzci<",
            "Lcom/google/android/gms/nearby/messages/SubscribeCallback;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/nearby/messages/internal/zzab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    return-void
.end method


# virtual methods
.method public onExpired()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzhnp:Lcom/google/android/gms/common/api/internal/zzci;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/nearby/messages/internal/zzbg;->zzkdu:Lcom/google/android/gms/internal/zzcvf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzci;->zza(Lcom/google/android/gms/common/api/internal/zzcl;)V

    :cond_0
    return-void
.end method
