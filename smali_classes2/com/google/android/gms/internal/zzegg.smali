.class public final Lcom/google/android/gms/internal/zzegg;
.super Lcom/google/android/gms/internal/zzegr;


# instance fields
.field private final zzmwt:Lcom/google/android/gms/internal/zzegx;

.field private final zzndw:Lcom/google/firebase/database/ChildEventListener;

.field private final zzndx:Lcom/google/android/gms/internal/zzelu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzelu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzegr;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzegg;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/google/android/gms/internal/zzegg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzegg;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/zzegg;->zzndx:Lcom/google/android/gms/internal/zzelu;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndx:Lcom/google/android/gms/internal/zzelu;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzndx:Lcom/google/android/gms/internal/zzelu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelu;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ChildEventRegistration"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzegr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzegg;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzelu;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelj;Lcom/google/android/gms/internal/zzelu;)Lcom/google/android/gms/internal/zzelk;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzelu;->zzbvh()Lcom/google/android/gms/internal/zzegu;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcam()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/zzegu;->zza(Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzegu;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcak()Lcom/google/android/gms/internal/zzeng;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/firebase/database/zzh;->zza(Lcom/google/firebase/database/DatabaseReference;Lcom/google/android/gms/internal/zzeng;)Lcom/google/firebase/database/DataSnapshot;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcao()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcao()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzemq;->asString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzelk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelj;->zzcan()Lcom/google/android/gms/internal/zzelm;

    move-result-object p1

    invoke-direct {v1, p1, p0, p2, v0}, Lcom/google/android/gms/internal/zzelk;-><init>(Lcom/google/android/gms/internal/zzelm;Lcom/google/android/gms/internal/zzegr;Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-object v1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelk;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzegr;->zzbym()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzegh;->zzndy:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcan()Lcom/google/android/gms/internal/zzelm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzelm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcaq()Lcom/google/firebase/database/DataSnapshot;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcaq()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcaq()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcaq()Lcom/google/firebase/database/DataSnapshot;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzelk;->zzcar()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/google/firebase/database/ChildEventListener;->onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-interface {v0, p1}, Lcom/google/firebase/database/ChildEventListener;->onCancelled(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzelm;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzelm;->zznmb:Lcom/google/android/gms/internal/zzelm;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzbxy()Lcom/google/android/gms/internal/zzelu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndx:Lcom/google/android/gms/internal/zzelu;

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegr;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/android/gms/internal/zzegg;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/zzegg;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzegg;->zzndw:Lcom/google/firebase/database/ChildEventListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
