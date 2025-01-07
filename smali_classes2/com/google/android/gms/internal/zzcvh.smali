.class final Lcom/google/android/gms/internal/zzcvh;
.super Lcom/google/android/gms/internal/zzcvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcvf<",
        "Lcom/google/android/gms/nearby/messages/StatusCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic zzkev:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcvg;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcvh;->zzkev:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcvf;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzu(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/nearby/messages/StatusCallback;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcvh;->zzkev:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/nearby/messages/StatusCallback;->onPermissionChanged(Z)V

    return-void
.end method
