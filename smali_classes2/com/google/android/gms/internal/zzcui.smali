.class public final Lcom/google/android/gms/internal/zzcui;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzcui;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzjxd:Lcom/google/android/gms/internal/zzcst;

.field private zzjzj:Lcom/google/android/gms/internal/zzcub;

.field private zzkaa:[Ljava/lang/String;

.field private zzkab:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcuj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcuj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcui;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcub;Z)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.nearby.internal.connection.IResultListener"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzcst;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/zzcst;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzcsv;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzcsv;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzcui;-><init>(Lcom/google/android/gms/internal/zzcst;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcub;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzcst;[Ljava/lang/String;Lcom/google/android/gms/internal/zzcub;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcui;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcui;->zzkaa:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcui;->zzjzj:Lcom/google/android/gms/internal/zzcub;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzcui;->zzkab:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzcui;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/zzcui;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcui;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzkaa:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcui;->zzkaa:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzjzj:Lcom/google/android/gms/internal/zzcub;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzcui;->zzjzj:Lcom/google/android/gms/internal/zzcub;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcui;->zzkab:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean p1, p1, Lcom/google/android/gms/internal/zzcui;->zzkab:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzkaa:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzjzj:Lcom/google/android/gms/internal/zzcub;

    aput-object v2, v0, v1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcui;->zzkab:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcui;->zzjxd:Lcom/google/android/gms/internal/zzcst;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzcst;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzkaa:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcui;->zzjzj:Lcom/google/android/gms/internal/zzcub;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x4

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcui;->zzkab:Z

    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;IZ)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
