.class final Lcom/google/android/gms/internal/zzehj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zznfy:Lcom/google/android/gms/internal/zzehy;

.field private synthetic zznfz:Lcom/google/firebase/database/DatabaseError;

.field private synthetic zznga:Lcom/google/firebase/database/DataSnapshot;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzehy;Lcom/google/firebase/database/DatabaseError;Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehj;->zznfy:Lcom/google/android/gms/internal/zzehy;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzehj;->zznfz:Lcom/google/firebase/database/DatabaseError;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzehj;->zznga:Lcom/google/firebase/database/DataSnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehj;->zznfy:Lcom/google/android/gms/internal/zzehy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzehy;->zzh(Lcom/google/android/gms/internal/zzehy;)Lcom/google/firebase/database/Transaction$Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehj;->zznfz:Lcom/google/firebase/database/DatabaseError;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/gms/internal/zzehj;->zznga:Lcom/google/firebase/database/DataSnapshot;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/firebase/database/Transaction$Handler;->onComplete(Lcom/google/firebase/database/DatabaseError;ZLcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method
