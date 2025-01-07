.class final Lcom/google/android/gms/internal/zzehg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznfu:Lcom/google/firebase/database/DataSnapshot;

.field private synthetic zznfx:Lcom/google/android/gms/internal/zzehy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehf;Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehg;->zznfx:Lcom/google/android/gms/internal/zzehy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehg;->zznfu:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehg;->zznfx:Lcom/google/android/gms/internal/zzehy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzehy;->zzh(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehg;->zznfu:Lcom/google/firebase/database/DataSnapshot;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
