.class final Lcom/google/android/gms/internal/zzbqk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzcl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/zzcl<",
        "Lcom/google/android/gms/drive/events/OpenFileCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzgwk:Lcom/google/android/gms/internal/zzbqc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqg;Lcom/google/android/gms/internal/zzbqc;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqk;->zzgwk:Lcom/google/android/gms/internal/zzbqc;

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

    check-cast p1, Lcom/google/android/gms/drive/events/OpenFileCallback;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqk;->zzgwk:Lcom/google/android/gms/internal/zzbqc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbqc;->accept(Ljava/lang/Object;)V

    return-void
.end method
