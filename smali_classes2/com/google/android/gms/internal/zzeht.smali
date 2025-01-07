.class final Lcom/google/android/gms/internal/zzeht;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zzngh:Lcom/google/android/gms/internal/zzejn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzejn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeht;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeht;->zzngh:Lcom/google/android/gms/internal/zzejn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeht;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeht;->zzngh:Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v0

    const-string v1, "Persisted write"

    invoke-static {p2, v1, v0, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzeht;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeht;->zzngh:Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzejn;->zzbzh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeht;->zzngh:Lcom/google/android/gms/internal/zzejn;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzejn;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;JLcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
