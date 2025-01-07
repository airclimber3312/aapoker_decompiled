.class final Lcom/google/firebase/database/zzc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmwh:Lcom/google/android/gms/internal/zzenn;

.field private synthetic zzmwi:Lcom/google/android/gms/internal/zzepa;

.field private synthetic zzmwj:Lcom/google/firebase/database/DatabaseReference;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzepa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zzc;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zzc;->zzmwh:Lcom/google/android/gms/internal/zzenn;

    iput-object p3, p0, Lcom/google/firebase/database/zzc;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/database/zzc;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/zzc;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/firebase/database/zzc;->zzmwh:Lcom/google/android/gms/internal/zzenn;

    iget-object v3, p0, Lcom/google/firebase/database/zzc;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzepa;->zzcdp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V

    return-void
.end method
