.class final Lcom/google/firebase/database/zze;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzmwi:Lcom/google/android/gms/internal/zzepa;

.field private synthetic zzmwj:Lcom/google/firebase/database/DatabaseReference;

.field private synthetic zzmwl:Lcom/google/android/gms/internal/zzegi;

.field private synthetic zzmwm:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzegi;Lcom/google/android/gms/internal/zzepa;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/database/zze;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iput-object p2, p0, Lcom/google/firebase/database/zze;->zzmwl:Lcom/google/android/gms/internal/zzegi;

    iput-object p3, p0, Lcom/google/firebase/database/zze;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    iput-object p4, p0, Lcom/google/firebase/database/zze;->zzmwm:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/database/zze;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v0, v0, Lcom/google/firebase/database/DatabaseReference;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/zze;->zzmwj:Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, v1, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/firebase/database/zze;->zzmwl:Lcom/google/android/gms/internal/zzegi;

    iget-object v3, p0, Lcom/google/firebase/database/zze;->zzmwi:Lcom/google/android/gms/internal/zzepa;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzepa;->zzcdp()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v4, p0, Lcom/google/firebase/database/zze;->zzmwm:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzegi;Lcom/google/firebase/database/DatabaseReference$CompletionListener;Ljava/util/Map;)V

    return-void
.end method
