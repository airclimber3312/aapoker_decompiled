.class final Lcom/google/android/gms/internal/zzegz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfp:Ljava/util/Map;

.field private synthetic zznfq:Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Ljava/util/Map;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegz;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegz;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegz;->zznfp:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzegz;->zznfq:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegz;->zznfo:Lcom/google/android/gms/internal/zzegx;

    const-string v0, "onDisconnect().updateChildren"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegz;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzegz;->zznfp:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegz;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzegx;->zzf(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeil;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegz;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzegu;->zzh(Lcom/google/android/gms/internal/zzegu;)Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzenn;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzeil;->zzh(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzegz;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegz;->zznfq:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegz;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method
