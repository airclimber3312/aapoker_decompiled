.class final Lcom/google/android/gms/internal/zzehv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zzneb:Lcom/google/android/gms/internal/zzegu;

.field private synthetic zznfo:Lcom/google/android/gms/internal/zzegx;

.field private synthetic zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

.field private synthetic zzngk:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;JLcom/google/firebase/database/DatabaseReference$CompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehv;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehv;->zzneb:Lcom/google/android/gms/internal/zzegu;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzehv;->zzngk:J

    iput-object p5, p0, Lcom/google/android/gms/internal/zzehv;->zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehv;->zznfo:Lcom/google/android/gms/internal/zzegx;

    const-string v0, "setValue"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehv;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/lang/String;Lcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehv;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzehv;->zzngk:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzehv;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;JLcom/google/android/gms/internal/zzegu;Lcom/google/firebase/database/DatabaseError;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehv;->zznfo:Lcom/google/android/gms/internal/zzegx;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzehv;->zznfr:Lcom/google/firebase/database/DatabaseReference$CompletionListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzehv;->zzneb:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {p2, v0, p1, v1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/firebase/database/DatabaseReference$CompletionListener;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V

    return-void
.end method
