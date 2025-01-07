.class public final Lcom/google/android/gms/internal/zzedg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzegw;


# instance fields
.field private final zzajv:Landroid/content/Context;

.field private final zzmxo:Lcom/google/firebase/FirebaseApp;

.field private final zzmxt:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/FirebaseApp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzedg;->zzmxt:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedg;->zzmxo:Lcom/google/firebase/FirebaseApp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/FirebaseApp;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzedg;->zzajv:Landroid/content/Context;

    return-void

    :cond_0
    const-string p1, "FirebaseDatabase"

    const-string v0, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ERROR: You must call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "You need to call FirebaseApp.initializeApp() before using Firebase Database."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzedg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzedg;->zzajv:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzeex;)Lcom/google/android/gms/internal/zzeew;
    .locals 9

    new-instance v8, Lcom/google/firebase/database/connection/idl/zzc;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbyh()Lcom/google/android/gms/internal/zzemo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->isPersistenceEnabled()Z

    move-result v4

    invoke-static {}, Lcom/google/firebase/database/FirebaseDatabase;->getSdkVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbwo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzedg;->zzbvj()Ljava/io/File;

    move-result-object v7

    move-object v0, v8

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/connection/idl/zzc;-><init>(Lcom/google/android/gms/internal/zzeeu;Lcom/google/android/gms/internal/zzemo;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzedg;->zzajv:Landroid/content/Context;

    invoke-static {p1, v8, p2, p4}, Lcom/google/firebase/database/connection/idl/zzf;->zza(Landroid/content/Context;Lcom/google/firebase/database/connection/idl/zzc;Lcom/google/android/gms/internal/zzees;Lcom/google/android/gms/internal/zzeex;)Lcom/google/firebase/database/connection/idl/zzf;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzedg;->zzmxo:Lcom/google/firebase/FirebaseApp;

    new-instance p3, Lcom/google/android/gms/internal/zzedj;

    invoke-direct {p3, p0, p1}, Lcom/google/android/gms/internal/zzedj;-><init>(Lcom/google/android/gms/internal/zzedg;Lcom/google/android/gms/internal/zzeew;)V

    invoke-virtual {p2, p3}, Lcom/google/firebase/FirebaseApp;->zza(Lcom/google/firebase/FirebaseApp$zza;)V

    return-object p1
.end method

.method public final zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzegd;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzeda;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedg;->zzmxo:Lcom/google/firebase/FirebaseApp;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzeda;-><init>(Lcom/google/firebase/FirebaseApp;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegm;)Lcom/google/android/gms/internal/zzegt;
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/zzedf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzedf;-><init>()V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegm;Ljava/lang/String;)Lcom/google/android/gms/internal/zzeki;
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbyk()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedg;->zzmxt:Ljava/util/Set;

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedg;->zzmxt:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzedk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzedg;->zzajv:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/gms/internal/zzedk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzegm;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/zzekg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzegm;->zzbyi()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Lcom/google/android/gms/internal/zzekg;-><init>(J)V

    new-instance v1, Lcom/google/android/gms/internal/zzekf;

    invoke-direct {v1, p1, v0, p2}, Lcom/google/android/gms/internal/zzekf;-><init>(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzekj;Lcom/google/android/gms/internal/zzekd;)V

    return-object v1

    :cond_0
    new-instance p1, Lcom/google/firebase/database/DatabaseException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x2f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "SessionPersistenceKey \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has already been used."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/zzegm;Lcom/google/android/gms/internal/zzemo;Ljava/util/List;)Lcom/google/android/gms/internal/zzemn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzegm;",
            "Lcom/google/android/gms/internal/zzemo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzemn;"
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/zzemj;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/zzemj;-><init>(Lcom/google/android/gms/internal/zzemo;Ljava/util/List;)V

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzegm;)Lcom/google/android/gms/internal/zzeig;
    .locals 1

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzegm;->zzqb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzemm;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/zzedh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzedh;-><init>(Lcom/google/android/gms/internal/zzedg;Lcom/google/android/gms/internal/zzemm;)V

    return-object v0
.end method

.method public final zzbvj()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzedg;->zzajv:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sslcache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/zzegm;)Ljava/lang/String;
    .locals 2

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/Android"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
