.class public final Lcom/google/android/gms/fitness/data/Subscription$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/fitness/data/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzhhj:Lcom/google/android/gms/fitness/data/DataType;

.field private zzhhk:Lcom/google/android/gms/fitness/data/DataSource;

.field private zzhlr:J

.field private zzhls:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhlr:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhls:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/fitness/data/Subscription$zza;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhj:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/fitness/data/Subscription$zza;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhk:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/fitness/data/Subscription$zza;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhlr:J

    return-wide v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/fitness/data/Subscription$zza;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhls:I

    return p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhk:Lcom/google/android/gms/fitness/data/DataSource;

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/fitness/data/DataType;)Lcom/google/android/gms/fitness/data/Subscription$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhj:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0
.end method

.method public final zzasd()Lcom/google/android/gms/fitness/data/Subscription;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhk:Lcom/google/android/gms/fitness/data/DataSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhj:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v3, "Must call setDataSource() or setDataType()"

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhj:Lcom/google/android/gms/fitness/data/DataType;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/fitness/data/Subscription$zza;->zzhhk:Lcom/google/android/gms/fitness/data/DataSource;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataSource;->getDataType()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    const-string v0, "Specified data type is incompatible with specified data source"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/fitness/data/Subscription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/fitness/data/Subscription;-><init>(Lcom/google/android/gms/fitness/data/Subscription$zza;Lcom/google/android/gms/fitness/data/zzag;)V

    return-object v0
.end method
