.class final Lcom/google/firebase/database/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmxh:Lcom/google/firebase/database/Query;

.field private synthetic zzmxk:Z


# direct methods
.method constructor <init>(Lcom/google/firebase/database/Query;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzs;->zzmxh:Lcom/google/firebase/database/Query;

    iput-boolean p2, p0, Lcom/google/firebase/database/zzs;->zzmxk:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/database/zzs;->zzmxh:Lcom/google/firebase/database/Query;

    iget-object v0, v0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/zzs;->zzmxh:Lcom/google/firebase/database/Query;

    invoke-virtual {v1}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/firebase/database/zzs;->zzmxk:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzelu;Z)V

    return-void
.end method
