.class public final Lcom/google/android/gms/internal/zzcop;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcop;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzjxd:Lcom/google/android/gms/internal/zzcst;

.field private zzjxe:Lcom/google/android/gms/internal/zzcsa;

.field private zzjxf:Ljava/lang/String;

.field private zzjxg:[B

.field private zzjxh:Lcom/google/android/gms/internal/zzcsq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcoq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcoq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcop;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;[BLandroid/os/IBinder;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v3, v0

    goto :goto_1

    :cond_0
    const-string v1, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/zzcst;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/internal/zzcst;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/zzcsv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzcsv;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v3, v1

    :goto_1
    if-nez p2, :cond_2

    move-object v4, v0

    goto :goto_3

    :cond_2
    const-string p1, "com.google.android.gms.nearby.internal.connection.IConnectionEventListener"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v1, p1, Lcom/google/android/gms/internal/zzcsa;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/zzcsa;

    goto :goto_2

    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/zzcsc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/zzcsc;-><init>(Landroid/os/IBinder;)V

    :goto_2
    move-object v4, p1

    :goto_3
    if-nez p5, :cond_4

    :goto_4
    move-object v7, v0

    goto :goto_5

    :cond_4
    const-string p1, "com.google.android.gms.nearby.internal.connection.IPayloadListener"

    invoke-interface {p5, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of p2, p1, Lcom/google/android/gms/internal/zzcsq;

    if-eqz p2, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzcsq;

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/zzcss;

    invoke-direct {v0, p5}, Lcom/google/android/gms/internal/zzcss;-><init>(Landroid/os/IBinder;)V

    goto :goto_4

    :goto_5
    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/zzcop;-><init>(Lcom/google/android/gms/internal/zzcst;Lcom/google/android/gms/internal/zzcsa;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcsq;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcst;Lcom/google/android/gms/internal/zzcsa;Ljava/lang/String;[BLcom/google/android/gms/internal/zzcsq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcop;->zzjxf:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcop;->zzjxg:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcop;->zzjxh:Lcom/google/android/gms/internal/zzcsq;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcop;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzcop;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcop;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcop;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxf:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcop;->zzjxf:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxg:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcop;->zzjxg:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxh:Lcom/google/android/gms/internal/zzcsq;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzcop;->zzjxh:Lcom/google/android/gms/internal/zzcsq;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxf:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcop;->zzjxg:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxh:Lcom/google/android/gms/internal/zzcsq;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcop;->zzjxd:Lcom/google/android/gms/internal/zzcst;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcop;->zzjxe:Lcom/google/android/gms/internal/zzcsa;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcsa;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_1
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxf:Ljava/lang/String;

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcop;->zzjxg:[B

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[BZ)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcop;->zzjxh:Lcom/google/android/gms/internal/zzcsq;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/zzcsq;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_2
    const/4 v0, 0x5

    invoke-static {p1, v0, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
