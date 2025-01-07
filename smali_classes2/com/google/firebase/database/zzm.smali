.class final Lcom/google/firebase/database/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmwh:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zzmwi:Lcom/google/android/gms/internal/zzepa;

.field private synthetic zzmxb:Lcom/google/firebase/database/OnDisconnect;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/OnDisconnect;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzepa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzm;->zzmxb:Lcom/google/firebase/database/OnDisconnect;

    iput-object p2, p0, Lcom/google/firebase/database/zzm;->zzmwh:Lcom/google/android/gms/internal/zzenn;

    iput-object p3, p0, Lcom/google/firebase/database/zzm;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzm;->zzmxb:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v0}, Lcom/google/firebase/database/OnDisconnect;->zzb(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzegx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/zzm;->zzmxb:Lcom/google/firebase/database/OnDisconnect;

    invoke-static {v1}, Lcom/google/firebase/database/OnDisconnect;->zza(Lcom/google/firebase/database/OnDisconnect;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/zzm;->zzmwh:Lcom/google/android/gms/internal/zzenn;

    iget-object v3, p0, Lcom/google/firebase/database/zzm;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzepa;->zzcdp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzegx;->zzb(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
