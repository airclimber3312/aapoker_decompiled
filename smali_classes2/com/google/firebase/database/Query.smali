.class public Lcom/google/firebase/database/Query;
.super Ljava/lang/Object;


# instance fields
.field protected final zzmwt:Lcom/google/android/gms/internal/zzegx;

.field protected final zzmxa:Lcom/google/android/gms/internal/zzegu;

.field private zzmxe:Lcom/google/android/gms/internal/zzelr;

.field private final zzmxf:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    sget-object p1, Lcom/google/android/gms/internal/zzelr;->zznmi:Lcom/google/android/gms/internal/zzelr;

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/database/DatabaseException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iput-object p2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iput-object p3, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    iput-boolean p4, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzelr;->zzcaz()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string p2, "Validation of queries failed."

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzepd;->zzb(ZLjava/lang/String;)V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzepf;->zzqp(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for startAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzelr;->zza(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzelr;)V

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzelr;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call startAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zza(Lcom/google/android/gms/internal/zzegr;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzbzo()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeju;->zzj(Lcom/google/android/gms/internal/zzegr;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/firebase/database/zzq;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzq;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzegr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzelr;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    const-string v1, "You must use startAt(String value), endAt(String value) or equalTo(String value) in combination with orderByKey(). Other type of values or using the version with 2 parameters is not supported"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcat()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcau()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbw()Lcom/google/android/gms/internal/zzemq;

    move-result-object v3

    if-ne v2, v3, :cond_0

    instance-of v0, v0, Lcom/google/android/gms/internal/zzenv;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcaw()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcax()Lcom/google/android/gms/internal/zzemq;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbx()Lcom/google/android/gms/internal/zzemq;

    move-result-object v2

    if-ne p0, v2, :cond_2

    instance-of p0, v0, Lcom/google/android/gms/internal/zzenv;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcba()Lcom/google/android/gms/internal/zzenf;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcat()Lcom/google/android/gms/internal/zzenn;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzent;->zzl(Lcom/google/android/gms/internal/zzenn;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcaw()Lcom/google/android/gms/internal/zzenn;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzent;->zzl(Lcom/google/android/gms/internal/zzenn;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "When using orderByPriority(), values provided to startAt(), endAt(), or equalTo() must be valid priorities."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_2
    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 3

    invoke-static {p2}, Lcom/google/android/gms/internal/zzepf;->zzqp(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->zzccd()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzenn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can only use simple values for endAt()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/google/android/gms/internal/zzemq;->zzqf(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemq;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzelr;->zzb(Lcom/google/android/gms/internal/zzenn;Lcom/google/android/gms/internal/zzemq;)Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzelr;)V

    invoke-static {p1}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzelr;)V

    new-instance p2, Lcom/google/firebase/database/Query;

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-boolean v2, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    invoke-direct {p2, v0, v1, p1, v2}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object p2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t call endAt() or equalTo() multiple times"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzb(Lcom/google/android/gms/internal/zzegr;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/zzeju;->zzbzo()Lcom/google/android/gms/internal/zzeju;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzeju;->zzi(Lcom/google/android/gms/internal/zzegr;)V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/firebase/database/zzr;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzr;-><init>(Lcom/google/firebase/database/Query;Lcom/google/android/gms/internal/zzegr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/zzelr;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzelr;->zzcaz()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t combine startAt(), endAt() and limit(). Use limitToFirst() or limitToLast() instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzbvf()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcas()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcav()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and endAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call equalTo() and startAt() combined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzbvg()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t combine multiple orderBy calls!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzegg;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzegr;)V

    return-object p1
.end method

.method public addListenerForSingleValueEvent(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzejp;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v2, Lcom/google/firebase/database/zzp;

    invoke-direct {v2, p0, p1}, Lcom/google/firebase/database/zzp;-><init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/ValueEventListener;)V

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzegr;)V

    return-void
.end method

.method public addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzejp;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzegr;)V

    return-object p1
.end method

.method public endAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzenv;

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzenv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzemp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzemp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzenn;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zzb(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(D)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(D)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(D)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/database/Query;->endAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(Z)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1}, Lcom/google/firebase/database/Query;->startAt(Z)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/Query;->endAt(Z)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public equalTo(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvf()V

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/Query;->endAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public getRef()Lcom/google/firebase/database/DatabaseReference;
    .locals 3

    new-instance v0, Lcom/google/firebase/database/DatabaseReference;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/DatabaseReference;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;)V

    return-object v0
.end method

.method public keepSynced(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->zzbyq()Lcom/google/android/gms/internal/zzemq;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/zzemq;->zzcbz()Lcom/google/android/gms/internal/zzemq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzemq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    const-string v0, "Can\'t call keepSynced() on .info paths."

    invoke-direct {p1, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    new-instance v1, Lcom/google/firebase/database/zzs;

    invoke-direct {v1, p0, p1}, Lcom/google/firebase/database/zzs;-><init>(Lcom/google/firebase/database/Query;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzegx;->zzp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public limitToFirst(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzelr;->zzhi(I)Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public limitToLast(I)Lcom/google/firebase/database/Query;
    .locals 4

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzelr;->zzcay()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzelr;->zzhj(I)Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/firebase/database/Query;->zzmxf:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t call limitToLast on query with previously set limit!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Limit must be a positive integer!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByChild(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 4

    if-eqz p1, :cond_4

    const-string v0, "$key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Can\'t use \'"

    if-nez v0, :cond_3

    const-string v0, ".key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "$priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzepf;->zzqn(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvg()V

    new-instance v0, Lcom/google/android/gms/internal/zzegu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzegu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzegu;->size()I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzenr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzenr;-><init>(Lcom/google/android/gms/internal/zzegu;)V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/zzelr;->zza(Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzelr;

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t use empty path, use orderByValue() instead!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByValue() instead!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByPriority() instead!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x36

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' as path, please use orderByKey() instead!"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Key can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public orderByKey()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvg()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-static {}, Lcom/google/android/gms/internal/zzenh;->zzccu()Lcom/google/android/gms/internal/zzenh;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzelr;->zza(Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzelr;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v1
.end method

.method public orderByPriority()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvg()V

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-static {}, Lcom/google/android/gms/internal/zzens;->zzccy()Lcom/google/android/gms/internal/zzens;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzelr;->zza(Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzelr;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzelr;)V

    new-instance v1, Lcom/google/firebase/database/Query;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v1
.end method

.method public orderByValue()Lcom/google/firebase/database/Query;
    .locals 5

    invoke-direct {p0}, Lcom/google/firebase/database/Query;->zzbvg()V

    new-instance v0, Lcom/google/firebase/database/Query;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v3, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-static {}, Lcom/google/android/gms/internal/zzenx;->zzccz()Lcom/google/android/gms/internal/zzenx;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/zzelr;->zza(Lcom/google/android/gms/internal/zzenf;)Lcom/google/android/gms/internal/zzelr;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/database/Query;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;Z)V

    return-object v0
.end method

.method public removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzegg;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzegg;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ChildEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzejp;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmwt:Lcom/google/android/gms/internal/zzegx;

    invoke-virtual {p0}, Lcom/google/firebase/database/Query;->zzbvi()Lcom/google/android/gms/internal/zzelu;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzejp;-><init>(Lcom/google/android/gms/internal/zzegx;Lcom/google/firebase/database/ValueEventListener;Lcom/google/android/gms/internal/zzelu;)V

    invoke-direct {p0, v0}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzegr;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "listener must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startAt(D)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/database/Query;->startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(DLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzend;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzend;-><init>(Ljava/lang/Double;Lcom/google/android/gms/internal/zzenn;)V

    invoke-direct {p0, v0, p3}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzenv;

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzenv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzenn;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(Z)Lcom/google/firebase/database/Query;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/database/Query;->startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAt(ZLjava/lang/String;)Lcom/google/firebase/database/Query;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzemp;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/zzene;->zzcco()Lcom/google/android/gms/internal/zzene;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzemp;-><init>(Ljava/lang/Boolean;Lcom/google/android/gms/internal/zzenn;)V

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/database/Query;->zza(Lcom/google/android/gms/internal/zzenn;Ljava/lang/String;)Lcom/google/firebase/database/Query;

    move-result-object p1

    return-object p1
.end method

.method public final zzbvh()Lcom/google/android/gms/internal/zzegu;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    return-object v0
.end method

.method public final zzbvi()Lcom/google/android/gms/internal/zzelu;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzelu;

    iget-object v1, p0, Lcom/google/firebase/database/Query;->zzmxa:Lcom/google/android/gms/internal/zzegu;

    iget-object v2, p0, Lcom/google/firebase/database/Query;->zzmxe:Lcom/google/android/gms/internal/zzelr;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzelu;-><init>(Lcom/google/android/gms/internal/zzegu;Lcom/google/android/gms/internal/zzelr;)V

    return-object v0
.end method
