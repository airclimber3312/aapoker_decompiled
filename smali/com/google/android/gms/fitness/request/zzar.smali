.class public final Lcom/google/android/gms/fitness/request/zzar;
.super Lcom/google/android/gms/internal/zzbgl;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/fitness/request/zzar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzekk:Landroid/app/PendingIntent;

.field private final zzhnu:Lcom/google/android/gms/internal/zzbzt;

.field private final zzhoz:Lcom/google/android/gms/fitness/data/zzt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/zzar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/zzu;->zzar(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/data/zzt;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhoz:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzekk:Landroid/app/PendingIntent;

    invoke-static {p3}, Lcom/google/android/gms/internal/zzbzu;->zzba(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzbzt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/data/zzt;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/zzbzt;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbgl;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhoz:Lcom/google/android/gms/fitness/data/zzt;

    iput-object p2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzekk:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhoz:Lcom/google/android/gms/fitness/data/zzt;

    aput-object v2, v0, v1

    const-string v1, "SensorUnregistrationRequest{%s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbgo;->zze(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhoz:Lcom/google/android/gms/fitness/data/zzt;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/fitness/data/zzt;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/google/android/gms/fitness/request/zzar;->zzekk:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v3, p2, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object p2, p0, Lcom/google/android/gms/fitness/request/zzar;->zzhnu:Lcom/google/android/gms/internal/zzbzt;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/zzbzt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1
    const/4 p2, 0x3

    invoke-static {p1, p2, v2, v4}, Lcom/google/android/gms/internal/zzbgo;->zza(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzbgo;->zzai(Landroid/os/Parcel;I)V

    return-void
.end method
