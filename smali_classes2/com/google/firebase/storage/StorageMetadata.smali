.class public Lcom/google/firebase/storage/StorageMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/storage/StorageMetadata$Builder;,
        Lcom/google/firebase/storage/StorageMetadata$zza;
    }
.end annotation


# instance fields
.field private mPath:Ljava/lang/String;

.field private zzotm:Lcom/google/firebase/storage/StorageReference;

.field private zzouf:Lcom/google/firebase/storage/FirebaseStorage;

.field private zzoug:Ljava/lang/String;

.field private zzouh:Ljava/lang/String;

.field private zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzouj:Ljava/lang/String;

.field private zzouk:Ljava/lang/String;

.field private zzoul:Ljava/lang/String;

.field private zzoum:J

.field private zzoun:Ljava/lang/String;

.field private zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzour:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzous:Lcom/google/firebase/storage/StorageMetadata$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/storage/StorageMetadata$zza<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzout:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/storage/StorageMetadata;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v2

    iput-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcn(Ljava/lang/Object;)Lcom/google/firebase/storage/StorageMetadata$zza;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    iget-object v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoum:J

    iput-wide v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoum:J

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    iget-object p2, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/storage/StorageMetadata;ZLcom/google/firebase/storage/zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/storage/StorageMetadata;-><init>(Lcom/google/firebase/storage/StorageMetadata;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageMetadata;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoum:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageMetadata;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageReference;)Lcom/google/firebase/storage/StorageReference;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zze(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zze(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzf(Lcom/google/firebase/storage/StorageMetadata;Lcom/google/firebase/storage/StorageMetadata$zza;)Lcom/google/firebase/storage/StorageMetadata$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    return-object p1
.end method

.method static synthetic zzf(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzg(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzh(Lcom/google/firebase/storage/StorageMetadata;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/storage/StorageMetadata;->zzsm(Ljava/lang/String;)V

    return-void
.end method

.method private final zzsm(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoug:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCreationTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouk:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfbh;->zzsq(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getCustomMetadataKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Landroid/net/Uri;
    .locals 2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getDownloadUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDownloadUrls()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageReference;->getStorage()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/storage/FirebaseStorage;->getApp()Lcom/google/firebase/FirebaseApp;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfbm;->zzi(Lcom/google/firebase/FirebaseApp;)Lcom/google/android/gms/internal/zzfbm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageReference;->zzcnx()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzfbm;->zzu(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzout:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x11

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "?alt=media&token="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StorageMetadata"

    const-string v3, "Unexpected error getting DownloadUrls."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v0
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouh:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5Hash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoun:Ljava/lang/String;

    return-object v0
.end method

.method public getMetadataGeneration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouj:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getReference()Lcom/google/firebase/storage/StorageReference;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzotm:Lcom/google/firebase/storage/StorageReference;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getBucket()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "gs"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzfbd;->zzsn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/google/firebase/storage/StorageReference;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouf:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/storage/StorageReference;-><init>(Landroid/net/Uri;Lcom/google/firebase/storage/FirebaseStorage;)V

    return-object v1

    :catch_0
    move-exception v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unable to create a valid default Uri. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageMetadata"

    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public getSizeBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoum:J

    return-wide v0
.end method

.method public getUpdatedTimeMillis()J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoul:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzfbh;->zzsq(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method final zzcnu()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoui:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "contentType"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/google/firebase/storage/StorageMetadata;->zzous:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v2}, Lcom/google/firebase/storage/StorageMetadata$zza;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "metadata"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouo:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "cacheControl"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getCacheControl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzoup:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "contentDisposition"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentDisposition()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzouq:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "contentEncoding"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lcom/google/firebase/storage/StorageMetadata;->zzour:Lcom/google/firebase/storage/StorageMetadata$zza;

    invoke-virtual {v1}, Lcom/google/firebase/storage/StorageMetadata$zza;->zzcnv()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "contentLanguage"

    invoke-virtual {p0}, Lcom/google/firebase/storage/StorageMetadata;->getContentLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
