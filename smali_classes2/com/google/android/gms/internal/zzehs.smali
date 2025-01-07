.class final Lcom/google/android/gms/internal/zzehs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzefo;


# instance fields
.field private synthetic zzngf:Lcom/google/android/gms/internal/zzejg;

.field private synthetic zzngg:Lcom/google/android/gms/internal/zzehr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzehr;Lcom/google/android/gms/internal/zzejg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzehs;->zzngg:Lcom/google/android/gms/internal/zzehr;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzehs;->zzngf:Lcom/google/android/gms/internal/zzejg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzegx;->zzbe(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/DatabaseError;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehs;->zzngf:Lcom/google/android/gms/internal/zzejg;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/zzejg;->zzb(Lcom/google/firebase/database/DatabaseError;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzehs;->zzngg:Lcom/google/android/gms/internal/zzehr;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzehr;->zznfo:Lcom/google/android/gms/internal/zzegx;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzegx;->zza(Lcom/google/android/gms/internal/zzegx;Ljava/util/List;)V

    return-void
.end method
