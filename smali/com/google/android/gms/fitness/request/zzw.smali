.class public final Lcom/google/android/gms/fitness/request/zzw;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzekk:Landroid/app/PendingIntent;

.field private final zzhnu:Lcom/google/android/gms/internal/zzbzt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzx;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzx;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzw;->zzekk:Landroid/app/PendingIntent;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzbzu;->zzba(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbzt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzw;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/fitness/request/zzw;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/fitness/request/zzw;

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/zzw;->zzekk:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/google/android/gms/fitness/request/zzw;->zzekk:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzw;->zzekk:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DataUpdateListenerUnregistrationRequest"

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzw;->zzekk:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzw;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbzt;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v1, 0x2

    invoke-static {p1, v1, p2, v3}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
