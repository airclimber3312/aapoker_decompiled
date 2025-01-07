.class public final Lcom/google/android/gms/internal/zzeli;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzell;


# instance fields
.field private final zzmxa:Lcom/google/android/gms/internal/zzegu;

.field private final zznlp:Lcom/google/android/gms/internal/zzegr;

.field private final zznlq:Lcom/google/firebase/database/DatabaseError;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DatabaseError;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeli;->zznlp:Lcom/google/android/gms/internal/zzegr;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzeli;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzeli;->zznlq:Lcom/google/firebase/database/DatabaseError;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeli;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":CANCEL"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzcal()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeli;->zznlp:Lcom/google/android/gms/internal/zzegr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeli;->zznlq:Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegr;->zza(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
