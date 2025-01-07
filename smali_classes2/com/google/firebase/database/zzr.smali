.class final Lcom/google/firebase/database/zzr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmxh:Lcom/google/firebase/database/Query;

.field private synthetic zzmxj:Lcom/google/android/gms/internal/zzegr;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzegr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzr;->zzmxh:Lcom/google/firebase/database/Query;

    iput-object p2, p0, Lcom/google/firebase/database/zzr;->zzmxj:Lcom/google/android/gms/internal/zzegr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/zzr;->zzmxh:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/zzr;->zzmxj:Lcom/google/android/gms/internal/zzegr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzf(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method
