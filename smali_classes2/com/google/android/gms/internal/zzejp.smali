.class public final Lcom/google/android/gms/internal/zzejp;
.super Lcom/google/android/gms/internal/zzegr;


# instance fields
.field private final zzmwt:Lcom/google/android/gms/internal/zzegx;

.field private final zzndx:Lcom/google/android/gms/internal/zzelu;

.field private final zznja:Lcom/google/firebase/database/ValueEventListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzejp;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzejp;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejp;->zzndx:Lcom/google/android/gms/internal/zzelu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzndx:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzelu;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzndx:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ValueEventRegistration"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzegr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzejp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelj;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzeng;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/zzelk;

    sget-object v0, Lcom/google/android/gms/internal/zzelm;->zznmb:Lcom/google/android/gms/internal/zzelm;

    const/4 v1, 0x0

    invoke-direct {p2, v0, p0, p1, v1}, Lcom/google/android/gms/internal/zzelk;-><init>(Lcom/google/android/gms/internal/zzelm;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object p2
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelk;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzegr;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcaq()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onDataChange(Lcom/google/firebase/database/DataSnapshot;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ValueEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelm;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzelm;->zznmb:Lcom/google/android/gms/internal/zzelm;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzbxy()Lcom/google/android/gms/internal/zzelu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegr;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzejp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzejp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzejp;->zznja:Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
