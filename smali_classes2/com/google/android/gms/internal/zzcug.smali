.class public final Lcom/google/android/gms/internal/zzcug;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcug;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private name:Ljava/lang/String;

.field private zzjxd:Lcom/google/android/gms/internal/zzcst;

.field private zzjxe:Lcom/google/android/gms/internal/zzcsa;

.field private zzjxf:Ljava/lang/String;

.field private zzjxg:[B

.field private zzjzy:Lcom/google/android/gms/internal/zzcsg;

.field private zzjzz:Lcom/google/android/gms/internal/zzcsd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcuh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcuh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcug;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    const/4 v4, 0x0

    if-nez v0, :cond_0

    move-object v7, v4

    goto :goto_1

    :cond_0
    const-string v5, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v5}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/zzcst;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/google/android/gms/internal/zzcst;

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/google/android/gms/internal/zzcsv;

    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/zzcsv;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v7, v5

    :goto_1
    if-nez v1, :cond_2

    move-object v8, v4

    goto :goto_3

    :cond_2
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {v1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v5, v0, Lcom/google/android/gms/internal/zzcsa;

    if-eqz v5, :cond_3

    check-cast v0, Lcom/google/android/gms/internal/zzcsa;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/zzcsc;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcsc;-><init>(Landroid/os/IBinder;)V

    :goto_2
    move-object v8, v0

    :goto_3
    if-nez v2, :cond_4

    move-object v9, v4

    goto :goto_5

    :cond_4
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionResponseListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcsg;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/google/android/gms/internal/zzcsg;

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzcsi;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzcsi;-><init>(Landroid/os/IBinder;)V

    :goto_4
    move-object v9, v0

    :goto_5
    if-nez v3, :cond_6

    :goto_6
    move-object v13, v4

    goto :goto_7

    :cond_6
    const-string v0, "com.google.android.gms.nearby.internal.connection.IConnectionLifecycleListener"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcsd;

    if-eqz v1, :cond_7

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/zzcsd;

    goto :goto_6

    :cond_7
    new-instance v4, Lcom/google/android/gms/internal/zzcsf;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/zzcsf;-><init>(Landroid/os/IBinder;)V

    goto :goto_6

    :goto_7
    move-object v6, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Lcom/google/android/gms/internal/zzcug;-><init>(Lcom/google/android/gms/internal/zzcst;Lcom/google/android/gms/internal/zzcsa;Lcom/google/android/gms/internal/zzcsg;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcsd;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcst;Lcom/google/android/gms/internal/zzcsa;Lcom/google/android/gms/internal/zzcsg;Ljava/lang/String;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcsd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcug;->zzjzy:Lcom/google/android/gms/internal/zzcsg;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcug;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcug;->zzjxf:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcug;->zzjxg:[B

    iput-object p7, p0, Lcom/google/android/gms/internal/zzcug;->zzjzz:Lcom/google/android/gms/internal/zzcsd;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcug;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzcug;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjzy:Lcom/google/android/gms/internal/zzcsg;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->zzjzy:Lcom/google/android/gms/internal/zzcsg;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->zzjxf:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxg:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcug;->zzjxg:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjzz:Lcom/google/android/gms/internal/zzcsd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcug;->zzjzz:Lcom/google/android/gms/internal/zzcsd;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjzy:Lcom/google/android/gms/internal/zzcsg;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxf:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcug;->zzjxg:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjzz:Lcom/google/android/gms/internal/zzcsd;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcst;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcsa;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzjzy:Lcom/google/android/gms/internal/zzcsg;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcsg;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_2
    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->name:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxf:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcug;->zzjxg:[B

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcug;->zzjzz:Lcom/google/android/gms/internal/zzcsd;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcsd;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_3
    const/4 v0, 0x7

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
