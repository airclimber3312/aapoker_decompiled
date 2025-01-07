.class final Lcom/google/android/gms/internal/zzeha;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeha;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeha;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeha;->zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeha;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzegx;->zzf(Lcom/google/android/gms/internal/zzegx;)Lcom/google/android/gms/internal/zzeil;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzeil;->zzq(Lcom/google/android/gms/internal/zzegu;)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzeha;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeha;->zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeha;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method
